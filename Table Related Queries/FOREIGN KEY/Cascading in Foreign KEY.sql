-- CASCADING MEANS If there is a change in one place, there should be a change in the other place as well

-- THERE ARE TWO TYPES OF CASCADING IN FOREIGN KEY
-- 1:-> On Update Cascading
-- 2:-> On Delete Cascading

CREATE DATABASE cascade_in_foregin_key;
USE cascade_in_foregin_key;

CREATE TABLE student
(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE department
(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO department
VALUES
(101,"English"),
(102,"IT");

-- IN FUTURE THE ID OF IT DEPARTMENT IS CHANGED
UPDATE department
SET id = 103
WHERE id = 102;

-- IN FUTURE THE ID OF IT DEPARTMENT IS CHANGED
UPDATE department
SET id = 111
WHERE id = 101;

SELECT * FROM department;

CREATE TABLE teacher
(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES department(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);

SELECT * FROM teacher;

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");