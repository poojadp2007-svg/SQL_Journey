/*
=========================================
   SQL Arithmetic & Logical Operations
   Author: Your Name
   Description: Basic arithmetic, logic,
                subqueries and ranking.
=========================================
*/

-- 1️⃣ Drop Table
DROP TABLE IF EXISTS Employees;

-- 2️⃣ Create Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT
);

-- 3️⃣ Insert Data
INSERT INTO Employees VALUES
(1, 'Amit', 80000, 5),
(2, 'Priya', 50000, 3),
(3, 'Rahul', 95000, 8),
(4, 'Sneha', 70000, 6),
(5, 'Kiran', 60000, 4);

-- =====================================
--        ARITHMETIC OPERATIONS
-- =====================================

-- 🔹 1. Annual Salary Calculation
SELECT name,
       salary,
       salary * 12 AS Annual_Salary
FROM Employees;

-- 🔹 2. Salary with 10% Bonus
SELECT name,
       salary,
       salary + (salary * 0.10) AS Salary_With_Bonus
FROM Employees;

-- =====================================
--        LOGICAL CONDITIONS
-- =====================================

-- 🔹 3. Employees with salary > 70000
SELECT *
FROM Employees
WHERE salary > 70000;

-- 🔹 4. Employees with even experience
SELECT *
FROM Employees
WHERE experience % 2 = 0;

-- =====================================
--        SUBQUERY
-- =====================================

-- 🔹 5. Employees earning above average salary
SELECT name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- =====================================
--        RANKING (Window Function)
-- =====================================

-- 🔹 6. Rank Employees by Salary
SELECT name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS Salary_Rank
FROM Employees;
