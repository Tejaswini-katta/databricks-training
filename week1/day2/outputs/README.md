# SQL Practice - Day 2 Data Log

This folder contains the result sets obtained from running the queries defined in `queries.sql` for questions 31 to 45 on the provided database schema.
The results were verified against the expected outcomes for sorting, joins, outer joins, grouped counts, and subquery-based filtering in this section of the practice set.

- Order By Queries: Sorting by salary, age, hire date, and multi-column ordering completed and verified.
- Join Queries: `INNER JOIN` and `LEFT JOIN` operations across `Employee`, `Department`, and `Project` tables were completed and validated.
- Grouped Results: Department salary totals and project counts per employee’s department were confirmed accurate using `SUM`, `COUNT`, and `GROUP BY`.
- Subquery Logic: Department-based filtering, including employees in the same department as John Doe, was successfully verified.

Note: Results were verified using DB Fiddle (MySQL 5.7). Query 43 returned no rows because all departments currently have employees.
