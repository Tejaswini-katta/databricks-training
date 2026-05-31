# README — Phase 3A Data Quality & Cleaning Challenge

This notebook is a PySpark practice assignment for Phase 3A. Its purpose is to work with intentionally messy data, apply basic cleaning steps, validate the cleanup, and then perform a simple aggregation.

## Objective

The challenge focuses on understanding why data cleaning is necessary before any reporting or pipeline work. The assignment asks the learner to identify data issues, clean the dataset, validate the cleaning, and calculate customers per city.

## Files

- **Notebook:** `Phase_3A_Data_Quality_Challenge.ipynb`
- **Reference PDF:** `phase3a_data_quality_challenge.pdf`

## What the notebook covers

The notebook follows the assignment flow in a step-by-step format.

1. Create the messy dataset in PySpark.
2. Display the raw data and inspect the schema.
3. Identify data quality issues such as nulls, duplicates, and invalid values.
4. Clean the dataset using PySpark transformations.
5. Validate the result using row counts before and after cleaning.
6. Perform aggregation to calculate customer count by city.
7. Summarize the key learning and reflection from the exercise.

## Dataset used

The practice dataset contains six rows and includes intentional issues such as missing values, a duplicate row, and an invalid age value.

```python
data = [
    (1, "Ravi", "Hyderabad", 25),
    (2, None, "Chennai", 32),
    (None, "Arun", "Hyderabad", 28),
    (4, "Meena", None, 30),
    (4, "Meena", None, 30),
    (5, "John", "Bangalore", -5)
]
```

## Cleaning logic used

The notebook removes rows with null values in key columns, removes duplicates, and filters out invalid age values. In the current notebook version, this cleaning logic leaves one valid row in the cleaned dataset.

```python
clean_df = (
    df.dropna(subset=["customer_id", "name", "city"])
      .dropDuplicates()
      .filter("age > 0")
)
```

## Validation summary

The notebook compares row counts before and after cleaning. The raw dataset count is 6, and the cleaned dataset count is 1 in the current implementation.

## Final output

The final aggregation groups the cleaned data by city and calculates the number of customers in each city. In the current notebook output, Hyderabad has a customer count of 1.

## Key learnings

- Real-world data is messy.
- Cleaning is mandatory before processing.
- Invalid data leads to wrong results.
- Validation is essential.

## Reflection questions

The assignment also encourages reflection after coding.

- What happens if cleaning is skipped?
- Which issue impacted results most?
- How would this affect business decisions?
- Can a cleaning checklist be defined for future datasets?

## How to run

1. Open the notebook in Databricks or another PySpark environment where `spark` is available.
2. Run the cells in order from top to bottom.
3. Review the raw dataset, cleaned dataset, validation counts, and final aggregation output.

## Expected result

After running the notebook, the learner should understand how raw data issues affect output quality and how a basic cleaning workflow supports reliable aggregation and pipeline thinking.
