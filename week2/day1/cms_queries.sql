**Schema (MySQL v8)**

    
    -- =====================================================
    -- COLLEGE MANAGEMENT SYSTEM (CMS)
    -- COMPLETE PRACTICE DATABASE
    -- =====================================================
    
    DROP TABLE IF EXISTS Mark;
    DROP TABLE IF EXISTS Subject;
    DROP TABLE IF EXISTS Student;
    DROP TABLE IF EXISTS Staff;
    DROP TABLE IF EXISTS Department;
    
    CREATE TABLE Department (
        department_id INT PRIMARY KEY,
        department_name VARCHAR(50),
        department_block_number INT,
        yearly_budget DECIMAL(12,2)
    );
    
    CREATE TABLE Staff (
        staff_id INT PRIMARY KEY,
        staff_name VARCHAR(50),
        designation VARCHAR(30),
        salary DECIMAL(10,2),
        hire_date DATE,
        department_id INT,
        FOREIGN KEY (department_id) REFERENCES Department(department_id)
    );
    
    CREATE TABLE Student (
        student_id INT PRIMARY KEY,
        student_name VARCHAR(50),
        gender VARCHAR(10),
        city VARCHAR(50),
        admission_year INT,
        department_id INT,
        cgpa DECIMAL(3,2),
        FOREIGN KEY (department_id) REFERENCES Department(department_id)
    );
    
    CREATE TABLE Subject (
        subject_id INT PRIMARY KEY,
        subject_name VARCHAR(50),
        subject_code VARCHAR(20),
        semester INT,
        credits INT,
        staff_id INT,
        FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
    );
    
    CREATE TABLE Mark (
        student_id INT,
        subject_id INT,
        exam_type VARCHAR(20),
        marks INT,
        exam_date DATE,
        PRIMARY KEY(student_id, subject_id, exam_type),
        FOREIGN KEY (student_id) REFERENCES Student(student_id),
        FOREIGN KEY (subject_id) REFERENCES Subject(subject_id)
    );
    
    -- =====================================================
    -- INSERT DEPARTMENTS
    -- =====================================================
    
    INSERT INTO Department VALUES
    (1,'Computer Science',101,800000),
    (2,'Mechanical',102,600000),
    (3,'Electronics',103,550000),
    (4,'Civil',104,450000),
    (5,'Mathematics',105,300000),
    (6,NULL,106,200000),
    (7,'Biotechnology',NULL,NULL);
    
    -- =====================================================
    -- INSERT STAFF
    -- =====================================================
    
    INSERT INTO Staff VALUES
    (1,'Alice Johnson','Professor',95000,'2015-06-12',1),
    (2,'Bob Smith','Associate Professor',82000,'2017-09-01',1),
    (3,'Charlie Brown','Professor',91000,'2014-03-21',2),
    (4,'David Lee','Lecturer',55000,'2020-07-15',2),
    (5,'Eva Green','Professor',99000,'2013-11-05',3),
    (6,'Frank Hall','Lecturer',NULL,'2021-01-12',3),
    (7,'Grace Miller','HOD',120000,'2010-02-28',4),
    (8,NULL,'Lecturer',50000,'2022-08-18',NULL),
    (9,'Henry Ford','Assistant Professor',65000,NULL,5),
    (10,'Ivy Clark','Professor',98000,'2012-04-17',NULL);
    
    -- =====================================================
    -- INSERT STUDENTS
    -- =====================================================
    
    INSERT INTO Student VALUES
    (101,'John Doe','Male','New York',2021,1,8.7),
    (102,'Mary Jane','Female','Chicago',2020,1,9.1),
    (103,'Steve Rogers','Male','Dallas',2022,2,7.5),
    (104,'Natasha Romanoff','Female','Boston',2021,2,8.0),
    (105,'Bruce Wayne','Male','Gotham',2019,3,9.5),
    (106,'Clark Kent','Male','Metropolis',2020,3,6.9),
    (107,'Diana Prince','Female','Washington',2022,4,8.4),
    (108,'Peter Parker','Male','Queens',2021,4,NULL),
    (109,'Tony Stark','Male','Malibu',2019,1,9.8),
    (110,'Wanda Maximoff','Female','Chicago',2022,5,7.2),
    (111,'Barry Allen','Male',NULL,2023,5,6.5),
    (112,NULL,'Female','Seattle',2023,NULL,NULL),
    (113,'Scott Lang','Male','San Francisco',2021,NULL,5.8),
    (114,'Jean Grey','Female','New York',2020,6,8.8),
    (115,'Logan Howlett','Male','Denver',2022,7,7.7);
    
    -- =====================================================
    -- INSERT SUBJECTS
    -- =====================================================
    
    INSERT INTO Subject VALUES
    (201,'Database Systems','CS301',3,4,1),
    (202,'Operating Systems','CS302',3,4,2),
    (203,'Machine Design','ME201',4,3,3),
    (204,'Thermodynamics','ME202',4,4,4),
    (205,'Digital Electronics','EC301',5,4,5),
    (206,'Signals and Systems','EC302',5,3,6),
    (207,'Structural Engineering','CV401',6,4,7),
    (208,'Linear Algebra','MA101',1,3,9),
    (209,NULL,'GEN999',2,2,NULL),
    (210,'Artificial Intelligence','CS401',6,5,1);
    
    -- =====================================================
    -- INSERT MARKS
    -- =====================================================
    
    INSERT INTO Mark VALUES
    (101,201,'Mid',88,'2024-03-10'),
    (101,201,'Final',91,'2024-05-10'),
    (101,202,'Mid',75,'2024-03-11'),
    (102,201,'Mid',95,'2024-03-10'),
    (102,202,'Final',89,'2024-05-11'),
    (103,203,'Mid',66,'2024-03-09'),
    (103,204,'Final',72,'2024-05-12'),
    (104,203,'Final',81,'2024-05-12'),
    (105,205,'Mid',98,'2024-03-14'),
    (105,206,'Final',94,'2024-05-14'),
    (106,205,'Mid',54,'2024-03-14'),
    (106,206,'Final',61,'2024-05-14'),
    (107,207,'Mid',87,'2024-03-16'),
    (108,207,'Final',NULL,'2024-05-16'),
    (109,201,'Final',99,'2024-05-10'),
    (109,210,'Mid',97,'2024-03-20'),
    (110,208,'Mid',71,'2024-03-18'),
    (111,208,'Final',65,'2024-05-18'),
    (112,209,'Mid',NULL,'2024-03-21'),
    (113,210,'Final',44,'2024-05-20'),
    (114,208,'Mid',90,'2024-03-18'),
    (115,209,'Final',73,'2024-05-22');
    

