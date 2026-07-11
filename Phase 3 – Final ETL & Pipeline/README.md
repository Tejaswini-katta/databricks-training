# SQL to PySpark – Phase 3 Final ETL & Pipeline

## Overview

This project demonstrates the implementation of a complete **ETL (Extract, Transform, Load)** pipeline using **PySpark** in **Databricks**. It focuses on data ingestion, cleaning, transformation, aggregation, SQL-to-PySpark conversion, and building reusable ETL workflows.

The project follows a real-world data engineering approach by processing customer and sales datasets to generate business insights.

---

## Objectives

- Understand the ETL workflow
- Read data from multiple file formats
- Clean and preprocess datasets
- Perform business transformations
- Convert SQL queries into PySpark
- Build reusable ETL functions
- Generate business reports

---

## Technologies Used

- PySpark
- Apache Spark
- Databricks
- Spark SQL
- CSV
- JSON
- Parquet

---

## Dataset

The project uses the following datasets:

- **customers.csv**
- **sales.csv**

Additionally, the project demonstrates reading data in:

- JSON
- Parquet

---

## ETL Workflow

### 1. Extract

- Created Spark Session
- Read CSV files
- Read JSON files
- Read Parquet files
- Inspected schema
- Displayed dataset

### 2. Transform

- Checked missing values
- Removed null values
- Removed duplicate records
- Filtered invalid records
- Joined customer and sales datasets
- Calculated daily sales
- Calculated city-wise revenue
- Identified repeat customers
- Found highest spending customer in each city
- Built final reporting table

### 3. Load

- Displayed transformed reports
- Created reusable ETL pipeline functions

---

## Business Pipeline Exercises

### Exercise 1

Read sales data, clean null values, and calculate daily sales.

### Exercise 2

Read customer data, clean invalid records, and calculate city-wise revenue.

### Exercise 3

Find repeat customers with more than two purchases.

### Exercise 4

Identify the highest spending customer in each city using Window Functions.

### Exercise 5

Generate a final reporting table containing:

- Customer ID
- City
- Total Spend
- Sales Count

---

## SQL to PySpark Conversion

Every business problem is solved in two ways:

- Spark SQL
- PySpark DataFrame API

This helps understand the relationship between SQL queries and PySpark transformations.

---

## Features

- ETL Pipeline
- SQL to PySpark Conversion
- Window Functions
- Aggregations
- Joins
- Data Cleaning
- Missing Value Handling
- Duplicate Removal
- JSON & Parquet Processing
- Reusable Functions

---

## Key PySpark Concepts

- SparkSession
- DataFrame API
- show()
- printSchema()
- dropna()
- dropDuplicates()
- filter()
- groupBy()
- agg()
- join()
- orderBy()
- Window Functions
- row_number()
- Temporary SQL Views

---

## Learning Outcomes

After completing this project, I gained hands-on experience in:

- Building ETL pipelines
- Reading multiple file formats
- Cleaning and transforming data
- SQL to PySpark conversion
- Business report generation
- Window Functions
- Aggregations
- Joins
- Reusable PySpark code development

---
