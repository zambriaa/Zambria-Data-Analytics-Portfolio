# Healthcare Cost & Risk Analysis

SQL • Excel • Tableau

---

<img width="529" height="590" alt="Healthcare Cost Dashboard" src="https://github.com/user-attachments/assets/8d058d68-3629-40a1-8655-81f66a1c9d48" />

**Live Dashboard:**  
https://public.tableau.com/app/profile/zambria.morris/viz/MedicalInsuranceCostDriversAnalysis/Dashboard1

---

**Project Goal**

The goal of this project was to understand what actually drives healthcare costs. We often hear that factors like age or smoking increase insurance expenses, but I wanted to see how large those differences actually are and what happens when multiple risk factors stack together.

Using a medical insurance dataset from Kaggle, I analyzed how age, BMI, smoking status, and region relate to annual medical charges.

---

**Executive Summary**

Healthcare costs vary significantly depending on individual health factors. In this project, I analyzed a medical insurance dataset to see how age, BMI, and smoking status impact annual medical charges.

The analysis showed that smoking is the largest cost driver in the dataset. Age also increases healthcare expenses, while BMI plays a moderate role on its own but becomes more important when combined with other risk factors.

The biggest differences appeared when multiple risk factors were combined, especially among older smokers and obese smokers.

---

**Dataset**

**Source:** https://www.kaggle.com/datasets/mirichoi0218/insurance

**Fields I worked with**

- Age  
- BMI  
- Smoking status  
- Region  
- Annual medical charges  

**Fields I created**

- Age groups (18–29, 30–44, 45–59, 60+)  
- BMI categories (Underweight, Normal, Overweight, Obese)

---

**How I Approached the Analysis**

- Cleaned and validated the dataset in Excel  
- Built age group and BMI category fields  
- Wrote SQL queries in SQLite to calculate average charges across different segments  
- Stacked variables to see what happens when risk factors combine  
- Built a Tableau dashboard to visualize the findings  

---

**SQL Queries**

Full file:  
`/sql/insurance_analysis.sql`

**Overall Average Charges**

```sql
SELECT 
ROUND(AVG(charges), 2) AS overall_average_charges
FROM insurance;
```

**Charges by Smoking Status**

```sql
SELECT 
smoker_flag,
COUNT(*) AS total_people,
ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY smoker_flag
ORDER BY avg_charges DESC;
```

**Charges by BMI Category**

```sql
SELECT 
bmi_category,
COUNT(*) AS total_people,
ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY bmi_category
ORDER BY avg_charges DESC;
```

**Smoking Impact Within BMI Categories**

```sql
SELECT 
smoker_flag,
bmi_category,
COUNT(*) AS total_people,
ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY smoker_flag, bmi_category
ORDER BY avg_charges DESC;
```

**Smoking Impact Across Age Groups**

```sql
SELECT 
age_group,
smoker_flag,
COUNT(*) AS total_people,
ROUND(AVG(charges), 2) AS avg_charges
FROM insurance
GROUP BY age_group, smoker_flag
ORDER BY avg_charges DESC;
```

---

**Key Findings**

Smoking was by far the biggest cost driver. Smokers averaged **$32,050 a year compared to $8,434 for non-smokers**, about **3.8x higher**.

Costs increased steadily with age, from **$9,182 for the 18–29 group** to **$21,248 for individuals aged 60+**, representing about a **131% increase**.

BMI increased costs but wasn’t as significant on its own. Individuals in the obese category averaged **$15,552 annually**, about **49% more than the normal BMI group**.

The largest differences appeared when risk factors were combined. **Obese smokers averaged $41,558 per year**, while **smokers aged 60+ averaged $40,631**.

The lowest risk group averaged **$5,533**, meaning the gap between low and high risk individuals was more than **7x**.

---

**Business Impact**

Understanding how smoking, BMI, and age interact helps identify which groups are most likely to generate higher healthcare costs.

For insurers and healthcare organizations, identifying these high-risk segments can improve pricing models, risk forecasting, and preventative health initiatives.

---

**Recommendations**

Based on the analysis, a few practical actions could help manage healthcare costs:

- Focus preventative health programs on smoking cessation since smoking had the strongest relationship with higher medical expenses.
- Monitor high-risk groups such as older smokers and obese smokers who showed the highest average charges.
- Use segmentation models (age groups, BMI categories, smoking status) when forecasting healthcare costs or building pricing models.

---
