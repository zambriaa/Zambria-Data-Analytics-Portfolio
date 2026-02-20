-- Project: Health Insurance Cost Analysis
-- Author: Zambria Morris
-- Tool: SQLite (SQLiteStudio)
-- Description:
-- This file contains SQL queries used to analyze medical insurance charges,
-- identify high-cost risk segments, and evaluate the impact of smoking,
-- BMI, age, and region on healthcare expenses.


-- View sample of dataset
SELECT *
FROM insurance
LIMIT 10;


-- Total number of individuals
SELECT COUNT(*) AS total_people
FROM insurance;


-- Overall average medical charges
SELECT 
    ROUND(AVG(charges), 2) AS overall_average_charges
FROM insurance;


-- Average charges by smoker status
SELECT 
    smoker_flag,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY smoker_flag
ORDER BY avg_charges DESC;


-- Average charges by age group
SELECT 
    age_group,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY age_group
ORDER BY avg_charges DESC;


-- Average charges by BMI category
SELECT 
    bmi_category,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY bmi_category
ORDER BY avg_charges DESC;


-- Average charges by region
SELECT 
    region,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY region
ORDER BY avg_charges DESC;


-- Impact of Smoking within BMI Categories
SELECT 
    smoker_flag,
    bmi_category,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY smoker_flag, bmi_category
ORDER BY avg_charges DESC;


-- Impact of Smoking across Age Groups
SELECT 
    age_group,
    smoker_flag,
    COUNT(*) AS total_people,
    ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY age_group, smoker_flag
ORDER BY avg_charges DESC;
