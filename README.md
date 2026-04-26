# 🛍️ Customer Behaviour Analysis

### Uncovering spending patterns, loyalty trends & business risks in retail customer data

![Python](https://img.shields.io/badge/Python-3.x-blue?style=flat&logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-316192?style=flat&logo=postgresql)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=flat&logo=powerbi)

---

## 📌 Project Overview

This project analyses **3,900+ retail customer records** to help a 
retail business understand who their customers are, what they buy, 
and what risks and opportunities exist in their current strategy.

The analysis covers the full data workflow:
data cleaning → SQL analysis → visual dashboard

---

## 🛠️ Tools & Workflow

| Stage | Tool | Purpose |
|---|---|---|
| Data Cleaning | Python (Pandas) | Handled nulls, formatted columns, prepared data |
| Data Analysis | PostgreSQL | Answered 9 business questions via SQL queries |
| Visualization | Power BI | Built 2-page interactive dashboard |

---

## ❓ Business Questions Answered

1. Do highly engaged customers spend more?
2. Is the business dangerously dependent on discounts?
3. Do subscribed customers spend more than non-subscribers?
4. Which products have the highest discount rate?
5. What is the revenue contribution of each age group?
6. What are the top 3 products within each category?
7. Are repeat buyers more likely to subscribe?
8. Which season drives the most revenue?
9. Is customer engagement correlated with spending?

---

## 🔍 Key Findings

### 👥 Customer Profile
- **70% of customers are Loyal** repeat buyers- the business 
  has a strong retention base
- **68% of customers are Male**- the customer base skews 
  heavily toward one gender
- **Young Adults are the highest spending age group**- 
  followed closely by Middle-aged customers
- All four age groups spend within a similar range- 
  no single age group dominates significantly

### 💰 Revenue & Business Health
- **42.65% of revenue is discount-driven**- nearly half the 
  business depends on discounts to generate sales, which is 
  a significant margin risk
- **Non-subscribers generate 57% of revenue** despite being 
  a separate segment- subscribers are not pulling significantly 
  more weight
- **73% of customers are not subscribed**- this is either a 
  massive untapped opportunity or a sign the subscription 
  product needs improvement
- **Repeat rate is 89.13%**- customers keep coming back, 
  which is a strong signal of brand loyalty

### 🛍️ Product & Seasonal Trends
- **Clothing is the top performing category** by total revenue
- **Fall is the peak revenue season**- Spring follows closely, 
  Summer is the weakest
- **Free Shipping is the most preferred shipping method**- 
  customers are sensitive to delivery costs

---

## ⚠️ Dataset Limitations & Bias

- **Loyalty bias**- 70% of the dataset is Loyal customers. 
  This means findings about "average customer behaviour" 
  are skewed toward repeat buyers and may not represent 
  new customer behaviour accurately
- **Gender imbalance**- 68% Male customers means insights 
  about female customer preferences are based on a smaller 
  sample and may be less reliable
- **No time dimension**- the dataset has no transaction dates, 
  making it impossible to track trends over time or measure 
  growth/decline
- **No cost data**- we can see revenue but not profit margins, 
  so the true impact of discounting cannot be fully measured
- **Location data is US-only**- findings about regional 
  performance are limited to one market

---

## 💡 Business Recommendations

| Finding | Recommendation |
|---|---|
| 73% not subscribed | Launch a targeted subscription campaign for loyal customers who aren't subscribed yet- they're the most likely to convert |
| 42% discount dependency | Audit which products are discounted most and test reducing discounts gradually to protect margins |
| Fall is peak season | Concentrate marketing budget and stock investment in Fall campaigns |
| Young Adults spend most | Tailor product recommendations and ads toward the 18-30 age group |
| Free Shipping preferred | Consider building free shipping thresholds into the pricing strategy to increase average order value |

---

## 📊 Dashboard Preview

### Page 1- Who is our customer?
![Dashboard 1](Customer%20Behaviour%20Analysis/Dashboard/Dashboard%201.png)

### Page 2- What are they buying and when?
![Dashboard 2](Customer%20Behaviour%20Analysis/Dashboard/Dashboard%202.png)

---

## 📁 Project Structure
```
customer-behaviour-analysis/
│
├── Customer Behaviour Analysis/
│   ├── Dashboard/
│   │   ├── Dashboard 1.png
│   │   └── Dashboard 2.png
│   ├── Dataset/
│   │   └── customer_behaviour_analysis.csv
│   ├── Notebooks/
│   │   └── consumer_shopping_behaviour_analysis.ipynb
│   └── SQL/
│       └── superstore--sqll.sql
└── README.md
```

---

## 🙋‍♀️ About Me

Data Analyst based in Bengaluru

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat&logo=linkedin)](your-linkedin-url-here)
