-- Update Query is used to Update the existing Row in the given Table

CREATE DATABASE update_query; 
USE update_query;

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

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

-- UPDATE THE MARKS IN THE TABLE
UPDATE student
SET marks = 82
WHERE rollno = 105;

-- ALSO UPDATE THE GRADE OF THIS STUDENT
UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

-- IF YOU WANT TO INCREASE THE MARKS OF ALL STUDENT'S BY 1
 UPDATE student
 SET marks = marks +1;
  
SELECT * FROM student;