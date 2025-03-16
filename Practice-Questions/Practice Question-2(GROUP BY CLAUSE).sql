-- WRITE A QUERY TO FIND AVERAGE MARKS IN EACH CITY IN ASCENDING ORDER

CREATE DATABASE practice_question_of_Group_By_Clause;
USE practice_question_of_Group_By_Clause;

CREATE TABLE student
(
	rollno INT PRIMARY KEY, 
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(3),
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

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY city ASC;