---

**Query #1**

    -- 1. List all students along with their department names.
    SELECT s.student_id,s.student_name,d.department_name
    FROM Student s
    LEFT JOIN Department d
    ON d.department_id=s.department_id;

| student_id | student_name     | department_name  |
| ---------- | ---------------- | ---------------- |
| 101        | John Doe         | Computer Science |
| 102        | Mary Jane        | Computer Science |
| 103        | Steve Rogers     | Mechanical       |
| 104        | Natasha Romanoff | Mechanical       |
| 105        | Bruce Wayne      | Electronics      |
| 106        | Clark Kent       | Electronics      |
| 107        | Diana Prince     | Civil            |
| 108        | Peter Parker     | Civil            |
| 109        | Tony Stark       | Computer Science |
| 110        | Wanda Maximoff   | Mathematics      |
| 111        | Barry Allen      | Mathematics      |
| 112        |                  |                  |
| 113        | Scott Lang       |                  |
| 114        | Jean Grey        |                  |
| 115        | Logan Howlett    | Biotechnology    |

---
**Query #2**

    -- 2. Display all staff members and their department names, including staff without departments.
    SELECT s.staff_id,s.staff_name,d.department_name
    FROM Staff s
    LEFT JOIN Department d
    ON d.department_id=s.department_id;

| staff_id | staff_name    | department_name  |
| -------- | ------------- | ---------------- |
| 1        | Alice Johnson | Computer Science |
| 2        | Bob Smith     | Computer Science |
| 3        | Charlie Brown | Mechanical       |
| 4        | David Lee     | Mechanical       |
| 5        | Eva Green     | Electronics      |
| 6        | Frank Hall    | Electronics      |
| 7        | Grace Miller  | Civil            |
| 8        |               |                  |
| 9        | Henry Ford    | Mathematics      |
| 10       | Ivy Clark     |                  |

---
**Query #3**

    -- 3. Find all departments that currently have no students assigned.
    SELECT d.department_id,d.department_name
    FROM Department d
    LEFT JOIN Student s
    ON d.department_id=s.department_id
    WHERE s.student_id is null;

There are no results to be displayed.

