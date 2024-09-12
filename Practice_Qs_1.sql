CREATE DATABASE IF NOT EXISTS Company_emp;
USE Company_emp;

CREATE TABLE employee
(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE salary
(
	id INT PRIMARY KEY,
    salary NUMERIC
);

INSERT INTO employee (id, name) VALUES
(101, 'Alice Johnson'),
(102, 'Bob Williams'),
(103, 'Charlie Brown'),
(104, 'Diana Evans'),
(105, 'Edward Harris');


INSERT INTO salary (id, salary) VALUES
(103, 60000),
(102, 55000),
(105, 50000),
(104, 70000),
(106, 65000);
        
SELECT * FROM employee;
SELECT * FROM salary;

SELECT * FROM employee
LEFT JOIN salary
ON employee.id = salary.id
UNION
SELECT * FROM employee
RIGHT JOIN salary
ON employee.id = salary.id;


