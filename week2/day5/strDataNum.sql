**Schema (MySQL v5.7)**

    
    CREATE TABLE employee_payments (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    joining_date DATE
    );
    
    INSERT INTO employee_payments VALUES
    (1,'karthik','Data',75000.75,5000.50,'2019-03-15'),
    (2,'veena','HR',65000.40,4000.25,'2021-06-20'),
    (3,'ravi','Data',85000.90,6000.75,'2016-01-10'),
    (4,'anil','Finance',70000.10,NULL,'2020-09-01'),
    (5,'suresh','HR',60000.55,3000.30,'2022-11-25');
    

---

**Query #1**

    SELECT 
        emp_id,
    
        /* Name formatting */
        UPPER(emp_name) AS upper_name,
        LOWER(emp_name) AS lower_name,
    
        CONCAT(
            UPPER(LEFT(emp_name,1)),
            LOWER(SUBSTRING(emp_name,2))
        ) AS proper_name,
    
        department,
    
        /* Total income with NULL-safe bonus */
        ROUND(base_salary + COALESCE(bonus, 0)) AS total_income,
    
        /* Extract joining year */
        YEAR(joining_date) AS joining_year,
    
        /* Employee classification */
        CASE
            WHEN YEAR(CURDATE()) - YEAR(joining_date) > 7 
                THEN 'Senior'
    
            WHEN YEAR(CURDATE()) - YEAR(joining_date) BETWEEN 4 AND 7 
                THEN 'Mid'
    
            ELSE 'Junior'
        END AS employee_level
    
    FROM employee_payments;

| emp_id | upper_name | lower_name | proper_name | department | total_income | joining_year | employee_level |
| ------ | ---------- | ---------- | ----------- | ---------- | ------------ | ------------ | -------------- |
| 1      | KARTHIK    | karthik    | Karthik     | Data       | 80001        | 2019         | Mid            |
| 2      | VEENA      | veena      | Veena       | HR         | 69001        | 2021         | Mid            |
| 3      | RAVI       | ravi       | Ravi        | Data       | 91002        | 2016         | Senior         |
| 4      | ANIL       | anil       | Anil        | Finance    | 70000        | 2020         | Mid            |
| 5      | SURESH     | suresh     | Suresh      | HR         | 63001        | 2022         | Mid            |

---

[View on DB Fiddle](https://www.db-fiddle.com/)---





    

**Schema (MySQL v5.7)**

    CREATE TABLE orders_delivery (
    
    order_id INT,
    
    customer_name VARCHAR(50),
    
    order_date DATE,
    
    delivery_date DATE,
    
    order_amount DECIMAL(10,2)
    
    );
    
    
    
    INSERT INTO orders_delivery VALUES
    
    (101,'rajesh','2025-01-01','2025-01-05',12500.75),
    
    (102,'meena','2025-01-10','2025-01-10',8400.40),
    
    (103,'arun','2025-01-15','2025-01-20',15600.90),
    
    (104,'pooja','2025-01-18',NULL,9200.10);
    
    

---

**Query #2**

    SELECT
      order_id,
    
      UPPER(customer_name) AS customer_name_upper,
    
      order_date,
      delivery_date,
    
      DATEDIFF(
          COALESCE(delivery_date, CURDATE()),
          order_date
      ) AS delivery_days,
    
      COALESCE(delivery_date, CURDATE()) AS deliverydate_fixed,
    
      TRUNCATE(order_amount, 1) AS orderamount_truncated,
    
      CASE
          WHEN delivery_date IS NULL THEN 'Pending'
    
          WHEN DATEDIFF(delivery_date, order_date) = 0
               THEN 'Same-day'
    
          WHEN DATEDIFF(delivery_date, order_date) >= 3
               THEN 'Delayed'
    
          ELSE 'On-time'
      END AS delivery_status
    
    FROM orders_delivery;

| order_id | customer_name_upper | order_date | delivery_date | delivery_days | deliverydate_fixed | orderamount_truncated | delivery_status |
| -------- | ------------------- | ---------- | ------------- | ------------- | ------------------ | --------------------- | --------------- |
| 101      | RAJESH              | 2025-01-01 | 2025-01-05    | 4             | 2025-01-05         | 12500.7               | Delayed         |
| 102      | MEENA               | 2025-01-10 | 2025-01-10    | 0             | 2025-01-10         | 8400.4                | Same-day        |
| 103      | ARUN                | 2025-01-15 | 2025-01-20    | 5             | 2025-01-20         | 15600.9               | Delayed         |
| 104      | POOJA               | 2025-01-18 |               | 484           | 2026-05-17         | 9200.1                | Pending         |

---

[View on DB Fiddle](https://www.db-fiddle.com/)