---
**Query #4**

    -- 4. Show students who do not have any marks recorded.
    SELECT s.student_id,s.student_name
    FROM Student s
    LEFT JOIN Mark m
      ON s.student_id=m.student_id
    WHERE m.student_id is null;

There are no results to be displayed.

---
**Query #5**

    -- 5. Display subjects that are not assigned to any staff member.
    SELECT su.subject_id,su.subject_name
    FROM Subject su
    LEFT JOIN Staff st
    ON su.staff_id=st.staff_id
    WHERE st.staff_id is null;

| subject_id | subject_name |
| ---------- | ------------ |
| 209        |              |

---
**Query #6**

    -- 6. Find the average CGPA department-wise.
    SELECT d.department_id,d.department_name,AVG(s.cgpa) AS avg_cgpa
    FROM Department d
    LEFT JOIN Student s
    ON d.department_id=s.department_id
    GROUP BY d.department_id, d.department_name;

| department_id | department_name  | avg_cgpa |
| ------------- | ---------------- | -------- |
| 1             | Computer Science | 9.2      |
| 2             | Mechanical       | 7.75     |
| 3             | Electronics      | 8.2      |
| 4             | Civil            | 8.4      |
| 5             | Mathematics      | 6.85     |
| 6             |                  | 8.8      |
| 7             | Biotechnology    | 7.7      |

---
**Query #7**

    -- 7. Display departments where the average CGPA is greater than 8.0.
    SELECT d.department_id,d.department_name,AVG(s.cgpa) AS avg_cgpa
    FROM Department d
    LEFT JOIN Student s
    ON d.department_id=s.department_id
    GROUP BY d.department_id, d.department_name
    HAVING avg_cgpa>8.0;

| department_id | department_name  | avg_cgpa |
| ------------- | ---------------- | -------- |
| 1             | Computer Science | 9.2      |
| 3             | Electronics      | 8.2      |
| 4             | Civil            | 8.4      |
| 6             |                  | 8.8      |

---
**Query #8**

    -- 8. Find the total number of students in each department.
    SELECT d.department_id,d.department_name,COUNT(s.student_id) AS student_count
    FROM Department d
    LEFT JOIN Student s
    ON d.department_id=s.department_id
    GROUP BY d.department_id, d.department_name

| department_id | department_name  | student_count |
| ------------- | ---------------- | ------------- |
| 1             | Computer Science | 3             |
| 2             | Mechanical       | 2             |
| 3             | Electronics      | 2             |
| 4             | Civil            | 2             |
| 5             | Mathematics      | 2             |
| 6             |                  | 1             |
| 7             | Biotechnology    | 1             |

---

**Query #9**

    -- 9. Display the highest and lowest marks scored in each subject.
    SELECT s.subject_id,s.subject_name,MAX(m.marks) AS highest_mark,MIN(m.marks) as lowest_mark
    FROM Subject s
    LEFT JOIN Mark m
    ON s.subject_id=m.subject_id
    GROUP BY s.subject_id,s.subject_name

| subject_id | subject_name            | highest_mark | lowest_mark |
| ---------- | ----------------------- | ------------ | ----------- |
| 201        | Database Systems        | 99           | 88          |
| 202        | Operating Systems       | 89           | 75          |
| 203        | Machine Design          | 81           | 66          |
| 204        | Thermodynamics          | 72           | 72          |
| 205        | Digital Electronics     | 98           | 54          |
| 206        | Signals and Systems     | 94           | 61          |
| 207        | Structural Engineering  | 87           | 87          |
| 208        | Linear Algebra          | 90           | 65          |
| 209        |                         | 73           | 73          |
| 210        | Artificial Intelligence | 97           | 44          |

---

**Query #10**

    -- 10. Find students who scored more than 90 in any exam.
    SELECT s.student_id,s.student_name,m.marks 
    FROM Student s
    LEFT JOIN Mark m
    ON s.student_id=m.student_id
    WHERE m.marks>90;

| student_id | student_name | marks |
| ---------- | ------------ | ----- |
| 101        | John Doe     | 91    |
| 102        | Mary Jane    | 95    |
| 105        | Bruce Wayne  | 98    |
| 105        | Bruce Wayne  | 94    |
| 109        | Tony Stark   | 99    |
| 109        | Tony Stark   | 97    |

---

**Query #11**

    -- 11. Display the names of students who belong to the Computer Science department.
    SELECT s.student_name
    FROM Student s
    LEFT JOIN Department d
    ON s.department_id=d.department_id
    WHERE d.department_name='Computer Science';

