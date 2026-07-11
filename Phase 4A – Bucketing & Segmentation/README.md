# Customer Segmentation using PySpark

## Overview

This project demonstrates various customer segmentation techniques using **PySpark** in **Databricks**. The primary objective is to convert continuous numerical values into meaningful business categories using different bucketing methods.

The project implements segmentation using both **Spark SQL** and the **PySpark DataFrame API**, providing hands-on experience with real-world data engineering and analytics workflows.

---

## Project Objectives

- Learn customer segmentation techniques
- Implement conditional bucketing using PySpark
- Apply SQL CASE statements for categorization
- Perform quantile-based segmentation
- Compare different segmentation approaches
- Understand business applications of customer segmentation

---

## Technologies Used

- PySpark
- Apache Spark
- Spark SQL
- Databricks
- Python
- CSV

---

## Datasets Used

### customers.csv

Contains customer information.

**Columns**

- customer_id
- first_name
- last_name
- email
- phone_number
- address
- city
- state
- zip_code

### sales.csv

Contains sales transaction details.

**Columns**

- sale_id
- customer_id
- product_id
- sale_date
- quantity
- total_amount

---

## Project Workflow

### Step 1 – Data Ingestion

- Read customer dataset
- Read sales dataset
- Inspect schema

### Step 2 – Data Cleaning

- Remove null values
- Remove duplicate records

### Step 3 – Data Integration

- Join customer and sales datasets using `customer_id`

### Step 4 – Customer Segmentation

Implemented multiple segmentation techniques:

- Conditional Logic
- SQL CASE Statement
- Quantile-based Segmentation

### Step 5 – Comparison

Compared the results obtained using different segmentation methods.

---

## Practice Tasks

### Task 1 – Gold, Silver, Bronze Segmentation

Customers were categorized based on their purchase amount using predefined thresholds.

- Gold
- Silver
- Bronze

Implemented using:

- Spark SQL
- PySpark

---

### Task 2 – Segment-wise Customer Count

Calculated the total number of customers in each segment.

---

### Task 3 – Quantile-based Segmentation

Used approximate quantiles to divide customers into balanced groups based on spending patterns.

---

### Task 4 – Compare Segmentation Methods

Compared:

- Fixed Threshold Segmentation
- Quantile-based Segmentation

to understand differences in customer classification.

---

### Task 5 – Reflection

Analyzed the advantages and use cases of each segmentation technique.

---

## PySpark Concepts Covered

- SparkSession
- DataFrames
- SQL Temporary Views
- Data Cleaning
- Data Joins
- `when()`
- `CASE WHEN`
- `approxQuantile()`
- `groupBy()`
- `count()`
- Conditional Transformations

---

## SQL Concepts Covered

- CASE Statement
- GROUP BY
- COUNT
- INNER JOIN
- ORDER BY

---

## Business Applications

The techniques implemented in this project can be applied in:

- Customer Loyalty Programs
- Marketing Campaigns
- Customer Lifetime Value Analysis
- Personalized Recommendations
- Retail Analytics
- Customer Profiling
- Business Intelligence Dashboards

---

## Learning Outcomes

After completing this project, I gained hands-on experience in:

- Customer Segmentation
- Conditional Bucketing
- SQL CASE Statements
- Quantile-based Segmentation
- Data Cleaning
- Data Integration
- SQL to PySpark Conversion
- Business Data Analysis
- ETL Workflow using PySpark

---

## Key Skills Demonstrated

- PySpark
- Spark SQL
- Apache Spark
- Data Engineering
- Customer Analytics
- ETL Pipeline Development
- Data Cleaning
- Feature Engineering
- Business Intelligence
- Data Transformation
