# 🏥 Healthcare Cost & Risk Analysis

**Tools:** Excel · SQL · Tableau  
**Focus:** Cost Drivers & Risk Segmentation Analytics  

---

## 📌 Project Overview

This project analyzes medical insurance data to identify the strongest drivers of healthcare costs and quantify financial risk exposure across demographic and behavioral segments.

The objective was to determine which variables most significantly impact annual medical charges and translate those findings into business-focused pricing and underwriting insights.

---

## 📊 Dataset Summary

**Dataset:** Medical Insurance Cost Dataset  
**Source:** [Kaggle – Medical Insurance Cost Dataset](https://www.kaggle.com/datasets/mosapabdelghany/medical-insurance-cost-dataset)

**Variables Analyzed:**
- Age  
- BMI  
- Smoking Status  
- Region  
- Annual Medical Charges  

**Derived Fields Created:**
- Age Groups (18–29, 30–44, 45–59, 60+)  
- BMI Categories (Underweight, Normal, Overweight, Obese)

---

## 📐 Analytical Approach

- Cleaned and validated dataset in Excel  
- Created segmentation variables for age and BMI  
- Used SQL to calculate average charges across segments  
- Quantified cost differences using percentage change and cost multiples  
- Built an executive-ready dashboard in Tableau  

---

## 📈 Tableau Dashboard

<img width="529" height="590" alt="image" src="https://github.com/user-attachments/assets/8d058d68-3629-40a1-8655-81f66a1c9d48" />

🔗 **Live Dashboard:** https://public.tableau.com/app/profile/zambria.morris/viz/MedicalInsuranceCostDriversAnalysis/Dashboard1

---

## 🔍 Key Insights

### 1️⃣ Smoking Is the Strongest Cost Driver

- **Average Smoker Charges:** $32,050  
- **Average Non-Smoker Charges:** $8,434  
- Smokers pay **$23,616 more annually**  
- This represents a **3.8x increase (~280% higher costs)**  

Smoking status is the dominant behavioral predictor of cost exposure.

---

### 2️⃣ Insurance Charges Increase With Age

- **18–29:** $9,182  
- **30–44:** $12,491  
- **45–59:** $15,923  
- **60+:** $21,248  

Costs increase by **131% from youngest to oldest age group**, demonstrating compounding financial risk.

---

### 3️⃣ Higher BMI Amplifies Financial Risk

- **Obese individuals:** $15,552 average annual charges  
- Nearly **49% higher than normal BMI**  
- $6,700 more than underweight individuals  

BMI functions as a measurable cost escalator.

---

### 4️⃣ Highest Risk Segment Identified

- **Smokers aged 60+:** $40,631  
- **Obese smokers:** $41,558  
- **Low-risk segment:** $5,533  

High-risk individuals incur **over 7x higher costs** than low-risk individuals.

---

## 📈 Business Impact

This analysis quantifies measurable cost drivers affecting underwriting and pricing strategy.

Organizations can leverage these insights to:

- Improve premium pricing precision  
- Strengthen actuarial forecasting  
- Reduce exposure to high-cost segments  
- Prioritize preventative health initiatives  

---

## 📂 Repository Structure

- `/data/` → Cleaned dataset  
- `/sql/` → Cost segmentation queries  
- `/visuals/` → Dashboard screenshots  
- `README.md` → Executive project summary  

---

## 📎 Deliverables

- Cleaned dataset  
- SQL segmentation queries  
- Executive-ready Tableau dashboard  
- Data-backed pricing recommendations  

---

💼 This project demonstrates my ability to translate healthcare data into structured risk insights using SQL and Tableau.
