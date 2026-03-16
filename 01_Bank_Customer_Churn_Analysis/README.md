# Bank Customer Churn Analysis

SQL • Excel • Tableau

---

<img width="1187" height="625" alt="bank_churn_dashboard_top" src="https://github.com/user-attachments/assets/1868ee54-9a48-4a6c-aed1-689274e2d89d" />

<img width="1202" height="520" alt="bank_churn_dashboard_bottom" src="https://github.com/user-attachments/assets/e453471f-916e-4f2d-abd1-76ebcedfa1b1" />

**Live Dashboard:**  
https://public.tableau.com/app/profile/zambria.morris/viz/BankCustomerChurnAnalysis_17695751310670/Dashboard1

---

**Project Goal:**

The goal of this project was to understand why customers leave a bank. Instead of only looking at the total churn rate, I wanted to see which types of customers are more likely to leave and what they have in common.

Using a bank customer dataset from Kaggle, I analyzed how factors like age, account balance, tenure, and country relate to customer churn.

---

**Executive Summary:**

Customer churn is important for banks because losing customers affects long-term revenue. In this project, I explored a bank customer dataset to see where churn is happening the most.

The analysis shows that some customer groups are much more likely to leave than others. Age had the biggest impact on churn, while geography also showed noticeable differences. One surprising result was that customers with higher balances actually left more often than those with lower balances.

---

**Dataset:**

**Source:**  
https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset

**Fields I worked with:**

- Customer tenure  
- Age  
- Account balance  
- Country  
- Churn indicator  

**Fields I created:**

- Tenure groups (0–3, 4–7, 8+ years)  
- Age groups (Under 30, 30–50, 50+)  
- Balance segments (High vs Low)

---

**How I Approached the Analysis:**

- First, I cleaned and reviewed the dataset in Excel to make sure the data looked consistent.
- Then I created a few grouping fields for age, tenure, and balance so it would be easier to compare different customer groups.
- After that, I used SQL to calculate churn rates for each group.
- Finally, I built a Tableau dashboard to show where churn risk is highest.

---

**SQL Queries:**

Full file:  
`/sql/bank_churn_analysis.sql`

**Overall Churn Rate**

```sql
SELECT
ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn;
```

**Churn by Country**

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

**Churn by Balance Segment**

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

**High-Risk Segments (Churn Rate Above 30%)**

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

**Key Findings:**

The overall churn rate was **20.37%**, which means about **1 in 5 customers left the bank**.

Age turned out to be the strongest factor. Customers **50 and older churned at around 45%**, while customers **under 30 churned at about 8%**.

High-balance customers churned at **24%**, which was higher than low-balance customers at **14%**. This was one of the more surprising patterns in the data.

Country also mattered. **Germany had a churn rate of about 32%**, while **France and Spain were closer to 16–17%**.

Tenure did not make much difference. Churn stayed between **19% and 21% across all tenure groups**.

---

**Business Impact:**

Customer churn directly affects revenue. When customers leave, the bank loses future income from those accounts.

By understanding which customers are more likely to leave, banks can focus their retention efforts on those groups and improve customer relationships.

---

**Recommendations:**

- Pay closer attention to older customer groups since they showed the highest churn rates.
- Investigate why high-balance customers are leaving, since they represent higher financial value.
- Track churn by country to identify where retention strategies may need improvement.