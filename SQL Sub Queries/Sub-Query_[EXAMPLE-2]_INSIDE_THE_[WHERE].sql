-- Q2:-> FIND NAMES OF ALL STUDENTS WITH EVEN ROLL NUMBERS.

CREATE DATABASE sub_query_Example_2;
USE sub_query_Example_2;

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

-- STPE1:-> FIND THE EVEN ROLL NUMBERS
SELECT rollno
FROM student
WHERE rollno % 2 = 0;

-- STEP2:-> FIND THE NAMES OF STUDENT WITH EVEN ROLL-NUMBERS
SELECT name, rollno
FROM student
WHERE rollno IN (102,104,106);

-- IF YOU TO COMBINE THE [STEP-I AND STEP-2] SO WE USE SUB-QUERIES
-- THIS IS A DYNAMIC-QUERY/DYNAMIC-PROCESS
SELECT name, rollno
FROM student
WHERE rollno IN 
(
	SELECT rollno
	FROM student
	WHERE rollno % 2 = 0
);