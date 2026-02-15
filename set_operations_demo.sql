/*
====================================================
  SQL Set Operations Demo
  Author: Your Name
  Description: Demonstration of UNION, UNION ALL,
               INTERSECT, and EXCEPT
====================================================
*/

-- ============================================
-- 1️⃣ Drop Tables (if already exist)
-- ============================================

DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Teachers;

-- ============================================
-- 2️⃣ Create Tables
-- ============================================

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50)
);

-- ============================================
-- 3️⃣ Insert Sample Data
-- ============================================

INSERT INTO Students VALUES
(1, 'Amit', 'Computer Science'),
(2, 'Priya', 'Electronics'),
(3, 'Rahul', 'Mechanical'),
(4, 'Sneha', 'Computer Science');

INSERT INTO Teachers VALUES
(101, 'Rahul', 'Mechanical'),
(102, 'Kiran', 'Computer Science'),
(103, 'Amit', 'Computer Science'),
(104, 'Meena', 'Civil');

-- ============================================
-- 4️⃣ SET OPERATIONS
-- ============================================

-- 🔹 UNION (Removes duplicates)
SELECT name FROM Students
UNION
SELECT name FROM Teachers;

-- 🔹 UNION ALL (Keeps duplicates)
SELECT name FROM Students
UNION ALL
SELECT name FROM Teachers;

-- 🔹 INTERSECT (Common names)
SELECT name FROM Students
INTERSECT
SELECT name FROM Teachers;

-- 🔹 EXCEPT (Students not in Teachers)
SELECT name FROM Students
EXCEPT
SELECT name FROM Teachers;

-- For Oracle users, replace EXCEPT with:
-- SELECT name FROM Students
-- MINUS
-- SELECT name FROM Teachers;
