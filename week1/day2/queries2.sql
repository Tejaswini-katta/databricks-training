--- ORDER BY QUERIES
-- Query 31: Select all employees ordered by their salary in ascending order
SELECT * FROM Employee ORDER BY salary ASC;

-- Query 32: Select all employees ordered by their age in descending order
SELECT * FROM Employee ORDER BY age DESC;

-- Query 33: Select all employees ordered by their hire date in ascending order
SELECT * FROM Employee ORDER BY hire_date ASC;

-- Query 34: Select employees ordered by their department and then by their salary
SELECT * FROM Employee ORDER BY department_id ASC, salary ASC;

-- Query 35: Select departments ordered by the total salary of their employees
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

--- JOIN QUERIES
-- Query 36: Select employee names along with their department names
SELECT E.name AS employee_name, D.name AS department_name
FROM Employee E
INNER JOIN Department D
ON E.department_id = D.department_id;

-- Query 37: Select project names along with the department names they belong to
SELECT P.name AS project_name, D.name AS department_name
FROM Project P
INNER JOIN Department D
ON P.department_id = D.department_id;

-- Query 38: Select employee names and their corresponding project names
SELECT E.name AS employee_name, P.name AS project_name
FROM Employee E
INNER JOIN Project P
ON E.department_id = P.department_id;

-- Query 39: Select all employees and their departments, including those without a department
SELECT E.name AS employee_name, D.name AS department_name
FROM Employee E
LEFT JOIN Department D
ON E.department_id = D.department_id;

-- Query 40: Select all departments and their employees, including departments without employees
SELECT D.name AS department_name, E.name AS employee_name
FROM Department D
LEFT JOIN Employee E
ON D.department_id = E.department_id;

-- Query 41: Select employees who are not assigned to any project
SELECT E.name AS employee_name
FROM Employee E
LEFT JOIN Project P
ON E.department_id = P.department_id
WHERE P.project_id IS NULL;

-- Query 42: Select employees and the number of projects their department is working on
SELECT E.name AS employee_name, COUNT(P.project_id) AS project_count
FROM Employee E
LEFT JOIN Project P
ON E.department_id = P.department_id
GROUP BY E.emp_id, E.name
ORDER BY E.name;

-- Query 43: Select the departments that have no employees
SELECT D.name AS department_name
FROM Department D
LEFT JOIN Employee E
ON D.department_id = E.department_id
WHERE E.emp_id IS NULL;

-- Query 44: Select employee names who share the same department with 'John Doe'
SELECT E.name AS employee_name
FROM Employee E
WHERE E.department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);

-- Query 45: Select the department name with the highest salary
SELECT D.name AS department_name,AVG(E.salary) AS avg_salary 
FROM Employee E 
INNER JOIN Department D 
ON E.department_id=D.department_id
GROUP BY D.department_id,D.name
ORDER BY avg_salary DESC
LIMIT 1;

