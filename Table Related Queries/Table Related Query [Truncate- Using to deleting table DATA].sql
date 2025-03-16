-- [TRUNCATE] IS A TYPE OF QUESRY THAT WAS USE TO DELETE THE WHOLE DATA OF A TABLE....
-- THEIR ARE THE DIFFERENCE IN [TRUNCATE TABLE] AND [DROP TABLE]
-- 1:-> [DROP TABLE] IS USED TO DROP THE ENTIRE TABLE 
-- 2:-> [TRUNCATE TABLE] IS USED TO DELETE THE WHOLE DATA OF THE GIVEN TABLE IT IS NOT COMPLETLY DELETE THE TABLE


CREATE DATABASE truncate_query;
USE truncate_query;

CREATE TABLE student
(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
	marks INT NOT NULL,
    grade VARCHAR (3),
    city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, " anil", 78, "C", "PUNE"),
(102, "bhumika", 93, "A", "MUMBAI"),
(103, "chetan", 85, "B", "MUMBAI"),
(104, "dhruv", 96, "A", "DELHI"),
(105, "emanule", 12, "F", "DELHI"),
(106, "farah", 82, "B", "DELHI");

TRUNCATE TABLE student;

SELECT * FROM student;