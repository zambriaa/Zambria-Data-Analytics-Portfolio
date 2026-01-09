-- Project: Bank Customer Churn Analysis
-- Author: Zambria Morris
-- Tool: SQLite (DB Browser for SQLite)
-- Description:
-- This file contains SQL queries used to analyze customer churn,
-- identify high-risk segments, and calculate churn rates by category.


-- View sample of the dataset
SELECT *
FROM bank_churn
LIMIT 10;


-- Total number of customers
SELECT COUNT(*) AS total_customers
FROM bank_churn;


-- Overall churn rate
SELECT
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn;


-- Churn rate by country
SELECT
    country,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY country
ORDER BY churn_rate_percent DESC;


-- Churn rate by tenure group
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY tenure_group
ORDER BY churn_rate_percent DESC;


-- Churn rate by balance segment
SELECT
    balance_flag,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY balance_flag
ORDER BY churn_rate_percent DESC;


-- Churn rate by age group
SELECT
    age_group,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(AVG(churn) * 100, 2) AS churn_rate_percent
FROM bank_churn
GROUP BY age_group
ORDER BY churn_rate_percent DESC;


-- Identify high-risk churn segments
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





