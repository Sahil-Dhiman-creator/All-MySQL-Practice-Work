-- Q:-> In the student table :
-- 		a. Change the name of column "name" to "full_name"
--      b. Delete all the students who scored marks less than 80
--      c. Delete the column for grades

CREATE DATABASE truncate_table_practice_question;
USE truncate_table_practice_question;

CREATE TABLE student
( 
	roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(3),
    city VARCHAR(20)
);

INSERT INTO student
(roll_no, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SET SQL_SAFE_UPDATES = 0;

-- SOLVING PART-A
ALTER TABLE student
CHANGE name full_name VARCHAR(50);

-- SOLVING PART-B
DELETE FROM student
WHERE marks < 80;

-- SOLVING PART-C
ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;