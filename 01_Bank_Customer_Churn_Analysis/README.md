# Bank Customer Churn Analysis

## Problem
Customer churn directly impacts bank revenue and profitability. This project identifies churn patterns and high-risk segments to support retention strategies.

## Data
- Source: Kaggle Bank Customer Churn Dataset
- Size: ~10,000 customers
- Target: churn (1 = churned, 0 = retained)

## Tools
Excel (cleaning + feature engineering), SQL (segmentation + churn rates), Tableau (dashboard)

## Process
1. Cleaned and standardized dataset in Excel
2. Created features: age_group, tenure_group, balance_flag
3. Loaded clean CSV into SQLite and ran SQL analysis
4. Built Tableau dashboard to visualize churn patterns

## Key Analysis (SQL)
- Overall churn rate
- Churn rate by country
- Churn by tenure group
- Churn by balance segment
- Churn by age group

## Tableau Dashboard
01_Bank_Customer_Churn_Analysis/tableau/bank_churn_dashboard.twb

## Insights
- Shorter-tenure customers show higher churn risk
- High-balance customers show elevated churn risk
- Older age groups show higher churn than younger segments

## Recommendations
- Launch early-tenure retention program (first 90 days)
- Create VIP retention outreach for high-balance customers
- Target older segments with personalized engagement and loyalty incentives

