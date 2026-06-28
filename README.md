# 📊 Customer Churn Prediction Analysis | SQL • Power BI • Machine Learning

## 📌 Project Overview

Customer churn is one of the most critical business challenges in the telecommunications industry. Acquiring a new customer is significantly more expensive than retaining an existing one. This project analyzes customer behavior, identifies the key factors influencing churn, and builds a machine learning model capable of predicting customers who are likely to leave.

This end-to-end analytics project demonstrates the complete data analytics workflow—from SQL-based data exploration to interactive business dashboards and predictive machine learning.

---

## 🎯 Business Objective

The primary objective of this project is to:

- Analyze customer behavior and service usage.
- Identify the major drivers of customer churn.
- Build an interactive dashboard for business decision-makers.
- Develop a machine learning model to predict customer churn.
- Provide actionable recommendations to improve customer retention.

---

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| PostgreSQL | Data Cleaning & SQL Analysis |
| Power BI | Dashboard & Data Visualization |
| Python | Machine Learning |
| Pandas | Data Manipulation |
| NumPy | Numerical Computing |
| Matplotlib | Data Visualization |
| Scikit-learn | Machine Learning Models |
| Jupyter Notebook | Model Development |

---

# 📂 Project Structure

```
Customer-Churn-Prediction/
│
├── Dataset/
│   └── IBM_teleco_Customer_Churn.csv
│
├── SQL/
│   └── customer_churn.sql
│
├── Power BI/
│   └── Telecom_Customer_Churn_Analysis.pbix
│
├── Machine Learning/
│   └── Customer_Churn_Prediction.ipynb
│
├── Dashboard Images/
│   └── dashboard.png
│
└── README.md
```

---

# 📊 Dataset Information

- **Dataset:** IBM Telco Customer Churn
- **Total Records:** 7,043 Customers
- **Total Features:** 21
- **Target Variable:** Churn

The dataset contains customer demographics, account information, subscribed services, billing details, and churn status.

---

# 🗄️ Phase 1 — SQL Analysis

## Objectives

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Business Analysis
- Customer Segmentation
- Churn Pattern Analysis

### SQL Analysis Performed

- Customer Demographics Analysis
- Contract Type Analysis
- Internet Service Analysis
- Payment Method Analysis
- Monthly Revenue Analysis
- Customer Lifetime Analysis
- Customer Segmentation
- Churn Rate Analysis
- Revenue at Risk Calculation

---

# 📈 Key SQL Insights

- Customers with **Month-to-Month contracts** have the highest churn rate.
- **Fiber Optic** users churn more frequently than DSL users.
- Customers using **Electronic Check** show the highest probability of churn.
- New customers are significantly more likely to leave within their first year.
- Customers with long-term contracts exhibit much higher retention.

---

# 📊 Phase 2 — Power BI Dashboard

The Power BI dashboard provides an interactive overview of customer churn with business-friendly visualizations.

## Dashboard Features

- Executive KPI Cards
- Customer Churn Distribution
- Churn Rate by Contract Type
- Churn Rate by Internet Service
- Churn Rate by Payment Method
- Customer Lifecycle Analysis
- Business Insights Panel

---

## KPI Metrics

- Total Customers
- Churned Customers
- Churn Rate
- Average Monthly Charges
- Revenue at Risk

---

# 🤖 Phase 3 — Machine Learning

## Workflow

- Data Cleaning
- Feature Engineering
- One-Hot Encoding
- Train-Test Split
- Model Training
- Model Evaluation
- Feature Importance Analysis

---

## Models Implemented

- Logistic Regression
- Decision Tree Classifier
- Random Forest Classifier

---

# 📊 Model Performance

| Model | Accuracy | Precision | Recall | F1 Score |
|--------|---------:|----------:|-------:|---------:|
| Logistic Regression | **80.55%** | **0.67** | **0.53** | **0.59** |
| Random Forest | 79.28% | 0.64 | 0.50 | 0.56 |
| Decision Tree | 71.82% | 0.47 | 0.50 | 0.49 |

### 🏆 Best Model

**Logistic Regression**

Accuracy: **80.55%**

The Logistic Regression model delivered the best balance of accuracy, precision, and recall, making it the preferred model for this dataset.

---

# 📈 Feature Engineering

- Removed Customer ID
- One-Hot Encoded categorical variables
- Target variable encoded into binary format
- Feature Scaling (StandardScaler)
- Train-Test Split (80:20)

---

# 📌 Business Insights

- Month-to-Month contracts are the strongest indicator of churn.
- Fiber Optic customers exhibit the highest churn risk.
- Electronic Check users are more likely to churn.
- Customer tenure is one of the strongest predictors of retention.
- Long-term contracts significantly reduce churn probability.

---

# 💡 Business Recommendations

- Encourage customers to migrate to long-term contracts.
- Improve onboarding during the first year of service.
- Review pricing and service quality for Fiber Optic plans.
- Promote automatic payment methods instead of Electronic Check.
- Implement proactive retention campaigns for high-risk customers identified by the prediction model.

---

# 🚀 Project Highlights

✔ End-to-End Data Analytics Project

✔ SQL Business Analysis

✔ Interactive Power BI Dashboard

✔ Machine Learning Classification

✔ Business Recommendations

✔ Recruiter-Friendly Documentation

---

# 📷 Dashboard Preview

> *(Add your Power BI dashboard screenshot here after uploading it to the repository.)*

```
Dashboard Images/dashboard.png
```

---

# 📚 Skills Demonstrated

- SQL
- PostgreSQL
- Data Cleaning
- Data Analysis
- Exploratory Data Analysis
- Power BI
- Dashboard Development
- Data Visualization
- Python
- Pandas
- NumPy
- Machine Learning
- Logistic Regression
- Decision Trees
- Random Forest
- Feature Engineering
- Business Intelligence
- Business Analytics

---

# 🔮 Future Improvements

- Hyperparameter Tuning
- XGBoost Implementation
- SMOTE for Class Imbalance
- ROC-AUC Comparison
- Cross-Validation
- Model Deployment using Flask/FastAPI
- Real-Time Churn Prediction API

---

# 👨‍💻 Author

**Karthik Thakkalapelly**

Aspiring Data Analyst | SQL | Power BI | Python | Machine Learning

---

## ⭐ If you found this project helpful, consider giving it a Star!
