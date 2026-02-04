-- PostgreSQL: Create table example

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE
);
