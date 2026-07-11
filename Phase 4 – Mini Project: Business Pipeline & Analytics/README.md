# Customer Sales ETL Pipeline using PySpark

## Overview

This project demonstrates an end-to-end **ETL (Extract, Transform, Load)** pipeline using **PySpark** and **Spark SQL** in **Databricks**. The pipeline processes customer and sales datasets, performs data cleaning, transformations, joins, aggregations, and generates business insights through SQL and PySpark implementations.

The project is designed to strengthen Data Engineering concepts by implementing real-world business scenarios.

---

## Project Objectives

- Build an end-to-end ETL pipeline using PySpark
- Read and process multiple datasets
- Perform data cleaning and preprocessing
- Convert SQL queries into PySpark DataFrame operations
- Generate business reports
- Build reusable ETL functions
- Understand real-world data engineering workflows

---

## Technologies Used

- PySpark
- Apache Spark
- Spark SQL
- Databricks
- Python
- CSV
- JSON
- Parquet

---

## Datasets Used

### customers.csv

Contains customer information:

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

Contains sales transaction details:

- sale_id
- customer_id
- product_id
- sale_date
- quantity
- total_amount

---

## ETL Workflow

### Extract

- Created Spark Session
- Read CSV datasets
- Read JSON files
- Read Parquet files
- Inspected schema and data

### Transform

- Removed null values
- Removed duplicate records
- Filtered invalid records
- Joined customer and sales datasets
- Calculated business metrics
- Performed aggregations
- Applied SQL and PySpark transformations

### Load

- Displayed final reports
- Saved processed data for reporting

---

## Business Problems Solved

### 1. Daily Sales Analysis

- Calculated daily sales revenue using sales transactions.
- Implemented using both Spark SQL and PySpark.

### 2. City-wise Revenue

- Joined customer and sales datasets.
- Calculated total revenue generated from each city.

### 3. Top Customers by Revenue

- Identified the highest spending customers.
- Ranked customers based on total spending.

### 4. Repeat Customers

- Identified customers with more than two purchases.

### 5. Customer Segmentation

Customers were classified into:

- Gold
- Silver
- Bronze

based on their total spending.

### 6. Final Business Report

Generated a comprehensive report containing:

- Customer ID
- Customer Name
- City
- Total Orders
- Total Revenue

---

## SQL to PySpark Conversion

Every business problem was implemented using:

- Spark SQL
- PySpark DataFrame API

This helped in understanding how SQL operations map directly to PySpark transformations.

---

## PySpark Concepts Covered

- SparkSession
- DataFrames
- Schema Inspection
- Missing Value Handling
- Duplicate Removal
- Filtering
- Aggregations
- Joins
- Window Functions
- Temporary Views
- SQL Queries
- DataFrame API
- ETL Pipeline Development

---

## Key Features

- End-to-End ETL Pipeline
- SQL to PySpark Conversion
- Data Cleaning
- Business Report Generation
- Customer Segmentation
- Revenue Analysis
- Reusable ETL Functions
- Databricks Implementation

---

## Learning Outcomes

After completing this project, I learned how to:

- Build complete ETL pipelines
- Read data from different file formats
- Clean and transform large datasets
- Join multiple datasets
- Perform aggregations and business analysis
- Convert SQL logic into PySpark
- Generate reporting datasets
- Build reusable PySpark workflows

---

## Interview Skills Demonstrated

This project demonstrates practical knowledge of:

- ETL Pipeline Design
- Data Cleaning
- Data Transformation
- SQL
- PySpark
- Spark SQL
- Joins
- Aggregations
- Window Functions
- Business Reporting
- Data Engineering Fundamentals

## License

This project is developed for educational purposes and to demonstrate practical Data Engineering concepts using PySpark and Databricks.
