CREATE DATABASE college;
USE college;

create table student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);


INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruve",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

ALTER TABLE student
CHANGE name fullname varchar(50);

DELETE FROM student
WHERE marks < 80;


ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;

SELECT city, AVG(marks) FROM student
GROUP BY city
ORDER BY AVG(marks) DESC;

CREATE TABLE payment(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mode VARCHAR(50) NOT NULL,
    city VARCHAR(50)
);

INSERT INTO payment 
(customer_id, customer_name, mode, city) 
VALUES
(101, 'John Doe', 'Netbanking', 'Portland'),
(102, 'Jane Smith', 'Credit Card', 'Miami'),
(103, 'Michael Johnson', 'Credit Card', 'Seattle'),
(104, 'Emily Davis', 'Netbanking', 'Denver'),
(105, 'David Wilson', 'Credit Card', 'New York'),
(106, 'John Doe', 'Debit Card', 'Minneapolic'),
(107, 'Jane Smith', 'Debit Card', 'Phionex'),
(108, 'Michael Johnson', 'Netbanking', 'Boston'),
(109, 'Emily Davis', 'Netbanking', 'Nashville'),
(110, 'David Wilson', 'Credit Card', 'Boston');

SELECT * FROM payment;

SELECT mode,COUNT(customer_name)FROM payment
GROUP BY mode;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "A"
WHERE grade = "O";

SELECT * FROM student;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
(id,name)
VALUES
(101, "Science"),
(102, "Maths"),
(103, "English"),
(104, "Hindi");


UPDATE dept
SET id = 105
WHERE id = 104;


SELECT * FROM dept;


CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
(id,name,dept_id)
VALUES
(101, "Adam",102),
(102, "Bob",101),
(103, "Casey",104),
(104, "Eve",103);

SELECT * FROM teacher;



















