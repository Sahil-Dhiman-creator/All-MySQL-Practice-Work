-- [JOIN] IS USED TO COMBINE ROWS FROM TOW OR MORE TABLES, BASED ON A RELATED COLUMN BETWEEN THEM..... 
-- THEIR ARE DIFFERENT TYPES OF [JOINS]
	--  1:-> INNER JOIN :-> ITS RETURNS A [COMMON INFORMATION FROM BOTH THE TABLE'S]
	-- 	2:-> LEFT JOIN     
	-- 	3:-> RIGHT JOIN
	-- 	4:-> FULL JOIN
 
	-- NUMBER-2,3,4 THESE JOINS ARE CALLED [OUTER JOINS]
 
CREATE DATABASE inner_join;
USE inner_join;

CREATE TABLE inner_join_student
(
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO inner_join_student
(student_id, name)
VALUES
(101, "ADAM"),
(102, "BOB"),
(103, "CASEY");

CREATE TABLE inner_join_course
(
	course_id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO inner_join_course
(course_id, course)
VALUES
(102, "ENGLISH"),
(105, "MATH"),
(103, "SCIENCE"),
(107, "COMPUTER SCIENCE");


SELECT *
FROM inner_join_student
INNER JOIN inner_join_course
ON inner_join_student.student_id = inner_join_course.course_id;