| student_name |
| ------------ |
| John Doe     |
| Mary Jane    |
| Tony Stark   |

---
  
**Query #12**

    -- 12. Find the number of subjects handled by each staff member.
    SELECT s.staff_id,s.staff_name,COUNT(su.subject_id) AS subject_count
    FROM Staff s
    LEFT JOIN Subject su
    ON s.staff_id=su.staff_id
    GROUP BY s.staff_id,s.staff_name;

| staff_id | staff_name    | subject_count |
| -------- | ------------- | ------------- |
| 1        | Alice Johnson | 2             |
| 2        | Bob Smith     | 1             |
| 3        | Charlie Brown | 1             |
| 4        | David Lee     | 1             |
| 5        | Eva Green     | 1             |
| 6        | Frank Hall    | 1             |
| 7        | Grace Miller  | 1             |
| 8        |               | 0             |
| 9        | Henry Ford    | 1             |
| 10       | Ivy Clark     | 0             |

---

**Query #13**

    -- 13. Display students along with the total marks they obtained across all subjects.
    SELECT s.student_id,s.student_name,SUM(m.marks) AS total_marks
    FROM Student s
    LEFT JOIN Mark m
    ON s.student_id=m.student_id
    GROUP BY s.student_id, s.student_name;

| student_id | student_name     | total_marks |
| ---------- | ---------------- | ----------- |
| 101        | John Doe         | 254         |
| 102        | Mary Jane        | 184         |
| 103        | Steve Rogers     | 138         |
| 104        | Natasha Romanoff | 81          |
| 105        | Bruce Wayne      | 192         |
| 106        | Clark Kent       | 115         |
| 107        | Diana Prince     | 87          |
| 108        | Peter Parker     |             |
| 109        | Tony Stark       | 196         |
| 110        | Wanda Maximoff   | 71          |
| 111        | Barry Allen      | 65          |
| 112        |                  |             |
| 113        | Scott Lang       | 44          |
| 114        | Jean Grey        | 90          |
| 115        | Logan Howlett    | 73          |

---

**Query #14**

    -- 14. Find departments with more than 2 staff members.
    SELECT d.department_id,d.department_name,COUNT(s.staff_id) as staff_count
    FROM Department d
    LEFT JOIN Staff s
    ON d.department_id=s.department_id
    GROUP BY d.department_id,d.department_name
    HAVING staff_count>2;

There are no results to be displayed.

---

**Query #15**

    -- 15. Display students whose CGPA is above the average CGPA.
    SELECT student_id,student_name,cgpa
    FROM Student
    WHERE cgpa>(
      SELECT AVG(cgpa) FROM Student
    );

| student_id | student_name     | cgpa |
| ---------- | ---------------- | ---- |
| 101        | John Doe         | 8.7  |
| 102        | Mary Jane        | 9.1  |
| 104        | Natasha Romanoff | 8.0  |
| 105        | Bruce Wayne      | 9.5  |
| 107        | Diana Prince     | 8.4  |
| 109        | Tony Stark       | 9.8  |
| 114        | Jean Grey        | 8.8  |

---
**Query #16**

    -- 16. Find staff members earning more than the average salary of their department.
    SELECT staff_id,staff_name,salary
    FROM Staff
    WHERE salary>(
      SELECT AVG(salary) FROM Staff
    );

| staff_id | staff_name    | salary   |
| -------- | ------------- | -------- |
| 1        | Alice Johnson | 95000.0  |
| 3        | Charlie Brown | 91000.0  |
| 5        | Eva Green     | 99000.0  |
| 7        | Grace Miller  | 120000.0 |
| 10       | Ivy Clark     | 98000.0  |

---

**Query #17**

    -- 17. Display the second highest salary among staff members.
    SELECT staff_id,staff_name,salary
    FROM Staff
    WHERE salary=(
      SELECT MAX(salary)
      FROM Staff
      WHERE salary<(SELECT MAX(salary) FROM Staff)
    );

| staff_id | staff_name | salary  |
| -------- | ---------- | ------- |
| 5        | Eva Green  | 99000.0 |

---
**Query #18**

    -- 18. Find students who scored the highest marks in each subject.
    SELECT DISTINCT s.student_id, s.student_name, sub.subject_id, sub.subject_name, m.marks
    FROM Student s
    JOIN Mark m
        ON s.student_id = m.student_id
    JOIN Subject sub
        ON m.subject_id = sub.subject_id
    WHERE m.marks = (
        SELECT MAX(m2.marks)
        FROM Mark m2
        WHERE m2.subject_id = m.subject_id
    );

