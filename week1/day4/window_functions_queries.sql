-- Query 1: Use ROW_NUMBER() to assign a row number to employees ordered by salary descending.
SELECT e.*,ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees e;
-- Query 2:  Use RANK() to rank employees by salary.
SELECT employee_name,salary,RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
-- Query 3:  Use DENSE_RANK() to rank employees by salary
SELECT employee_name,salary,DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employees;
-- Query 4: Find the top 3 highest-paid employees using a window function.
SELECT employee_id,employee_name,salary
FROM(
  SELECT employee_id,employee_name,salary,ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn  FROM employees
) AS t
WHERE rn<=3;
-- Query 5: Rank employees within each department using PARTITION BY.
SELECT *,
       RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employees;
-- Query 6: Display the highest salary in each department using a window function
SELECT employee_id,employee_name,department,salary
FROM (
  SELECT employee_id,employee_name,department,salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rn 
  FROM employees
) AS t
WHERE rn=1;
-- Query 7: Calculate the running total of order amounts ordered by order_date.
SELECT order_id, order_date, total_amount,
       SUM(total_amount) OVER (ORDER BY order_date) AS running_total
FROM orders;
-- Query 8: Calculate the cumulative sales amount for each employee.
SELECT employee_id, order_id, order_date, total_amount,
    SUM(total_amount) OVER (PARTITION BY employee_id ORDER BY order_date) AS cumulative_sales
FROM orders;
-- Query 9: Use LAG() to show the previous order amount for each customer.
SELECT customer_id,order_id,order_date,total_amount, LAG(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS prev_order_amount
FROM orders
ORDER BY customer_id,order_date;
-- Query 10: Use LEAD() to show the next order amount for each customer.
SELECT customer_id,order_id,order_date,total_amount, LEAD(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS next_order_amount
FROM orders
ORDER BY customer_id,order_date;
