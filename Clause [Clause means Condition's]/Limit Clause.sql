CREATE DATABASE limit_clause;
USE limit_clause;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR( 50),
marks VARCHAR(3),
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika",93, "A", "Mumbai"),
(103, "chetan",85, "B", "Mumbai"),
(104, "dhruv",96, "A", "Delhi"),
(105, "emanuel",12, "F", "Delhi");

-- LIMIT QUERY IS APPLY ON THE ROW'S 
		-- CONDITION-1
-- IF YOU WANT TO SEE THE SPECIFIC AMOUNT OF DATA FROM THE GIVE TABLE, THEN IN THIS CASE WE USE LIMIT QUERY
SELECT *
FROM student
LIMIT 3;

		-- CONDITION-2
SELECT *
FROM student
WHERE marks > 75
LIMIT 3;