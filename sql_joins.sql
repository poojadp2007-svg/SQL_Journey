-- =========================================
-- SQL JOIN COMPLETE EXAMPLE
-- =========================================

-- =========================================
-- CREATE TABLES
-- =========================================

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- =========================================
-- INSERT SAMPLE DATA
-- =========================================

INSERT INTO Students VALUES (1, 'Amit', 101);
INSERT INTO Students VALUES (2, 'Pooja', 102);
INSERT INTO Students VALUES (3, 'Rahul', 103);
INSERT INTO Students VALUES (4, 'Sneha', NULL);

INSERT INTO Courses VALUES (101, 'Java');
INSERT INTO Courses VALUES (102, 'Python');
INSERT INTO Courses VALUES (104, 'C++');

-- =========================================
-- 1. INNER JOIN
-- Shows only matching records
-- =========================================

SELECT S.student_id, S.name, C.course_name
FROM Students S
INNER JOIN Courses C
ON S.course_id = C.course_id;

-- =========================================
-- 2. LEFT JOIN
-- Shows all students + matching courses
-- =========================================

SELECT S.student_id, S.name, C.course_name
FROM Students S
LEFT JOIN Courses C
ON S.course_id = C.course_id;

-- =========================================
-- 3. RIGHT JOIN
-- Shows all courses + matching students
-- =========================================

SELECT S.student_id, S.name, C.course_name
FROM Students S
RIGHT JOIN Courses C
ON S.course_id = C.course_id;

-- =========================================
-- 4. FULL OUTER JOIN
-- (May not work in MySQL)
-- =========================================

SELECT S.student_id, S.name, C.course_name
FROM Students S
FULL OUTER JOIN Courses C
ON S.course_id = C.course_id;

-- =========================================
-- 5. CROSS JOIN
-- Shows all combinations
-- =========================================

SELECT S.name, C.course_name
FROM Students S
CROSS JOIN Courses C;

-- =========================================
-- 6. SELF JOIN EXAMPLE
-- =========================================

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO Employees VALUES (1, 'Raj', NULL);
INSERT INTO Employees VALUES (2, 'Simran', 1);
INSERT INTO Employees VALUES (3, 'Karan', 1);

SELECT E.name AS Employee, M.name AS Manager
FROM Employees E
JOIN Employees M
ON E.manager_id = M.employee_id;

-- =========================================
-- END OF FILE
-- =========================================
