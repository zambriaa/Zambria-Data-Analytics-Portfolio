# Bank Customer Churn Analysis

## Problem
Customer churn directly impacts bank revenue and long-term profitability.  
The goal of this project is to identify the characteristics of customers most likely to churn and uncover patterns that can support retention strategies.

## Data
Source: Kaggle Bank Customer Churn Dataset  
Rows: ~10,000 customers  

Key variables:
- Age
- Tenure
- Balance
- Credit Score
- Geography
- Churn (1 = churned, 0 = retained)

## Process
1. Reviewed raw data for structure and quality
2. Cleaned and standardized data in Excel
3. Created analytical features such as age groups, tenure groups, and balance segments
4. Prepared cleaned dataset for SQL analysis
5. Visualized churn trends and risk segments in Tableau

## SQL
SQL was used to:
- Calculate churn rates by customer segment
- Identify high-risk churn groups
- Compare churn across tenure, balance, and age groups

## Tableau
The Tableau dashboard highlights:
- Overall churn rate
- Churn by age group and tenure
- Churn by balance segment
- Profile of high-risk customers

## Insights
- Customers with shorter tenure have higher churn rates
- High-balance customers show increased churn risk
- Older customers are more likely to churn than younger customers

## Recommendations
- Implement early retention programs for new customers
- Provide targeted incentives for high-balance customers
- Develop personalized engagement strategies for high-risk age segments

