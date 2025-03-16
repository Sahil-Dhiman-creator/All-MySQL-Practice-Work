CREATE DATABASE foreign_key;
USE foreign_key;

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

CREATE TABLE teacher
(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    Department_id INT,
    FOREIGN KEY (Department_id) REFERENCES department(id)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");