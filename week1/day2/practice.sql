**Schema (MySQL v8)**

    CREATE TABLE Employees (
        emp_id INT,
        emp_name VARCHAR(50),
        department VARCHAR(50),
        salary INT,
        city VARCHAR(50),
        experience INT
    );
    
    INSERT INTO Employees VALUES
    (101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
    (102, 'Anjali', 'HR', 45000, 'Chennai', 3),
    (103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
    (104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
    (105, 'Aman', 'HR', 39000, 'Pune', 2),
    (106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
    (107, 'Divya', 'IT', 55000, 'Chennai', 3),
    (108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
    (109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
    (110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
    (111, 'Vikas', 'HR', 52000, 'Pune', 3),
    (112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
    (113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
    (114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
    (115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);

---

-- SELECT 
**Query #1**

    -- Query 1: Display all employee details.
    SELECT * FROM Employees;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 102    | Anjali   | HR         | 45000  | Chennai   | 3          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 105    | Aman     | HR         | 39000  | Pune      | 2          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 108    | Meena    | Sales      | 48000  | Bangalore | 2          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 111    | Vikas    | HR         | 52000  | Pune      | 3          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 113    | Tarun    | Sales      | 46000  | Chennai   | 2          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #2**

    -- Query 2: Display only employee names and salaries.
    SELECT emp_name,salary FROM Employees;

| emp_name | salary |
| -------- | ------ |
| Rahul    | 75000  |
| Anjali   | 45000  |
| Kiran    | 82000  |
| Sneha    | 67000  |
| Aman     | 39000  |
| Ravi     | 91000  |
| Divya    | 55000  |
| Meena    | 48000  |
| Arjun    | 61000  |
| Pooja    | 73000  |
| Vikas    | 52000  |
| Nisha    | 88000  |
| Tarun    | 46000  |
| Kavya    | 97000  |
| Manoj    | 58000  |

---
**Query #3**

    -- Query 3: Display employee names and departments. 
    SELECT emp_name,department FROM Employees;

| emp_name | department |
| -------- | ---------- |
| Rahul    | IT         |
| Anjali   | HR         |
| Kiran    | IT         |
| Sneha    | Finance    |
| Aman     | HR         |
| Ravi     | Finance    |
| Divya    | IT         |
| Meena    | Sales      |
| Arjun    | Sales      |
| Pooja    | IT         |
| Vikas    | HR         |
| Nisha    | Finance    |
| Tarun    | Sales      |
| Kavya    | IT         |
| Manoj    | Finance    |

---
**Query #4**

    -- Query 4: Display all employees from the IT department.
    SELECT * FROM Employees WHERE department='IT';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 107    | Divya    | IT         | 55000  | Chennai   | 3          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #5**

    -- Query 5: Display employee names and experience.
    SELECT emp_name,experience FROM Employees;

| emp_name | experience |
| -------- | ---------- |
| Rahul    | 5          |
| Anjali   | 3          |
| Kiran    | 6          |
| Sneha    | 4          |
| Aman     | 2          |
| Ravi     | 8          |
| Divya    | 3          |
| Meena    | 2          |
| Arjun    | 5          |
| Pooja    | 4          |
| Vikas    | 3          |
| Nisha    | 7          |
| Tarun    | 2          |
| Kavya    | 9          |
| Manoj    | 4          |

---


-- WHERE
**Query #1**

    -- Query 1: Find employees with salary greater than 70000.
    SELECT * FROM Employees WHERE salary>70000;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 103    | Kiran    | IT         | 82000  | Bangalore | 6          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #2**

    -- Query 2: Find employees working in Hyderabad. 
    SELECT * FROM Employees WHERE city='Hyderabad';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 101    | Rahul    | IT         | 75000  | Hyderabad | 5          |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 109    | Arjun    | Sales      | 61000  | Hyderabad | 5          |
| 114    | Kavya    | IT         | 97000  | Hyderabad | 9          |

---
**Query #3**

    -- Query 3: Find employees with experience less than 4 years.
    SELECT * FROM Employees WHERE experience=4;

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 110    | Pooja    | IT         | 73000  | Mumbai    | 4          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #4**

    -- Query 4: Find employees from Finance department.
    SELECT * FROM Employees WHERE department='Finance';

| emp_id | emp_name | department | salary | city      | experience |
| ------ | -------- | ---------- | ------ | --------- | ---------- |
| 104    | Sneha    | Finance    | 67000  | Hyderabad | 4          |
| 106    | Ravi     | Finance    | 91000  | Mumbai    | 8          |
| 112    | Nisha    | Finance    | 88000  | Bangalore | 7          |
| 115    | Manoj    | Finance    | 58000  | Mumbai    | 4          |

---
**Query #5**

    -- Query 5: Find employees whose salary is equal to 52000.
    SELECT * FROM Employees WHERE salary=52000;

| emp_id | emp_name | department | salary | city | experience |
| ------ | -------- | ---------- | ------ | ---- | ---------- |
| 111    | Vikas    | HR         | 52000  | Pune | 3          |

---
**Schema (MySQL v8)**

    CREATE TABLE Employees (
        emp_id INT,
        emp_name VARCHAR(50),
        department VARCHAR(50),
        salary INT,
        city VARCHAR(50),
        experience INT
    );
    
    INSERT INTO Employees VALUES
    (101, 'Rahul', 'IT', 75000, 'Hyderabad', 5),
    (102, 'Anjali', 'HR', 45000, 'Chennai', 3),
    (103, 'Kiran', 'IT', 82000, 'Bangalore', 6),
    (104, 'Sneha', 'Finance', 67000, 'Hyderabad', 4),
    (105, 'Aman', 'HR', 39000, 'Pune', 2),
    (106, 'Ravi', 'Finance', 91000, 'Mumbai', 8),
    (107, 'Divya', 'IT', 55000, 'Chennai', 3),
    (108, 'Meena', 'Sales', 48000, 'Bangalore', 2),
    (109, 'Arjun', 'Sales', 61000, 'Hyderabad', 5),
    (110, 'Pooja', 'IT', 73000, 'Mumbai', 4),
    (111, 'Vikas', 'HR', 52000, 'Pune', 3),
    (112, 'Nisha', 'Finance', 88000, 'Bangalore', 7),
    (113, 'Tarun', 'Sales', 46000, 'Chennai', 2),
    (114, 'Kavya', 'IT', 97000, 'Hyderabad', 9),
    (115, 'Manoj', 'Finance', 58000, 'Mumbai', 4);

---

 -- GROUP BY
**Query #1**

    -- Query 1: Find total salary department-wise. 
    SELECT department,SUM(salary) AS total_salary
    FROM Employees e
    GROUP BY department;

| department | total_salary |
| ---------- | ------------ |
| IT         | 382000       |
| HR         | 136000       |
| Finance    | 304000       |
| Sales      | 155000       |

---
**Query #2**

    -- Query 2: Find average salary in each department.
    SELECT department,AVG(SALARY) AS avg_salary
    FROM Employees
    GROUP BY department;

| department | avg_salary |
| ---------- | ---------- |
| IT         | 76400.0    |
| HR         | 45333.3333 |
| Finance    | 76000.0    |
| Sales      | 51666.6667 |

---
**Query #3**

    -- Query 3: Count employees in each city.
    SELECT city,COUNT(*) as employee_count
    FROM Employees
    GROUP BY city;

| city      | employee_count |
| --------- | -------------- |
| Hyderabad | 4              |
| Chennai   | 3              |
| Bangalore | 3              |
| Pune      | 2              |
| Mumbai    | 3              |

---
**Query #4**

    -- Query 4: Find maximum salary in each department.
    SELECT department,MAX(salary) AS max_salary
    FROM Employees
    GROUP BY department;

| department | max_salary |
| ---------- | ---------- |
| IT         | 97000      |
| HR         | 52000      |
| Finance    | 91000      |
| Sales      | 61000      |

---
**Query #5**

    -- Query 5: Find minimum experience department-wise.
    SELECT department,MIN(experience) AS min_experience
    FROM Employees
    GROUP BY department;

| department | min_experience |
| ---------- | -------------- |
| IT         | 3              |
| HR         | 2              |
| Finance    | 4              |
| Sales      | 2              |

---

