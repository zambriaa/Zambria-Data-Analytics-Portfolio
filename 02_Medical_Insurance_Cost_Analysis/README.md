# 🏥 Healthcare Cost & Risk Analysis

**Tools:** Excel · SQL · Tableau  
**Focus:** Cost Drivers & Risk Segmentation Analytics  

---

## 📌 Project Overview

Healthcare costs directly impact insurance pricing accuracy, underwriting strategy, and long-term profitability. Identifying the strongest cost drivers allows insurers to refine pricing models and proactively manage high-risk segments.

In this project, I analyzed individual-level medical insurance data to determine the primary drivers of annual charges and identify high-cost risk segments.

This project demonstrates a complete end-to-end analytics workflow:  
data cleaning → segmentation → SQL aggregation → dashboard visualization → business recommendations.

---

## 🎯 Objectives

- Identify the strongest drivers of medical insurance charges  
- Quantify cost differences across demographic and behavioral segments  
- Segment individuals by financial risk exposure  
- Present insights in an executive-ready dashboard  
- Provide data-backed pricing and risk recommendations  

---

## 📊 Dataset Summary

**Dataset:** Medical Insurance Cost Dataset  

**Key Features Analyzed:**
- Age  
- BMI  
- Smoking Status  
- Region  
- Annual Medical Charges  

**Derived Fields Created:**
- Age Group Segmentation (18–29, 30–44, 45–59, 60+)  
- BMI Category (Underweight, Normal, Overweight, Obese)  
- Smoker Flag Indicator  

---

## ❓ Key Business Questions

1. Which demographic and behavioral factors most strongly influence insurance charges?  
2. How significant is the cost difference between smokers and non-smokers?  
3. Do medical charges increase consistently across age groups?  
4. How does BMI affect cost exposure?  
5. Are regional differences meaningful relative to other variables?  

---

## 🛠 Tools & Approach

### Excel
- Data cleaning and validation  
- Creation of segmentation fields  
- Exploratory pivot analysis  

### SQL
- Aggregated average charges by segment  
- Compared smoker vs. non-smoker impact  
- Segmented cost by age group, BMI category, and region  
- Identified highest-risk cost combinations  

### Tableau
- Executive dashboard design  
- Comparative cost-driver visualizations  
- Clear KPI communication for decision-makers  

---

## 📈 Tableau Dashboard

<img width="529" height="590" alt="image" src="https://github.com/user-attachments/assets/8d058d68-3629-40a1-8655-81f66a1c9d48" />

🔗 **Live Dashboard:** https://public.tableau.com/app/profile/zambria.morris/viz/MedicalInsuranceCostDriversAnalysis/Dashboard1

---

## 🔍 Key Insights

### 1️⃣ Smoking Is the Strongest Cost Driver

- **Average Smoker Charges:** $32,050  
- **Average Non-Smoker Charges:** $8,434  
- Smokers pay **$23,616 more annually** than non-smokers  
- This represents a **3.8x increase (~280% higher costs)**  

Smoking status is the single most influential behavioral variable in predicting cost exposure.

---

### 2️⃣ Insurance Charges Increase Significantly With Age

Average annual charges by age group:

- **18–29:** $9,182  
- **30–44:** $12,491  
- **45–59:** $15,923  
- **60+:** $21,248  

From youngest to oldest, costs increase by **$12,066**, representing a **131% increase**.

Age compounds cost exposure over time.

---

### 3️⃣ Higher BMI Amplifies Financial Risk

Average annual charges by BMI category:

- **Underweight:** $8,852  
- **Normal:** $10,409  
- **Overweight:** $10,988  
- **Obese:** $15,552  

Obese individuals pay **$6,700 more than underweight individuals** and nearly **49% more than those with normal BMI.**

BMI acts as a measurable cost escalator.

---

### 4️⃣ Regional Differences Exist but Are Secondary

- **Southeast:** $14,735 (Highest)  
- **Northeast:** $13,406  
- **Northwest:** $12,418  
- **Southwest:** ~$12,000 (Lowest)  

Regional variation (~$2,500 spread) is moderate compared to the dramatic impact of smoking and age.

---

### 5️⃣ Highest Risk Segment Identified

- **Smokers aged 60+:** $40,631 average annual charges  
- **Obese smokers:** $41,558 average annual charges  
- **Low-risk segment (non-smoker, underweight):** $5,533  

High-risk individuals incur **over 7x higher costs** than low-risk individuals.

---

## 💡 Business Recommendations

1. **Heavily weight smoking status in pricing models**  
   Given the 3.8x cost difference, smoking should carry substantial premium adjustments.

2. **Enhance preventative wellness initiatives**  
   Smoking cessation and weight management programs could reduce long-term claims exposure.

3. **Refine age-based underwriting segmentation**  
   Age-based pricing precision improves forecasting and risk allocation.

4. **Prioritize compounded-risk segments**  
   Individuals combining age + smoking + obesity represent the highest financial exposure and should be monitored accordingly.

---

## 📊 Results Summary

This analysis clearly identifies smoking status, age, and BMI as dominant cost drivers in medical insurance pricing. Quantifying these impacts provides a structured framework for more accurate underwriting and risk segmentation.

---

## 📈 Business Value

Organizations can leverage these insights to:

- Improve premium pricing precision  
- Strengthen underwriting segmentation  
- Reduce long-term claim volatility  
- Allocate risk management resources more effectively  

---

## 🧠 What This Project Demonstrates

- Ability to quantify financial risk drivers  
- Strong segmentation and cost-impact analysis  
- Proficiency in Excel, SQL, and Tableau  
- Executive-level data storytelling  
- Clear business communication of analytics insights  

---

## 📎 Deliverables

- Cleaned & structured dataset  
- SQL queries for cost segmentation  
- Executive-ready Tableau dashboard  
- Business-focused recommendations  
