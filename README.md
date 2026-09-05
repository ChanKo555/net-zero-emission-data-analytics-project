# Singapore's Net-Zero Emission by 2050 — Data Analytics Project

A data analytics project examining Singapore's progress towards its **net-zero emissions target by 2050** using public datasets from [data.gov.sg](https://data.gov.sg/).

The project analyzes historical greenhouse gas emissions, sector-level contributions, energy-related factors, and Singapore's announced emissions targets for 2030 and 2035.

---

## 📌 Project Overview

### Problem Statement

> **How effectively is Singapore progressing towards its net-zero emissions target by 2050 based on historical emission trends, sector-level emissions, and energy-related factors?**

Singapore has committed to achieving **net-zero emissions by 2050**. This project uses data analytics to examine historical emissions patterns, identify major emission sources, analyze energy-related trends, and assess whether historical trends indicate progress towards Singapore's intermediate emissions targets.

### Business Questions

1. How have Singapore's total emissions changed over time?
2. Which sectors contribute the most to emissions?
3. Which sectors have experienced the greatest increase or decrease in greenhouse gas emissions over time?
4. How has Singapore's energy transition evolved over time?
5. Based on historical emissions trends, how is Singapore progressing towards its announced emissions targets for 2030 and 2035?

---

## 🛠️ Tools & Technologies

| Tool                   | Purpose                                            |
| ---------------------- | -------------------------------------------------- |
| **Python (Pandas)**    | Data cleaning and preparation                      |
| **SQL / MySQL**        | Exploratory data analysis and data querying        |
| **MySQL Workbench**    | SQL development and analysis                       |
| **Microsoft Power BI** | Data modelling, analysis and dashboard development |
| **DAX**                | Measures and calculations in Power BI              |
| **Power Query**        | Data exploration & transformation                  |
| **Visual Studio Code** | Development environment for Python                 |
| **Git & GitHub**       | Version control and project management             |

### SQL Techniques

* `WHERE`
* `MIN`
* `MAX`
* `AVG`
* `ORDER BY`
* `GROUP BY`
* `HAVING`
* Common Table Expressions (CTEs)
* Window Functions
* `INNER JOIN`
* `CROSS JOIN`

---

## 📊 Data Sources

The datasets used in this project were obtained primarily from Singapore's open data portal: **[data.gov.sg](https://data.gov.sg/)**

Datasets include:

* Annual Fuel Mix for Electricity Generation by Energy Products
* Electricity Generation and Consumption, Annual
* Greenhouse Gas Emissions by Gas Type, Annual
* Greenhouse Gas Emissions by Sector, Annual
* Per Capita GDP in Chained (2015) Dollars, Annual
* Renewable Energy Share in Total Final Energy Consumption, Annual

---

## 🔄 Data Analytics Workflow

The project followed an end-to-end data analytics workflow:

**Business Understanding → Data Collection → Data Cleaning → Data Transformation → Exploratory Data Analysis → Data Modelling → Dashboard Development → Analysis → Recommendations**

### Data Cleaning & Preparation

The datasets were prepared using Python. Key steps included:

* Correcting data types
* Checking and handling missing values
* Checking for duplicate values
* Trimming whitespace in texts
* Unpivoting year-based columns
* Splitting datasets containing multiple categories or metrics
* Standardizing column names
* Validating data quality and consistency

### Exploratory Data Analysis

EDA was primarily conducted using SQL to investigate:

* Dataset year coverage
* Dataset categories and structure
* GHG emission ranges
* Data quality
* Available sectors
* Year-over-year emission changes
* Sector-level emission contributions
* Renewable energy trends

---

## 📈 Power BI Dashboards

The analysis was presented through **three interconnected Power BI dashboards**, designed to tell a progressive story.

### 1. GHG Emission Overview

Examines Singapore's overall greenhouse gas emissions, including:

* Total GHG emissions over time
* Emissions by sector
* Emissions by gas type
* Latest emissions and YoY changes

**Key finding:** Singapore's GHG emissions show an overall upward trajectory from 2000–2023, reaching **55.5 MtCO₂e in 2023**. Industry and Power are among the largest contributors, while CO₂ accounts for the majority of emissions.

---

### 2. Energy Factors Influencing Emissions

Examines energy-related factors that may influence Singapore's emissions trajectory, including:

* Renewable energy share
* Electricity consumption trend
* Electricity consumption by sector
* Fuel mix for electricity generation

**Key finding:** Renewable energy adoption has increased over time but remains relatively small at **1.27% in 2023**. At the same time, electricity consumption has increased substantially, while natural gas continues to dominate electricity generation.

---

### 3. Is Singapore On Track on Its Net-Zero Emission Goal?

Compares historical emissions trends against Singapore's announced **2030 and 2035 targets**.

The dashboard uses historical-trend forecasting to provide an indication of where emissions could head if historical patterns were to continue.

**Forecast results:**

| Year     |       Target | Historical-Trend Forecast |    Difference |
| -------- | -----------: | ------------------------: | ------------: |
| **2030** |    60 MtCO₂e |              64.97 MtCO₂e |  +4.97 MtCO₂e |
| **2035** | 47.5 MtCO₂e  |              69.19 MtCO₂e | +21.69 MtCO₂e |

