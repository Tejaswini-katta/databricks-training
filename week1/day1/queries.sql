--- BASIC QUERIES
-- Query 1: Select all columns from the Employee table
SELECT * FROM Employee;
-- Query 2: Select name and salary columns from the Employee table
SELECT name,salary FROM Employee;
-- Query 3: Select Employees who are older than 30
SELECT * FROM Employee WHERE age>30;
-- Query 4: Select the names of all departments
SELECT name FROM Department;
-- Query 5: Select employee who works in the IT department
SELECT * FROM Employee WHERE department_id=1;
--- STRING MATCHING QUERIES
-- Query 6: Select employees whose names starts with 'J'
SELECT * FROM Employee WHERE name LIKE 'J%';
-- Query 7: Select employees whose name end with 'e'
SELECT * FROM Employee WHERE name LIKE '%e';
-- Query 8: Select employees whose name contains 'a'
SELECT * FROM Employee WHERE name LIKE '%a%';
-- Query 9: Select employees whose names are exactly 9 characters long
SELECT * FROM Employee WHERE CHAR_LENGTH(name)=9;
-- Query 10: Select employees whose name have 'o' as the second character
SELECT * FROM Employee WHERE SUBSTR(name,2,1)='o';
--- DATE QUERIES
-- Query 11: Select employees hired in the year 2020
SELECT * FROM Employee WHERE YEAR(hire_date)=2020;
-- Query 12: Select employees hired in January of any year
SELECT * FROM Employee WHERE MONTH(hire_date)=01;
-- Query 13: Select employees hired before 2019
SELECT * FROM Employee WHERE YEAR(hire_date)<2019;
-- Query 14: Select employees hired on or after March 1,2021
SELECT * FROM Employee WHERE hire_date>=2021-03-01;
-- Query 15: Select employees hired in the last two years
SELECT * FROM Employee WHERE hire_date> ADDDATE(CURRENT_DATE,INTERVAL -2 YEAR);
--- AGGREGATE QUERIES
-- Query 16: Select the total salary of all employees
SELECT SUM(salary) FROM Employee;
-- Query 17: Select average salary of employees
SELECT AVG(salary) FROM Employee;
-- Query 18: Select the minimum salary in the employee table
SELECT MIN(salary) FROM Employee;
-- Query 19: Select the number of employees in each department
SELECT department_id,COUNT(*) FROM Employee GROUP BY department_id;
-- Query 20: Select the average salary of employees in each department
SELECT department_id,AVG(salary) FROM Employee GROUP BY department_id;
--- GROUP BY QUERIES
-- Query 21: Select the total salary for each department
SELECT department_id,SUM(salary) FROM Employee GROUP BY department_id;
-- Query 22: Select the average age of employees in each department
SELECT department_id,AVG(age) FROM Employee GROUP BY department_id;
-- Query 23: Select the number of employees hired in each year
SELECT YEAR(hire_date),COUNT(*) FROM Employee GROUP BY YEAR(hire_date);
-- Query 24: Select the highest salary in each department
SELECT department_id,MAX(salary) FROM Employee GROUP BY department_id;
-- Query 25: Select the department with highest average salary
SELECT department_id,AVG(salary) AS avg_sal FROM Employee GROUP BY department_id ORDER BY avg_sal DESC LIMIT 1;
--- HAVING QUERIES
-- Query 26: Select departments with more than 2 employees
SELECT department_id,COUNT(*) FROM Employee GROUP BY department_id HAVING COUNT(*)>2;
-- Query 27: Select departments with an average salary greater than 55000
SELECT department_id,AVG(salary) FROM Employee GROUP BY department_id HAVING AVG(salary)>55000;
-- Query 28: Select years with more than 1 employee hired
SELECT YEAR(hire_date),COUNT(*) AS employee_count FROM Employee GROUP BY YEAR(hire_date) HAVING COUNT(*)>1;
-- Query 29: Select departments with a total salary expense less than 100000
SELECT department_id,SUM(salary) FROM Employee GROUP BY department_id HAVING SUM(salary)<100000;
-- Query 30: Select departments with maximum salary above 75000
SELECT department_id,MAX(salary) FROM Employee GROUP BY department_id HAVING MAX(salary)>75000;
