# US E-Commerce Delivery Delay Analysis

## 1. Who is this for

* This project is for hiring managers, recruiters, and data teams who want to see a complete analytical workflow, including ETL, data quality checks, data visualizations, and data reconciliation, on a 1M-row dataset.

## 2.Problem Statement

* **Background**: E-Commerce delivery delay impacted user experience.
* **Objective**: Qualified in analysing 6 years of order data to identify the critical geolocation and trend to support operational optimization.
* **Insights & Recommendations**: Lowered the overall delay rate by 1-2 percentage points as estimated by targeting the region to optimize the delivery strategy.

## 3.Source

* **DataSet**: [US Ecommerce 2019-2025 Dataset](https://www.kaggle.com/datasets/limjeongeun/synthetic-u-s-e-commerce-dataset-1m-orders/data).
* **Core Table**: 'orders','customers','order_items','order_payments','products'(total 8 tables).
* **Scale**: 1 Million.

## 4. Technology Stack

* **Database**: PostgreSQL 18.
* **Container**: Docker.
* **Database management tool**: DBeaver 26.1.4.
* **Data Engineering & Processing**: SQL (PostgreSQL),Python(Pandas,statsmodel).
* **Data visualization and Dashboard**: Matplotlib,Power BI.

## 5. How to Run

* **Steps**:
  1. **Step One**: Using "Docker-compose up -d" command to create the database container.
  2. **Step Two**: Downloading the dataset and connecting with the database container by any database management tool.
  3. **Step Three**: Loading the dataset, fixing the data type and querying the data.
  4. **Step Four**: Exporting the result of query for time-series analysis and dashboarding
  5. **Step Five**: Loading the processed data into the Jupyter Notebook and performing the time-series analysis.
  6. **Step Six**: Importing the processed data into Power BI to create the dashboard.

## 6.Methodology

* **Data Extraction and Cleaning**: Using **SQL (PostgreSQL)** to join multiple tables in the database and aggregate results with **aggregation functions (e.g., SUM, COUNT)**; processing data with **Python (Pandas)**.
* **Metrics**: **"Delay Rate"**.
* **Method in Scopes**:
  1. **Overall Analysis**: Using **Window Functions('LAG','RANK','DENSE_RANK')** and **CTE** to calculate the monthly delay rate.
  2. **Geolocation Analysis**: Using **aggregation function** and **CTE** to assess the effectiveness of data granularity across different geographic levels.
  3. **Time Series Analysis**: Using **decomposion** function from **statsmodels** to identify the **seasonality** and fit proper model (e.g., **ARMA**). Then using the metrics(Mean Absolute Error, Root Mean Squared Error, Mean Absolute Percentage Error) to assess its accuracy.
  4. **Finance Analysis**: Comparing 'order_item' table and 'order_payments' to determine the revenue difference.
* **Dashboard and report**: Built an interactive **Power BI** Dashboard to display results and created a PDF report for presentation. 

## 7. Key Insights & Results

* **Overall delay rate**:  The overall delay rate fluctuates between **9% and 10%** through 6 years.
* **Geographical scope**: A notable difference was found at the state level. For example, Geogia(GA) shows a slightly higher delay rate of **10%**, compared to **9%** in other states.
* **Financial scope**: A data reconciliation between 'order_items' and 'order_payments' revealed that approximately **5%** orders had discrepancies, traced back to inconsistent freight charge inclusion logic.

## 8. Contact me

if you have any questions, feedback, or just want to connct, feel free to reach out!

* **LinkedIn**: [![LinkedIn](https://custom-icon-badges.demolab.com/badge/LinkedIn-0A66C2?logo=linkedin-white&logoColor=fff)](https://www.linkedin.com/in/alext41/)
* **GitHub**: [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/yourusernamPeachalex)
* **Email**: [![Email](https://img.shields.io/badge/Gmail-D14836?logo=gmail&logoColor=white)](mailto:peachalex233@gmail.com)
* **Twitter**: [![Twitter](https://img.shields.io/badge/X-%23000000.svg?logo=X&logoColor=white)](https://x.com/AlextheAcari)