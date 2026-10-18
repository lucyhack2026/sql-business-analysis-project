# SQL Business Analysis Project

## Project objective

This project demonstrates SQL-based business analysis using a simulated e-commerce and operations dataset.

The objective is to analyze revenue, profitability, customers, products, payment risk, fraud indicators and support operations using SQL queries.

This project is focused on practical SQL skills for Data Analyst, BI Analyst, Fraud Analyst, Risk Analyst and Operations Analyst roles.

---

## Dataset

The project uses simulated business tables:

- customers
- products
- orders
- transactions
- support_tickets

---

## Analysis included

- General business KPIs
- Monthly revenue and margin analysis
- Customer analysis by country and segment
- Product category performance
- Fraud and chargeback risk by payment method
- Support SLA analysis
- Customer 360 view combining revenue, fraud and support
- Executive summary and business recommendations
- Dashboard-ready datasets

---

## Main KPIs

- Total orders: 25,000
- Active customers: 7,627
- Total net revenue: 8,925,618.18
- Total gross profit: 4,272,047.86
- Average order value: 357.02
- Average profit per order: 170.88
- Gross margin: 47.86%

---

## Key findings

1. The business generated 8,925,618.18 in net revenue.
2. Total gross profit reached 4,272,047.86.
3. The strongest revenue month was 2024-12.
4. Electronics was the top product category by revenue.
5. Electronics also showed the highest margin.
6. Card payments showed the highest fraud rate.
7. Paypal was the second highest-risk payment method.
8. Customer 360 analysis connects revenue, fraud and support data.
9. SQL joins were used across customers, orders, products, transactions and tickets.
10. The project produces reusable CSV outputs for reporting and dashboards.

---

## Business recommendations

- Prioritize growth actions in the strongest customer segments and countries.
- Monitor payment methods with higher fraud and chargeback rates.
- Review low-margin product categories and discount strategy.
- Use monthly revenue trends to detect seasonality and demand changes.
- Connect support issues with customer value and revenue impact.
- Build recurring SQL reports for management and operational teams.

---

## SQL files

The `sql/` folder includes:

- 01_business_kpis.sql
- 02_monthly_revenue.sql
- 03_customer_segments.sql
- 04_product_performance.sql
- 05_fraud_risk.sql
- 06_support_sla.sql
- 07_customer_360.sql

---

## Tools used

- SQL
- DuckDB
- Python
- Pandas
- NumPy
- Google Colab
- CSV datasets

---

## Repository structure

sql-business-analysis-project/
- data/raw/
- data/processed/
- dashboard/
- reports/
- sql/
- 01_sql_business_analysis_project.ipynb
- README.md
- requirements.txt

---

## Author

Project created by Lucia García Gallego as part of a professional Data Analyst / BI Analyst / Risk Analyst portfolio.