# US E-Commence Delivery Delay Analysis

## 1.Problem Statement

* **Background** : E-Commence delivery delay impacted user experience.
* **Objective** : Qualified in analysing 6 years of order data to identify the critical geolocation and trend to support operational optimisation.
* **Insights** : Lowered the overall delay rate by 1- 2 percentage points as estimated by targeting the region to optimize the delivery strategy.

## 2.Source

* **DataSet** : [US Ecommence 2019-2025 Dataset](https://www.kaggle.com/datasets/limjeongeun/synthetic-u-s-e-commerce-dataset-1m-orders/data).
* **Core Table** : 'orders','customers','order_items','order_payments','products'(total 8 tables).
* **Scale** : 1 Million.

## 3. Technology Stack

* **Database** : PostgreSQL 18.
* **Container** : Docker.
* **Datbase management tool** : DBeaver 26.1.4.
* **Data Engineering & Processing** : SQL (PostgreSQL),Python(Pandas).
* **Data visualization and Dashboard** : Matlib-plot,Power BI.

## 4.Methodology

* **Data Extraction and Cleaning** : Using **SQL (PostgreSQL)** to join multiple tables in the database and aggregate results with **aggregation functions (e.g., SUM, COUNT)**; processing data with **Python (Pandas)**.
* **Metrics** : **"On-Time Delivery Rate"**.
* **Method in Scopes** :
  1. **Overall Analysis** : Using **Window Functions('LAG','RANK','DENSE_RANK')** and **CTE** to calculate the monthly delay rate.
  2. **Geolocation Analysis** : Using **aggragation function** and **CTE** to assess the effectiveness of data granularity across different geographic levels.
  3. **Finance Analysis** : Comparing 'order_item' table and 'order_payments' to determine the revenue difference.
* **Dashboard and report** : Built an interactive **Power BI** Dashboard to display results and created a PDF report for presentation. 

## 4. Key Insights & Results

* **Overall delay rate** :  The overall delay rate fluctuates between **9% and 10%** through 6 years.
* **Geographical scope** : A notable difference was found at the state level. For example, Geogia(GA) shows a slightly higher delay rate of **10%**, compared to **9%** in other states.
* **Financial scope** : A data reconciliation between 'order_items' and 'order_payments' revealed that approximately **5%** orders had discrepancies, traced back to inconsistent freight charge inclusing logic.