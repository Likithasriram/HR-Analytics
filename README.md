# 📊 HR Analytics & Employee Attrition Prediction

A complete end-to-end Data Analytics + SQL + Machine Learning project designed to analyze workforce trends, identify attrition drivers, and build a predictive model to estimate employee churn.

##🚀 Project Overview

Employee attrition leads to loss of talent, higher recruitment costs, and decreased productivity.
This project analyzes 5,000+ employee records to uncover:
This project goes beyond descriptive analysis by validating key drivers using statistical hypothesis testing.
- Why employees leave  
- Which departments face higher attrition  
- Key factors influencing churn  
- Predictive modeling to identify at-risk employees  


This project includes:

✔ SQL-based HR analysis

✔ Exploratory Data Analysis (EDA)

✔ Machine Learning classification

✔ Feature importance insights

✔ Exported .pkl model for deployment

## 📁 Project Structure

```
SQL Project/
│
├── data/
│   └── HR_Analytics_5000.csv
│
├── models/
│   └── attrition_model.pkl
│
├── notebooks/
│   └── HR_Attrition.ipynb
│
├── Hr analytics sql queries.sql
│
└── README.md
```

##📁 Dataset Information

The dataset contains 5,000 employee records with the following categories:

### 🔹 Demographics
- Age  
- Gender  
- Marital Status  

### 🔹 Work Details
- Department  
- JobRole  
- TeamSize  
- YearsAtCompany  

### 🔹 Performance Metrics
- PerformanceRating  
- JobSatisfaction  
- EnvironmentSatisfaction  

### 🔹 Compensation
- Salary  
- MonthlyIncome  
- Bonus  

### 🔹 Work Behavior
- Overtime  
- RemoteWork  
- TravelFrequency  

### 🔹 Target Variable
- Attrition (Yes/No)


##🧪 SQL Analysis

The file Hr analytics sql queries.sql includes 20+ professional SQL queries covering:

### ✔ Workforce Insights
- Department-wise employee count  
- Gender distribution  
- Tenure patterns  

### ✔ Compensation Analysis
- Salary trends by department  
- Bonus vs attrition  
- Highest-paid roles  

### ✔ Attrition KPIs
- Attrition rate & counts  
- Attrition by job role  
- Overtime impact  
- Satisfaction vs attrition  

### ✔ Promotion & Performance
- Years since last promotion  
- Performance rating distribution  

These queries provide deep HR domain analytics and SQL proficiency.

## 📊 Exploratory Data Analysis (EDA)

The notebook includes:

- Correlation heatmap  
- Salary vs Attrition analysis  
- Department-wise Attrition chart  
- Satisfaction level distributions  
- Tenure & promotion insights  

These visual patterns help uncover the root causes of attrition.


## 🤖 Machine Learning Modeling

### 🔧 Preprocessing Pipeline
- OneHotEncoder for categorical columns  
- StandardScaler for numeric values  
- Train/Test split with stratification  

### 🧠 Models Trained
- Logistic Regression  
- Random Forest Classifier  

### 🏆 Model Selection Criteria
- Accuracy  
- Precision, Recall, F1-score  
- **ROC-AUC** (final decision metric)  

Best model saved as:


models/attrition_model.pkl



### 📌 Feature Importance
Random Forest identifies the top predictors:

- Job Satisfaction  
- Environment Satisfaction  
- Overtime  
- Salary  
- Years at Company  


## 💡 Key Insights

- 🔸 Low satisfaction scores strongly correlate with attrition  
- 🔸 Overtime shows a correlation with attrition in initial analysis, but statistical testing indicates it is not a significant standalone factor    
- 🔸 Certain job roles show higher attrition than others  
- 🔸 Employees with lower salary ranges leave more often  
- 🔸 Remote workers tend to stay longer  
- 🔸 Very new and long-tenured employees show distinct churn tendencies  


## 📦 Sample Model Prediction

Prediction: **1 (Likely to Leave)**  
Probability: **0.78**

This enables HR teams to proactively identify employees needing attention.

 ## 🧪 A/B Test Analysis (Attrition Drivers)

To validate whether overtime has a significant impact on employee attrition, a statistical hypothesis test (Chi-square test) was performed.

### Result:
- P-value: 0.63 (> 0.05)

### Insight:
No statistically significant relationship was found between overtime and attrition.

### Business Interpretation:
Overtime alone is not a major driver of employee churn. Other factors such as job satisfaction, compensation, and work environment may have a stronger influence on attrition.



## 🛠 Technologies & Skills Demonstrated

### **Languages & Tools**
- Python  
- SQL (MySQL)  
- Pandas, NumPy  
- Scikit-learn  
- Matplotlib, Seaborn  
- Joblib  

### **Core Skills**
- Data Cleaning & Preparation  
- Exploratory Data Analysis (EDA)  
- SQL Query Development  
- Statistical Analysis & Hypothesis Testing (Chi-square test)  
- Classification Modeling  
- ROC-AUC Optimization  
- Feature Engineering  
- Model Saving & Deployment Preparation  


## ▶️ How to Run This Project

### **1️⃣ Clone the Repository**
```bash
git clone https://github.com/Likithasriram/HR-Analytics-Project.git

2️⃣ Install Dependencies
pip install -r requirements.txt

3️⃣ Launch the Notebook
jupyter notebook notebooks/HR_Attrition.ipynb

4️⃣ Load the Trained Model
import joblib
model = joblib.load("models/attrition_model.pkl")
```

##👩‍💼 Author

Likhitha P
Data Analyst | SQL | Python | Machine Learning | Power BI
📫 Email: likithasriramp@gmail.com
Linkedin: www.linkedin.com/in/likitha-sriram1220