| student_id | student_name     | subject_id | subject_name            | marks |
| ---------- | ---------------- | ---------- | ----------------------- | ----- |
| 102        | Mary Jane        | 202        | Operating Systems       | 89    |
| 103        | Steve Rogers     | 204        | Thermodynamics          | 72    |
| 104        | Natasha Romanoff | 203        | Machine Design          | 81    |
| 105        | Bruce Wayne      | 205        | Digital Electronics     | 98    |
| 105        | Bruce Wayne      | 206        | Signals and Systems     | 94    |
| 107        | Diana Prince     | 207        | Structural Engineering  | 87    |
| 109        | Tony Stark       | 201        | Database Systems        | 99    |
| 109        | Tony Stark       | 210        | Artificial Intelligence | 97    |
| 114        | Jean Grey        | 208        | Linear Algebra          | 90    |
| 115        | Logan Howlett    | 209        |                         | 73    |

---
**Query #19**

    -- 19. Display all students and their marks, including students without marks.
    SELECT s.student_id,s.student_name,m.marks
    FROM Student s
    LEFT JOIN Mark m
    ON s.student_id=m.student_id

| student_id | student_name     | marks |
| ---------- | ---------------- | ----- |
| 101        | John Doe         | 75    |
| 101        | John Doe         | 88    |
| 101        | John Doe         | 91    |
| 102        | Mary Jane        | 89    |
| 102        | Mary Jane        | 95    |
| 103        | Steve Rogers     | 72    |
| 103        | Steve Rogers     | 66    |
| 104        | Natasha Romanoff | 81    |
| 105        | Bruce Wayne      | 94    |
| 105        | Bruce Wayne      | 98    |
| 106        | Clark Kent       | 61    |
| 106        | Clark Kent       | 54    |
| 107        | Diana Prince     | 87    |
| 108        | Peter Parker     |       |
| 109        | Tony Stark       | 97    |
| 109        | Tony Stark       | 99    |
| 110        | Wanda Maximoff   | 71    |
| 111        | Barry Allen      | 65    |
| 112        |                  |       |
| 113        | Scott Lang       | 44    |
| 114        | Jean Grey        | 90    |
| 115        | Logan Howlett    | 73    |

---

**Query #20**

    -- 20. Find subjects where the average marks are below 70.
    SELECT s.subject_id, s.subject_name, AVG(m.marks) AS avg_marks
    FROM Subject s
    LEFT JOIN Mark m
    ON s.subject_id = m.subject_id
    GROUP BY s.subject_id, s.subject_name
    HAVING AVG(m.marks) < 70;

There are no results to be displayed.

---
**Query #21**

    -- 21. Display students ordered by CGPA in descending order.
    SELECT * FROM Student
    ORDER BY cgpa DESC;

| student_id | student_name     | gender | city          | admission_year | department_id | cgpa |
| ---------- | ---------------- | ------ | ------------- | -------------- | ------------- | ---- |
| 109        | Tony Stark       | Male   | Malibu        | 2019           | 1             | 9.8  |
| 105        | Bruce Wayne      | Male   | Gotham        | 2019           | 3             | 9.5  |
| 102        | Mary Jane        | Female | Chicago       | 2020           | 1             | 9.1  |
| 114        | Jean Grey        | Female | New York      | 2020           | 6             | 8.8  |
| 101        | John Doe         | Male   | New York      | 2021           | 1             | 8.7  |
| 107        | Diana Prince     | Female | Washington    | 2022           | 4             | 8.4  |
| 104        | Natasha Romanoff | Female | Boston        | 2021           | 2             | 8.0  |
| 115        | Logan Howlett    | Male   | Denver        | 2022           | 7             | 7.7  |
| 103        | Steve Rogers     | Male   | Dallas        | 2022           | 2             | 7.5  |
| 110        | Wanda Maximoff   | Female | Chicago       | 2022           | 5             | 7.2  |
| 106        | Clark Kent       | Male   | Metropolis    | 2020           | 3             | 6.9  |
| 111        | Barry Allen      | Male   |               | 2023           | 5             | 6.5  |
| 113        | Scott Lang       | Male   | San Francisco | 2021           |               | 5.8  |
| 108        | Peter Parker     | Male   | Queens        | 2021           | 4             |      |
| 112        |                  | Female | Seattle       | 2023           |               |      |

