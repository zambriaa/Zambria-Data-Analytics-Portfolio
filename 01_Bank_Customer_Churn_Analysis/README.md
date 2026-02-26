# 📊 Customer Retention & Churn Analysis

**Tools:** Excel · SQL · Tableau  
**Focus:** Customer Behavior & Retention Risk Analytics  

---

## 📌 Project Overview

Customer churn directly impacts revenue, growth, and long-term profitability. Identifying high-risk customer segments allows organizations to prioritize retention strategies and reduce avoidable revenue loss.

This project analyzes bank customer data to quantify churn risk across age, tenure, account balance, and geography.

---

## 📊 Dataset Summary

**Dataset:** Bank Customer Churn Dataset  
**Source:** [Kaggle – Bank Customer Churn Dataset](https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset)

**Key Variables Analyzed:**
- Customer Tenure  
- Age Group  
- Account Balance (Segmented)  
- Country  
- Churn Indicator  

**Derived Fields Created:**
- Tenure Groups (0–3, 4–7, 8+ years)  
- Age Groups (Under 30, 30–50, 50+)  
- Balance Segments (High vs Low)  

---

## 📐 Analytical Approach

- Cleaned and validated dataset in Excel  
- Created segmentation fields for age, tenure, and balance tiers  
- Used SQL to calculate churn rates across customer segments  
- Compared churn percentages to identify high-risk groups  
- Designed dashboard in Tableau  

---


## 🧾 Technical Implementation (SQL)

📂 **Full SQL File:**  
[View bank_churn_analysis.sql](https://github.com/zambriaa/Zambria-Data-Analytics-Portfolio/blob/main/01_Bank_Customer_Churn_Analysis/sql/bank_churn_analysis.sql)

The churn analysis was conducted using structured SQL queries in SQLite (DB Browser for SQLite) to calculate churn rates, segment high-risk customer populations, and identify demographic and financial drivers of customer attrition.

**Core SQL Techniques Used:**
- COUNT() for customer population sizing  
- SUM() for churned customer totals  
- AVG() for churn rate calculation  
- ROUND() for percentage precision  
- GROUP BY for segmentation  
- HAVING for high-risk filtering  
- ORDER BY for ranked churn comparisons  

---

### Sample Query — Overall Churn Rate

```sql
SELECT
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn;
```

---

### Sample Query — Churn Rate by Country

```sql
SELECT
    country,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY country
ORDER BY churn_rate_percent DESC;
```

---

### Sample Query — Churn Rate by Balance Segment

```sql
SELECT
    balance_flag,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY balance_flag
ORDER BY churn_rate_percent DESC;
```

---

### Sample Query — Identify High-Risk Churn Segments

```sql
SELECT
    country,
    tenure_group,
    balance_flag,
    age_group,
    COUNT(*) AS customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY country, tenure_group, balance_flag, age_group
HAVING churn_rate_percent > 30
ORDER BY churn_rate_percent DESC;
```

---

## 📈 Tableau Dashboard

<img width="1187" height="625" alt="bank_churn_dashboard_top" src="https://github.com/user-attachments/assets/1868ee54-9a48-4a6c-aed1-689274e2d89d" />
<img width="1202" height="520" alt="bank_churn_dashboard_bottom" src="https://github.com/user-attachments/assets/e453471f-916e-4f2d-abd1-76ebcedfa1b1" />


🔗 **View Interactive Dashboard on Tableau Public:**  
https://public.tableau.com/app/profile/zambria.morris/viz/BankCustomerChurnAnalysis_17695751310670/Dashboard1  

---

## 📊 Overall KPI

- **Overall Churn Rate:** 20.37%

Approximately 1 in 5 customers churn, representing significant revenue exposure.

---

## 🔍 Key Insights

### 1️⃣ Age Is the Strongest Demographic Churn Driver

- **50+ age group:** ~45% churn rate  
- **30–50:** ~19%  
- **Under 30:** ~8%  

Customers aged 50+ churn at over **5x the rate of customers under 30**, representing the highest demographic retention risk.

---

### 2️⃣ High-Balance Customers Exhibit Elevated Churn

- **High Balance Segment:** ~24% churn  
- **Low Balance Segment:** ~14% churn  

High-balance customers churn at a rate **~71% higher** than low-balance customers, signaling potential dissatisfaction among high-value accounts.

---

### 3️⃣ Germany Represents a Concentrated Geographic Risk

- **Germany:** ~32% churn  
- **Spain:** ~17%  
- **France:** ~16%  

Germany’s churn rate is nearly **double that of France and Spain**, indicating regional retention challenges.

---

### 4️⃣ Tenure Shows Moderate Lifecycle Risk

- **0–3 years:** ~21% churn  
- **4–7 years:** ~19% churn  
- **8+ years:** ~20% churn  

Churn remains elevated across tenure groups, with slightly higher risk in early lifecycle stages.

---

## 📈 Business Impact

This analysis quantifies measurable churn drivers that enable organizations to:

- Prioritize retention efforts toward high-risk age segments  
- Investigate churn causes among high-value (high-balance) customers  
- Address regional retention challenges in Germany  
- Improve customer lifetime value through targeted engagement strategies  

---

## 💡 Business Recommendations

1. **Develop age-targeted retention strategies**, particularly for customers aged 50+.  
2. **Investigate churn among high-value accounts** to reduce revenue leakage.  
3. **Implement localized retention initiatives in Germany.**  
4. **Strengthen early-stage onboarding programs** to reduce first-cycle churn.  

---

## 📂 Repository Structure

- `/data/` → Cleaned dataset  
- `/sql/` → Churn rate segmentation queries  
- `/visuals/` → Dashboard screenshots  
- `README.md` → Executive project summary  

---

## 📎 Deliverables

- Cleaned and structured dataset  
- SQL churn-rate calculations  
- Executive-ready Tableau dashboard  
- Business-focused retention recommendations  

---

💼 This project demonstrates my ability to quantify customer churn risk and translate behavioral data into actionable retention strategies using SQL and Tableau.
