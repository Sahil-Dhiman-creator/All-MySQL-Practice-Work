CREATE DATABASE college1;
USE college1;

CREATE TABLE student
(
	rollno int PRIMARY KEY,
    name VARCHAR(50)
);
-- First Way of Inserting Data into Table
INSERT INTO student
(rollno, name)
VALUES
(101, "Sahil"),
(102, "Shivam"),
(103, "Ram");

-- Second way of Inserting Data into Table
INSERT INTO student VALUES (104,"Sham");
 
SELECT * FROM student;