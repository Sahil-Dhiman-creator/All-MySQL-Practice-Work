CREATE DATABASE order_by_clause;
USE order_by_clause;

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

 -- IF YOU WANT TO SEE THE DATA IN THE ASSENDING ORDER
 SELECT *
 FROM student
 ORDER BY city ASC;
 
  -- IF YOU WANT TO SEE THE DATA IN THE DESCENDING ORDER
SELECT *
FROM student
ORDER BY marks DESC;

	-- IF YOU WANT TO SEE THE DATA OF TOP-3 STUDENT'S
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;