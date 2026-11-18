# Amazon India Sales Analytics

An end-to-end data analytics project exploring sales performance, product trends, regional demand, order cancellations and fulfilment operations using **Python, Excel, MySQL and Power BI**.

## Project Overview

This project analyses an Amazon India sales report to understand how an e-commerce seller can improve sales performance and order fulfilment.

The analysis focuses on identifying high-performing product categories, understanding regional demand patterns, evaluating order statuses and examining operational issues such as order cancellations and shipments returned to the seller.

**Business Problem**

How can an Indian e-commerce seller improve sales performance and order fulfilment by identifying high-performing product categories, regional demand patterns, and operational issues associated with order cancellations and shipments returned to the seller?

## Project Objectives

- Evaluate overall order activity and recorded sales amounts.
- Identify product categories and styles contributing to order value and quantity.
- Analyse monthly sales and order trends.
- Identify states and cities with high order activity.
- Examine order cancellations and shipments returned to the seller.
- Compare Amazon and merchant fulfilment performance.
- Explore courier status and shipping service-level patterns.
- Translate analytical findings into actionable business recommendations.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy) | Data cleaning, transformation and validation |
| Excel | Exploratory analysis, PivotTables and charts |
| MySQL | Data storage, validation and SQL analysis |
| Power BI | Interactive dashboard development |
| VS Code / Jupyter Notebook | Development environment |

## Dataset Overview

- **Dataset:** Amazon India Sale Report
- **Analysis period:** 31 March 2022 – 29 June 2022
- **Original records:** 128,975
- **Distinct Order IDs:** 120,378
- **Analytical columns after cleaning:** 23

The dataset contains order dates, order status, fulfilment method, product category, style, quantity, amount, shipping location, courier status, promotions and B2B information.

*Note: This is a third-party circulated sales report, not an official audited Amazon financial dataset.*

## Project Workflow

### 1. Data Cleaning and Preparation — Python

Used Pandas and NumPy to:

- Inspect dataset dimensions, column names, data types and missing values.
- Identify duplicate records and examine unique order IDs.
- Remove unnecessary columns.
- Standardise column names and text values.
- Convert date and numerical fields to appropriate data types.
- Retain meaningful missing values rather than automatically replacing them with zero.
- Create additional analytical fields such as order month and promotion indicator.
- Export and validate the cleaned dataset for further analysis.

### 2. Exploratory Data Analysis — Excel

Created PivotTables and supporting charts to explore:

- Category-wise recorded amount and quantity.
- Order status distribution.
- Fulfilment performance.
- State-wise recorded amount.
- Monthly trends.

### 3. SQL Analysis — MySQL

Created a relational analysis table and used SQL queries to investigate:

- Dataset size, distinct orders and date coverage.
- Missing values and data quality.
- Overall business performance.
- Category-wise and monthly performance.
- State-wise and city-wise demand.
- Order status and cancellation patterns.
- Fulfilment and courier status.
- B2B versus B2C activity.
- Promotion-related order patterns.
- Shipping service levels.
- State-wise order status distribution.

### 4. Dashboard Development — Power BI

Developed a multi-page interactive dashboard covering four analytical areas:

**Sales Overview**
- Overall recorded amount, orders, quantity and average order value.
- Monthly recorded amount trends.
- Category and style performance.
- Order status distribution.

**Regional Analysis**
- Geographical distribution of recorded amount.
- State-wise contribution.
- Top cities by order activity.
- State-level cancellation patterns.

**Order Analysis**
- Order status distribution.
- Monthly cancellation trends.
- Shipments returned to the seller.
- Order status patterns across product categories.

**Fulfilment Analysis**
- Amazon versus merchant fulfilment.
- Shipped and unshipped order activity.
- Courier status by fulfilment method.
- Shipping service-level patterns.
- Regional fulfilment comparison.

## Key Analytical Findings

The following are the principal patterns examined through the analysis. Figures should be interpreted within the dataset's March–June 2022 coverage.

### 1. Regional demand is concentrated

The regional dashboard indicates that a substantial share of recorded activity is concentrated among a relatively small group of states. The Top 5 States Share KPI showed approximately **56.07%** in the dashboard.

**Business implication:** Inventory allocation and regional fulfilment planning should consider differences in state-level demand rather than distributing stock uniformly.

### 2. Order cancellations require operational attention

The order analysis shows that cancellations are a significant order-status category. The monthly trend highlighted a particularly high cancellation count in **April 2022**, at approximately 6.7K in the visualisation.

**Business implication:** The seller should investigate the operational factors associated with cancellation patterns, such as order processing, stock availability and fulfilment workflows. The dataset identifies where and when cancellations occur, but does not establish their underlying causes.

### 3. Shipments returned to the seller are a separate operational concern

The analysis identifies shipments marked **Shipped – Returned to Seller** as a distinct status, with approximately 2K affected orders in the dashboard.

**Business implication:** These shipments should be monitored separately from cancellations. Further investigation using delivery attempts, courier exception codes and return reasons would help identify the causes.

### 4. Fulfilment activity is predominantly Amazon-handled

The fulfilment dashboard shows a larger volume of Amazon-fulfilled orders compared with merchant-fulfilled orders.

**Business implication:** Fulfilment performance should be monitored across both methods. Comparing courier status and shipping service levels can help identify differences in operational patterns.

### 5. Product and category performance can guide decisions

Category-wise and style-wise analysis helps distinguish products generating higher recorded amounts and quantities.

**Business implication:** These findings can support product prioritisation, stock planning and category-level performance reviews. Recorded amount and quantity should be considered together rather than treating either as a complete measure of profitability.

### 6. Promotions and B2B activity provide additional business segments

The SQL and dashboard analysis compares orders with and without recorded promotions and examines B2B versus non-B2B activity.

**Business implication:** These segments can help the seller understand differences in order activity and recorded amounts. However, the analysis does not prove that promotions caused an increase in sales.

## Business Recommendations

Based on the analytical patterns, the following actions are worth considering:

1. **Regional inventory planning:** Prioritise stock allocation using state- and city-level order demand.
2. **Cancellation monitoring:** Track monthly cancellation patterns and investigate operational reasons behind increases.
3. **Return-to-seller monitoring:** Review returned-to-seller shipments separately from cancelled orders and investigate courier-related exceptions.
4. **Fulfilment comparison:** Monitor Amazon and merchant fulfilment activity independently to identify areas for operational improvement.
5. **Product prioritisation:** Use category, style, quantity and recorded amount together when reviewing product performance.
6. **Promotion evaluation:** Conduct further analysis with comparable periods and additional data before deciding whether promotions improve sales performance.

## Important Data Limitations

- The report covers approximately three months, so it does not establish annual or seasonal trends.
- Amount contains missing values; recorded amount should not be interpreted as complete audited revenue.
- The dataset does not contain product costs, so profit and profit margin cannot be calculated.
- Cancellation and returned-to-seller statuses indicate outcomes, not the underlying reasons.
- Promotion comparisons show associations, not proof of promotional impact.
- Customer identifiers and detailed delivery or return reasons are not sufficiently available for customer retention or root-cause analysis.

## Project Outcome

This project demonstrates an end-to-end analytics workflow, from raw data inspection and cleaning to exploratory analysis, SQL querying, interactive visualisation and business recommendations.

It combines technical data analysis with business interpretation to turn an order-level sales dataset into insights that can support better product, regional and fulfilment decisions.

## Author

**Data Analytics Portfolio Project**

**Tools:** Python | Excel | MySQL | Power BI