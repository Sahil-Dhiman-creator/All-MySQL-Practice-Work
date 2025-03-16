-- Aggregate Functions are the tpye of function's that perform a calculation on a set of values, and return a single value

CREATE DATABASE aggregate_functions;
USE aggregate_functions;

CREATE TABLE student
(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "PUNE"),
(102, "bhumika", 93, "A", "MUMBAI"),
(103, "chetan", 85, "B", "MUMBAI"),
(104, "dhruv", 96, "A", "DELHI"),
(105, "emanuel", 12, "F", "DELHI"),
(106, "farah", 82, "B", "DELHI");

-- IF YOU WANT TO SEE THE MAXIMUM MARKS FROM THE GIVEN TABLE
SELECT MAX(marks)
FROM student;

-- IF YOU WANT TO SEE THE MINIMUM MARKS FROM THE GIVEN TABLE
SELECT MIN(marks)
FROM student;

-- IF YOU WANT TO SEE THE AGERAGE OF OUR [STUDENT] CLASS
SELECT AVG(marks)
FROM student;

-- IF YOU WANT TO SEE HOW MANY STUDENT/EMPLOYEE IN OUR CLASS/OFFICE
SELECT COUNT(rollno)
FROM student;