CREATE DATABASE constrants_practice_question;
USE constrants_practice_question;

CREATE TABLE constrants (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO constrants
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "PUNE"),
(102, "bhumika", 93, "A", "MUMBAI"),
(103, "chetan", 85, "B", "MUMBAI"),
(104, "dhruv", 96, "A", "DELHI"),
(105, "emanuel", 12, "F","DELHI"),
(106, "farah", 82, "B", "DELHI");

-- USING OF [SELECT] COMMAND
SELECT name, marks from constrants;

-- PRINT ALL THE DATA FROM THE GIVEN TABLE
SELECT * from constrants;

-- DISTINCT MEANS [SHOW'S UNIQUE VALUES FROM A GIVEN TABLE]
SELECT DISTINCT city FROM constrants;