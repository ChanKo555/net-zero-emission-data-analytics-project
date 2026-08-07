-- Data Exploration
-- 1. Year ranges for each dataset
SELECT DISTINCT(year) FROM elec_gen_and_consump; -- 1975-2025

SELECT DISTINCT(year) FROM fuel_mix_elec_gen; -- 2005-2021

SELECT DISTINCT(year) FROM ggas_emissions; -- 2000-2023

SELECT DISTINCT(year) FROM ggas_emissions_percentage; -- 2000-2023

SELECT DISTINCT(year) FROM ggas_emissions_sector; -- 2020-2023

SELECT DISTINCT(year) FROM per_capita_gdp_chained; -- 1960-2025

SELECT DISTINCT(year) FROM per_capita_gdp_yoy_growth_rate; -- 1961-2025

SELECT DISTINCT(year) FROM renewable_energy_share; -- 2009-2023

-- 2. Categories in the datasets
SELECT DISTINCT(category) FROM elec_gen_and_consump;
-- Total (electricity generation/consumption)
-- Consumption Sector

SELECT DISTINCT(category) FROM ggas_emissions;
-- Total (GHG emission)
-- Gas Type

-- 3. Min, max, and avg for total ghg emissions
SELECT
    MIN(value) AS min_value,
    MAX(value) AS max_value,
    AVG(value) AS avg_value
FROM ggas_emissions
WHERE category = 'Total';
-- Min: 39.7 MtCO2e
-- Max: 58.6 MtCO2e
-- Avg: 49.54 MtCO2e

-- 4. Any negative values in numerical columns? (besides YoY growth columns, which are expected to have negative values)
SELECT value FROM elec_gen_and_consump WHERE value < 0; -- None
SELECT percentage FROM fuel_mix_elec_gen WHERE percentage < 0; -- None
SELECT value FROM ggas_emissions WHERE value < 0; -- None
SELECT percentage FROM ggas_emissions_percentage WHERE percentage < 0; -- None
SELECT value FROM ggas_emissions_sector WHERE value < 0; -- None
SELECT value FROM renewable_energy_share WHERE value < 0; -- None

-- 5. Sectors
SELECT DISTINCT(sector) FROM ggas_emissions_sector; -- Power, Industry, Transport, Buildings, Household, Waste And Water, Others

-- Business Insights
-- 1. Singapore's GDP over time
SELECT year, value 
FROM per_capita_gdp_chained
WHERE metric = 'GDP' 
ORDER BY year ASC;
-- '1960', '4966'
-- ---------------
-- ---------------
-- '2025', '97177', overall upward trend

-- 2. largest YoY increase/decrease in ghg emissions
WITH emissions_yoy AS (SELECT year, value AS emissions,
						ROUND(
							value - LAG(value) OVER (ORDER BY year), 2
							) AS yoy_change,
						ROUND(
							((value - LAG(value) OVER (ORDER BY year)) / LAG(value) OVER (ORDER BY year)) * 100, 2
							) AS yoy_change_pct
						FROM ggas_emissions
						WHERE category = 'Total'
                        )
SELECT * 
FROM emissions_yoy 
ORDER BY yoy_change DESC;
-- Largest YoY increase: In 2010, by 4.7 MtCO2e (10.63% increase)
-- Largest YoY decrease: In 2023, by 3.1 MtCO2e (5.29% decrease)

-- 3. Sectors that contribute above avg level of emissions
-- Primary Sector (sectors that directly emit GHG)
WITH overall AS (
    SELECT AVG(value) AS overall_avg
    FROM ggas_emissions_sector
    WHERE emission_type = 'Primary'
)
SELECT
    sector,
    ROUND(AVG(value), 2) AS avg_emission,
    ROUND(overall_avg, 2) AS overall_avg
FROM ggas_emissions_sector
CROSS JOIN overall
WHERE emission_type = 'Primary'
GROUP BY sector, overall_avg
HAVING AVG(value) > overall_avg
ORDER BY avg_emission DESC;
-- Industry, with avg emission of 46.28 MtCO2e, and Power, with avg of 38.55 MtCO2e, with both compared to overall avg of 14.29 MtCO2e

-- Secondary Sector (sector that uses electricity produced by Primary sectors)
WITH overall AS (
    SELECT AVG(value) AS overall_avg
    FROM ggas_emissions_sector
    WHERE emission_type = 'Secondary'
)
SELECT
    sector,
    ROUND(AVG(value), 2) AS avg_emission,
    ROUND(overall_avg, 2) AS overall_avg
FROM ggas_emissions_sector
CROSS JOIN overall
WHERE emission_type = 'Secondary'
GROUP BY sector, overall_avg
HAVING AVG(value) > overall_avg
ORDER BY avg_emission DESC;
-- Industry, with avg emission of 16.48 MtCO2e, and Buildings, with avg of 12.45 MtCO2e, with both compared to overall avg of 6.43 MtCO2e

-- 4. How has Singapore's renewable energy share changed alongside total greenhouse gas emissions over time?
SELECT
    g.year,
    g.value AS total_ghg_emissions_mtco2e,
    r.value AS renewable_energy_share_pct
FROM ggas_emissions AS g
INNER JOIN renewable_energy_share AS r
    ON g.year = r.year
WHERE g.category = 'Total'
ORDER BY g.year;
-- Renewable energy share increased gradually (0.78% --> 1.27%),
-- while total GHG emissions generally rose until 2022 before declining in 2023.

-- WHY USE INNER JOIN?
-- An INNER JOIN is used to include only matching years from both datasets,
-- ensuring that both greenhouse gas emissions and renewable energy share are available for each observation
SELECT * FROM elec_gen_and_consump; -- split total vs consumption sector
SELECT * FROM ggas_emissions;  -- split total vs gas type