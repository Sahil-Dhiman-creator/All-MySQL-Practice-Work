CREATE DATABASE delete_query;
USE delete_query;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"anil", 78,"C","Pune"),
(102,"bhumika", 93,"A","Mumbai"),
(103,"chetan", 85,"B","Mumbai"),
(104,"dhruv", 96,"A","Delhi"),
(105,"emanuel", 12,"F","Delhi"),
(106,"farah", 82,"B","Delhi");

DELETE FROM student
WHERE marks < 33;

-- IF YOU WANT TO DELETE THE ENTIER DATA OF A GIVEN TABLE
DELETE FROM student;

-- UPDATE THE YARKS IN THE TABLE
UPDATE student
SET marks = 82
WHERE rollno = 105;

SELECT * FROM student;