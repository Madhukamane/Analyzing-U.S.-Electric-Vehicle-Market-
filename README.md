# 🚗 Analyzing U.S. Electric Vehicle Market Share

## 📌 Project Overview

This project analyzes the adoption of Electric Vehicles (EVs) across the United States using vehicle registration data from 51 states (including the District of Columbia). The objective is to understand EV market share, compare alternative fuel adoption, identify leading and lagging states, and provide actionable recommendations for EV infrastructure planning.

The project was completed using **PostgreSQL** for data analysis and **Power BI** for interactive dashboard development.

---

## 🎯 Business Problem

A transportation research group wants to understand the current landscape of electric vehicle adoption across the United States. The insights from this analysis will help policymakers and automakers plan future charging infrastructure and support the transition toward sustainable transportation.

---

## ❓ Business Questions

### 1. What percentage of vehicles in each state are EVs, PHEVs, HEVs, and gasoline-powered?

The analysis calculated the market share of EVs, PHEVs, HEVs, and gasoline-powered vehicles for every state. Gasoline remains the dominant fuel type across all states, while EV adoption varies significantly. California recorded the highest EV adoption rate at approximately **3.4%**.

### 2. Which states have the highest EV adoption rates?

The top-performing states include:

- California
- District of Columbia
- Hawaii
- Washington
- Nevada

These states demonstrate stronger EV adoption compared to the national average.

### 3. Which alternative fuels are significant and which remain niche?

The analysis found that:

- **Biodiesel** is the most widely adopted alternative fuel.
- **Ethanol/Flex (E85)** also has a significant presence.
- **Electric Vehicles (EVs)** and **Hybrid Electric Vehicles (HEVs)** continue to grow steadily.
- **Hydrogen**, **Methanol**, **Propane**, and **Compressed Natural Gas (CNG)** have relatively low registrations, indicating niche adoption.

### 4. Which states should policymakers prioritize for EV infrastructure?

Based on EV adoption and future growth potential:

- Continue expanding charging infrastructure in **California**.
- Prioritize **Texas** and **Florida** due to their large vehicle populations and growing EV market.
- Encourage EV adoption in lower-performing states through charging infrastructure expansion and government incentives.

---

# 🛠 Tools & Technologies

- Microsoft Excel
- PostgreSQL
- Power BI

---

# 📂 Dataset

The dataset contains vehicle registration counts for:

- Electric Vehicles (EV)
- Plug-in Hybrid Electric Vehicles (PHEV)
- Hybrid Electric Vehicles (HEV)
- Biodiesel
- Ethanol/Flex (E85)
- Compressed Natural Gas (CNG)
- Propane
- Hydrogen
- Methanol
- Gasoline
- Diesel
- Unknown Fuel

Coverage:
- **51 U.S. States (including District of Columbia)**

---

# 🧹 Data Cleaning

The following preprocessing steps were performed:

- Imported CSV data into PostgreSQL
- Checked for missing values
- Validated zero values
- Verified state names for consistency
- Calculated total registered vehicles
- Calculated market share percentages for each fuel type

---

# 📊 SQL Analysis

The following analyses were performed using PostgreSQL:

- Total registered vehicles by state
- EV market share (%)
- PHEV market share (%)
- HEV market share (%)
- Gasoline market share (%)
- Top 10 states by EV adoption
- California vs Texas vs Florida vs New York comparison
- Alternative fuel analysis

---

# 📈 Power BI Dashboard

The interactive dashboard includes:

- Total Vehicle Registrations KPI
- Total Electric Vehicle Registrations KPI
- Overall EV Percentage KPI
- Total States KPI
- Top 10 States by EV Adoption
- EV Adoption Map
- Alternative Fuel Distribution
- Top Fuel Types
- California vs Texas vs Florida vs New York Comparison
- Interactive Fuel Type & State Filters

---

# 💡 Key Insights

- California leads EV adoption with an EV share of approximately **3.4%**, indicating a mature EV market.
- Gasoline remains the dominant fuel type with approximately **243 million** registered vehicles nationwide.
- Biodiesel represents the largest alternative fuel category in the dataset.
- Hydrogen and Methanol continue to have very limited adoption, indicating niche usage.
- EV adoption varies significantly across states, highlighting regional differences in infrastructure and consumer adoption.

---

# ✅ Recommendations

- Expand EV charging infrastructure in California to support increasing EV demand.
- Prioritize Texas and Florida for future charging network investments due to their large vehicle populations.
- Promote EV incentives and charging accessibility in lower-adoption states to accelerate electric vehicle adoption.

---

# 📷 Dashboard Preview

## Dashboard

*(Add Dashboard Screenshot Here)*

## Insights & Recommendations

*(Add Insights Page Screenshot Here)*

---

# 📁 Repository Structure

```
Analyzing-US-Electric-Vehicle-Market-Share
│
├── Data
│   └── vehicle.csv
│
├── SQL
│   └── analysis_queries.sql
│
├── PowerBI
│   └── EV_Adoption_Dashboard.pbix
│
├── Screenshots
│   ├── dashboard.png
│   └── insights.png
│
└── README.md
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- SQL Query Writing
- PostgreSQL
- Data Analysis
- Business Intelligence
- Power BI
- Data Visualization
- Dashboard Design
- Business Insights
- Data Storytelling

---

# 👨‍💻 Author

**Madhu Kamane**

Aspiring Data Analyst passionate about transforming raw data into actionable business insights using SQL, Excel, Power BI, and Python.

📧 Email: *madhukamane07@gmail.com*

🔗 LinkedIn: *Add your LinkedIn profile*

🔗 GitHub: *https://github.com/Madhukamane/*

---
