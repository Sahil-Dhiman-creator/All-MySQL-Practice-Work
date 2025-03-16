CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
); 

INSERT INTO student VALUES(1, "sahil", 23);
INSERT INTO student VALUES(3, "shivam", 22);

SELECT * FROM student