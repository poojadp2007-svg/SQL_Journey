-- ==========================================
-- Employee Management SQL Script
-- Demonstrates DDL & DML operations
-- Database: PostgreSQL
-- ==========================================

-- Create employee table
CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE,
    salary NUMERIC(10,2)
);

-- Insert employee records
INSERT INTO employee (employee_name, position, department, hire_date, salary)
VALUES
('Pooja Pawar', 'Data Analyst', 'Data Science', '2025-05-09', 65000.00),
('Rahul Sharma', 'Software Engineer', 'IT', '2024-08-15', 72000.00),
('Anjali Deshmukh', 'HR Executive', 'Human Resources', '2023-06-20', 45000.00),
('Amit Patil', 'Database Administrator', 'IT', '2022-11-10', 80000.00);

-- Update salary
UPDATE employee
SET salary = 70000.00
WHERE employee_name = 'Pooja Pawar';

-- Update position
UPDATE employee
SET position = 'Senior Data Analyst'
WHERE employee_name = 'Pooja Pawar';

-- View all employees
SELECT * FROM employee
ORDER BY employee_id;

-- Reset identity (use only for testing)
-- TRUNCATE TABLE employee RESTART IDENTITY;
