# SQL Practice - Day 2 Data Log

This folder contains the result sets obtained from running queries 31 to 45 defined in `queries.sql` on the provided database schema.
The results were checked against the expected behavior for sorting, aggregation, joins, outer joins, and subquery-based filtering used in this section of the practice set.

## Topics Covered

- Order By Queries: Sorting employee records by salary, age, hire date, and multi-column ordering was completed and verified.
- Grouped Ordering: Department-wise salary totals were aggregated and ordered successfully using `SUM`, `GROUP BY`, and `ORDER BY`.
- Inner Joins: Matching records across `Employee`, `Department`, and `Project` tables were validated for employee-department, project-department, and employee-project relationships.
- Outer Joins: `LEFT JOIN` queries were confirmed for cases involving employees without departments, departments without employees, and employees without projects.
- Join-Based Counting: Project counts per employee’s department were verified using `COUNT` with grouped join results.
- Subquery Filtering: Department-based filtering using a subquery, such as finding employees in the same department as John Doe, was validated successfully.
- Department Salary Analysis: The department with the highest average salary was identified using aggregation, join logic, sorting, and limiting.

## Notes

- Query execution and verification were performed using DB Fiddle (MySQL 5.7), consistent with the Day 1 workflow.
