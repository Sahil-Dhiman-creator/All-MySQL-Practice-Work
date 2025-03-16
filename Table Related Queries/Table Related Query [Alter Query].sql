-- ALTER QUERY IS USED TO [CHANGE THE SCHEMA]

CREATE DATABASE alter_query;
USE alter_query;

CREATE TABLE student(
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

-- ADD COLUMN USING [ALTER]
ALTER TABLE student
ADD COLUMN age INT;

-- DELETE THE NEW INSERTED COLUMN USING [ALTER]
ALTER TABLE student
DROP COLUMN age;

-- IF YOU WANT TO RENAME OUR TABLE NAME USING [ALTER]
ALTER TABLE student
RENAME TO class_student;

-- IF YOU WANT TO RENAME THE SPECIFIC COLUMN NAME
ALTER TABLE student
CHANGE COLUMN marks total_marks INT NOT NULL;

SELECT * FROM student;