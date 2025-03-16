-- Q3:-> FIND THE MAXIMUM MARKS FROM THE STUDENTS OF DELHI

CREATE DATABASE sub_query_Example_3;
USE sub_query_Example_3;

CREATE TABLE student
(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    city VARCHAR(50)
);

INSERT INTO student
(rollno, name, marks, city)
VALUES
(101, "anil", 78, "Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan", 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

-- STEP1:-> FIND THE STUDENT OF DELHI
SELECT *
FROM student
WHERE city = "Delhi";

-- STEP2:-> FIND THEIR MAX MARKS USING THE SUBLIST IN STEP1
SELECT MAX(marks)
FROM (
SELECT *
FROM student
WHERE city = "Delhi"
) AS max_marks;