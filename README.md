# 📊 Telecom Customer Churn Analytics  
### End-to-End Data Analytics Project (SQL | Python | Power BI)

---

## 📌 Project Overview

Customer churn significantly impacts revenue and long-term profitability in the telecom industry.  

This project delivers a complete end-to-end churn analysis solution using:

- SQL for data cleaning & business querying  
- Python (Pandas, NumPy, Seaborn, Matplotlib) for exploratory data analysis  
- Power BI for executive dashboard reporting  

The goal was to identify churn drivers, quantify revenue impact, and generate actionable business insights.

---

## 🎯 Business Objectives

- Calculate overall churn rate  
- Identify high-risk customer segments  
- Analyze churn by contract, tenure, and internet service  
- Measure revenue impact due to churn  
- Provide strategic recommendations to improve retention  

---

## 🛠 Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| SQL Server | Data cleaning & transformation |
| Python | Data analysis & visualization |
| Pandas & NumPy | Data manipulation |
| Matplotlib & Seaborn | Visualizations |
| Power BI | Interactive dashboard |
| DAX | KPI & business metric modeling |

---

## 📊 Key Business Metrics

- **Total Customers:** 7,043  
- **Churned Customers:** 1,869  
- **Churn Rate:** 26.54%  
- **Primary Risk Segment:** Month-to-month contracts  
- **Revenue Risk:** High ARPU customers contribute significantly to churn loss  

---

## 🔄 Project Workflow

1. Data Collection (Raw dataset)
2. Data Cleaning (SQL & Python)
3. Exploratory Data Analysis (Python)
4. KPI Modeling (DAX)
5. Dashboard Development (Power BI)
6. Final Business Reporting

---

## 📈 Exploratory Data Analysis (Python Visualizations)

### 🔹 Customer Churn Distribution
![Churn Distribution](images/churn_distribution.png)

### 🔹 Churn by Contract Type
![Churn by Contract](images/churn_by_contract.png)

### 🔹 Churn by Internet Service
![Churn by Internet Service](images/churn_by_internet_service.png)

### 🔹 Monthly Charges vs Churn
![Monthly Charges vs Churn](images/monthly_charges_vs_churn.png)

### 🔹 Tenure vs Churn
![Tenure vs Churn](images/tenure_vs_churn.png)

### 🔹 CLTV vs Churn
![CLTV vs Churn](images/cltv_vs_churn.png)

### 🔹 Correlation Matrix
![Correlation Heatmap](images/correlation_heatmap.png)
---

## 📊 Power BI Executive Dashboard

The Power BI dashboard includes:

- KPI Cards (Churn Rate, Retention Rate, ARPU, Revenue Impact)
- Churn by Contract & Internet Service
- Tenure-based churn trend analysis
- Payment method impact
- Customer lifetime value comparison
- Interactive slicers for dynamic filtering

📁 File Location:
```
powerbi/churn_dashboard.pbix
```

---

## 📂 Project Structure

```
customer-churn-analysis-data-analytics/
│
├── data/
│   ├── raw/
│   │   └── telco_customer_churn.csv
│   │
│   └── processed/
│       └── cleaned_churn_data.csv
│
├── notebooks/
│   └── churn_analysis.ipynb
│
├── sql/
│   ├── create_table.sql
│   ├── import_data.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   └── churn_dashboard.pbix
│
├── reports/
│   └── churn_project_report.pdf
│
├── images/
│   ├── dashboard_overview.png
│   ├── churn_by_contract.png
│   ├── churn_by_payment.png
│   ├── churn_by_tenure.png
│   ├── churn_distribution.png
│   ├── monthly_charges_vs_churn.png
│   ├── correlation_heatmap.png
│   └── cltv_vs_churn.png
│
└── README.md
```

---

## 🔍 Key Insights

- Month-to-month contracts show the highest churn rate.
- Customers with low tenure are significantly more likely to churn.
- Higher monthly charges correlate with increased churn probability.
- Fiber optic users show higher churn compared to DSL.
- High CLTV customers represent major revenue risk if churned.

---

## 💡 Business Recommendations

- Offer incentives for long-term contract upgrades.
- Improve onboarding experience for new customers.
- Introduce loyalty programs for high-value customers.
- Re-evaluate pricing strategy for high monthly charge segments.
- Improve customer service quality to reduce dissatisfaction churn.

---

## 🏆 Project Outcome

This project demonstrates:

- Strong SQL querying and data modeling skills
- Data cleaning & EDA expertise using Python
- Business KPI modeling using DAX
- Executive-level dashboard storytelling
- End-to-end analytics workflow implementation

---

## 👨‍💻 Author

**Nikhil Vamsi**  
Aspiring Data Analyst  
SQL | Python | Power BI | Data Analytics  

---

⭐ If you found this project useful, feel free to star the repository!