---
**Query #22**

    -- 22. Find the total salary expenditure department-wise.
    SELECT d.department_id,d.department_name,SUM(s.salary) AS total_salary
    FROM Department d
    LEFT JOIN Staff s
    ON d.department_id=s.department_id
    GROUP BY d.department_id,d.department_name;

| department_id | department_name  | total_salary |
| ------------- | ---------------- | ------------ |
| 1             | Computer Science | 177000.0     |
| 2             | Mechanical       | 146000.0     |
| 3             | Electronics      | 99000.0      |
| 4             | Civil            | 120000.0     |
| 5             | Mathematics      | 65000.0      |
| 6             |                  |              |
| 7             | Biotechnology    |              |

---
**Query #23**

    -- 23. Display departments where the total salary exceeds 200000.
    SELECT d.department_id,d.department_name,SUM(s.salary) AS total_salary
    FROM Department d
    LEFT JOIN Staff s
    ON d.department_id=s.department_id
    GROUP BY d.department_id,d.department_name
    HAVING total_salary>200000;

There are no results to be displayed.

---
**Query #24**

    -- 24. Find students admitted after 2021 and having CGPA above 7.5.
    SELECT * FROM Student
    WHERE admission_year=2021 and cgpa>7.5;

| student_id | student_name     | gender | city     | admission_year | department_id | cgpa |
| ---------- | ---------------- | ------ | -------- | -------------- | ------------- | ---- |
| 101        | John Doe         | Male   | New York | 2021           | 1             | 8.7  |
| 104        | Natasha Romanoff | Female | Boston   | 2021           | 2             | 8.0  |

---
**Query #25**

    -- 25. Display the number of students admitted each year.
    SELECT admission_year,COUNT(*) AS student_count
    FROM Student
    GROUP BY admission_year;

| admission_year | student_count |
| -------------- | ------------- |
| 2021           | 4             |
| 2020           | 3             |
| 2022           | 4             |
| 2019           | 2             |
| 2023           | 2             |

---
**Query #26**

    -- 26. Find the city with the maximum number of students.
    SELECT city,COUNT(*) AS student_count
    FROM Student
    GROUP BY city
    ORDER BY student_count DESC
    LIMIT 1;

| city     | student_count |
| -------- | ------------- |
| New York | 2             |

---
**Query #27**

    -- 27. Display all departments and their staff count, including empty departments.
    SELECT d.department_id,d.department_name,COUNT(s.staff_id) AS staff_count
    FROM Department d
    LEFT JOIN Staff s
    ON d.department_id=s.department_id
    GROUP BY d.department_id;

| department_id | department_name  | staff_count |
| ------------- | ---------------- | ----------- |
| 1             | Computer Science | 2           |
| 2             | Mechanical       | 2           |
| 3             | Electronics      | 2           |
| 4             | Civil            | 1           |
| 5             | Mathematics      | 1           |
| 6             |                  | 0           |
| 7             | Biotechnology    | 0           |

---
**Query #28**

    -- 28. Find students who have failed in at least one subject (marks < 50).
    SELECT DISTINCT s.student_id,s.student_name
    FROM Student s
    LEFT JOIN Mark m
    ON s.student_id=m.student_id
    WHERE m.marks<50;

| student_id | student_name |
| ---------- | ------------ |
| 113        | Scott Lang   |

---
**Query #29**

    -- 29. Display staff hired before 2018.
    SELECT staff_id,staff_name,YEAR(hire_date)
    FROM Staff
    WHERE YEAR(hire_date)<2018;

| staff_id | staff_name    | YEAR(hire_date) |
| -------- | ------------- | --------------- |
| 1        | Alice Johnson | 2015            |
| 2        | Bob Smith     | 2017            |
| 3        | Charlie Brown | 2014            |
| 5        | Eva Green     | 2013            |
| 7        | Grace Miller  | 2010            |
| 10       | Ivy Clark     | 2012            |

---
**Query #30**

    -- 30. Find departments where no staff salary is recorded as NULL.
    SELECT d.department_id,d.department_name
    FROM Department d
    LEFT JOIN Staff s
    ON d.department_id=s.department_id
    WHERE salary is not null
    GROUP BY d.department_id,d.department_name;

| department_id | department_name  |
| ------------- | ---------------- |
| 1             | Computer Science |
| 2             | Mechanical       |
| 3             | Electronics      |
| 4             | Civil            |
| 5             | Mathematics      |

---

