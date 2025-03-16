-- [JOIN] IS USED TO COMBINE ROWS FROM TOW OR MORE TABLES, BASED ON A RELATED COLUMN BETWEEN THEM..... 
-- THEIR ARE DIFFERENT TYPES OF [JOINS]
	--  1:-> INNER JOIN :-> IT'S RETURNS A [COMMON INFORMATION FROM BOTH THE TABLE'S]
	-- 	2:-> LEFT JOIN  :-> IT'S RETURNS ALL RECORDS FROM THE LEFT TABLE AND MATCHED RECORDS THAT WAS PRESENT IN THE RIGHT TABLE 
	-- 	3:-> RIGHT JOIN :-> IT'S RETURNS ALL RECORDS FROM THE RIGHT TABLE AND MATCHED RECORDS THAT WAS PRESENT IN THE LEFT TABLE 
	-- 	4:-> FULL JOIN
 
	-- NUMBER-2,3,4 THESE JOINS ARE CALLED [OUTER JOINS]
    
CREATE DATABASE full_join;
USE full_join;

CREATE TABLE full_join_student
(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

INSERT INTO full_join_student
(student_id, student_name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");

CREATE TABLE full_join_course
(
	student_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO full_join_course
(student_id, course_name)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT *
FROM full_join_student
LEFT JOIN full_join_course
ON full_join_student.student_id = full_join_course.student_id
UNION
SELECT *
FROM full_join_student
RIGHT JOIN full_join_course
ON full_join_student.student_id = full_join_course.student_id;