-- This Clause is use to group the row's that contain same values

CREATE DATABASE group_by_clause;
USE group_by_clause;

CREATE TABLE student(
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

	-- FIRST OPERATION 
SELECT city
FROM student
GROUP BY city;

	-- SECOND OPERATION
SELECT city, count(rollno)
FROM student
GROUP BY city;

	-- THIRD OPERATION
SELECT city,name, count(rollno)
FROM student
GROUP BY city,name;

	-- FORTH OPERATION
   --  IF YOU WANT TO FIND OUT THE AVERAGE OF THE MARKS OF STUDENT'S
SELECT city, avg(marks)
FROM student
GROUP BY city;