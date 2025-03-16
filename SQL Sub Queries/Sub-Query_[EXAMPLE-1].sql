-- Q1:-> GET NAMES OF ALL STUDENTS WHO SCORED MORE THAN CLASS AVERAGE.

CREATE DATABASE sub_query_Example_1;
USE sub_query_Example_1;

CREATE TABLE student
(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL
);

INSERT INTO student
(rollno, name, marks)
VALUES
(101, "anil", 78),
(102, "bhumika", 93),
(103, "chetan", 85),
(104, "dhruv", 96),
(105, "emanuel", 92),
(106, "farah", 82);

-- STEP-1:-> FINDING THE AVERAGE OF CLASS
SELECT AVG(marks)
FROM student;

-- STEP-2:-> FIND THE NAMES OF STUDENTS WITH MARKS > AVERAGE
SELECT name, marks
FROM student
WHERE marks > 87.66;

-- IF YOU WANT TO COMBINE THE [STEP-1 AND STEP-2] SO WE USE SUB-QUERIES
-- THIS IS A DYNAMIC-QUERY/DYNAMIC-PROCESS
SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);