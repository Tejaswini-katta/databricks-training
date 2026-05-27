# Databricks Training - PySpark DataFrame Operations

This notebook contains hands-on PySpark practice using an employee dataset. It covers common DataFrame operations used in Databricks and data engineering workflows, including selecting columns, renaming columns, filtering rows, creating derived columns, changing datatypes, sorting data, and limiting results.

## Topics Covered

### Select
Used to choose specific columns from a DataFrame and display only the required data .

### Alias
Used to give a temporary name to a column in the output without changing the original schema .

### Filter / Where
Used to return only the rows that match a condition such as salary, city, age, or department .

### withColumnRenamed
Used to rename an existing DataFrame column in the resulting DataFrame .

### withColumn
Used to create a new column or modify an existing column using expressions and conditions.

### Typecasting
Used to convert one datatype into another using `cast()`, such as string to date, integer to string, or string to timestamp.

### Sort / orderBy
Used to arrange rows in ascending or descending order based on one or more columns.

### Limit
Used to display only a fixed number of rows from the DataFrame, often after sorting or filtering.

## Dataset Details

The sample dataset contains employee information such as:
- Employee ID
- Employee name
- Age
- City
- Designation
- Salary
- Joining date
- Department

This structure is useful for practicing real-time DataFrame transformations and query-based tasks in PySpark.

## Learning Objectives

- Understand basic PySpark DataFrame operations
- Practice column selection and renaming 
- Apply row filtering with conditions 
- Create new calculated columns using `withColumn()` 
- Convert datatypes using `cast()` 
- Sort and limit data for analysis 

## Tools Used

- Databricks
- PySpark
- Python
- GitHub

## Purpose

The purpose of this notebook is to build strong basics in PySpark and improve practical understanding of DataFrame transformations commonly used in data engineering projects .