* The 2035 target is expressed as a range of **45–50 MtCO₂e**. The midpoint of **47.5 MtCO₂e** is used for comparison.

> **Important:** These forecasts are based solely on historical emissions patterns and do not account for future policy, technological, or economic changes.

---

## 🔍 Key Findings

### Emissions Trend

* Total GHG emissions increased overall from 2000 to 2023.
* Emissions reached **55.5 MtCO₂e in 2023**.
* Emissions decreased by **5.29% YoY in 2023**, but a sustained long-term decline has not yet been established.

### Major Emission Sources

* **Industry** is the largest contributor to GHG emissions.
* **Power** and **Transport** are second and third largest contributors.
* Emissions are particularly concentrated in the Industry and Power sectors.

### Energy Transition

* Renewable energy share increased from **0.78% in 2009 to 1.27% in 2023**.
* Electricity consumption increased from **35,489.30 GWh in 2005 to 57,639.70 GWh in 2024**.
* Natural gas remains the dominant fuel source for electricity generation.

### Progress Towards 2030 and 2035 Targets

From **2012–2023**, emissions increased by an average of approximately **0.58% annually**.

In comparison, reaching the **2035 target midpoint of 47.5 MtCO₂e** from the 2023 level requires an average annual reduction of approximately **1.29%**.

Based on historical trends alone, Singapore is therefore **not currently on track to meet its announced 2030 and 2035 emissions targets**.

---

## 💡 Recommendations

Based on the analysis, the following actions are recommended:

1. **Accelerate emissions reduction**:
   Shift from the historical annual growth of approximately +0.58% towards the approximately -1.29% annual reduction required to reach the 2035 target.

2. **Prioritize high-emitting sectors**:
   Focus emissions-reduction efforts on the Industry and Power sectors.

3. **Improve energy efficiency**:
   Target industrial, manufacturing, and commercial sectors with energy-efficiency measures to reduce electricity consumption and associated emissions.

4. **Accelerate the low-carbon energy transition**:
   Increase the adoption of lower-carbon energy sources while reducing reliance on fossil-fuel-based electricity generation.

---

## 🧠 Challenges Faced

Some of the challenges encountered during the project included:

* **Understanding the business context** — building sufficient understanding of net-zero emissions, GHG measurement, and Singapore's emission targets.
* **Data collection and selection** — identifying datasets that were relevant to the project's business questions.
* **Data understanding** — interpreting different measurement units, categories, and dataset structures correctly.
* **Learning Git and GitHub** — learning how Git, VS Code, local repositories, and GitHub work together for version control.
* **Dashboard planning and communication** — determining which insights were meaningful to the audience and developing a coherent storyline across multiple dashboards.

---

## 🔄 What I Would Do Differently

### 1. Explore a Wider Range of Relevant Data

I would spend more time exploring additional datasets that could provide further perspectives on Singapore's progress towards net-zero emissions.

### 2. Use Python for Exploratory Data Analysis

SQL was used for EDA to demonstrate SQL capabilities such as CTEs and window functions. In a future project, I would use Python more extensively for EDA, taking advantage of Pandas, NumPy, Matplotlib, and Seaborn for statistical analysis and data visualization.

### 3. Be More Selective When Evaluating Datasets

GDP data was initially included but was later found to be less directly relevant to the project's main objective. In future projects, I would evaluate dataset relevance earlier and focus more time on data that directly supports the business questions.

---

## 📚 References

* [Singapore Commits to Achieve Net Zero Emissions by 2050](https://www.nccs.gov.sg/media/singapore-commits-to-achieve-net-zero/)
* [Singapore's Climate Targets — National Climate Change Secretariat](https://www.nccs.gov.sg/singapores-climate-action/singapores-climate-targets/overview/)
* [Singapore Green Plan 2030](https://www.greenplan.gov.sg/)
* [Singapore releases new emissions targets for 2035, on track to reaching net zero by 2050](https://www.straitstimes.com/singapore/singapore-releases-new-emissions-targets-for-2035-on-track-to-reaching-net-zero-by-2050)
* [What Does "Net-Zero Emissions" Mean? — World Resources Institute](https://www.wri.org/insights/net-zero-ghg-emissions-questions-answered)
* [It Will Cost Trillions To Get To Net Zero: Why Singapore's Still Investing](https://www.youtube.com/watch?v=fAgNxuX_S5U)
* [Our World in Data — Singapore CO₂ Profile](https://ourworldindata.org/profile/co2/singapore)

---

## 📁 Project Structure

```text
net-zero-emission-data-analytics-project/
│
├── cleaned datasets/
│
├── data sources/
│   └── data.gov.sg
│
├── EDA/
│
├── Python Notebooks/
│
├── Dashboard Analysis.pbix
│
├── Project Documentation.docx
│
└── README.md
```

---

## 👤 Project Reflection

This project was completed as a personal data analytics project to apply and strengthen my data analytics skills across the end-to-end analytics workflow.

It provided hands-on experience working with **SQL, Python, Power BI, data modelling, dashboard development, data storytelling, and Git/GitHub**, while also requiring me to make decisions about data relevance, analytical approach, and how to communicate findings to an intended audience.

The project also highlighted areas I would like to improve in future projects, particularly **data collection, exploratory data analysis, and evaluating the relevance of datasets**.
