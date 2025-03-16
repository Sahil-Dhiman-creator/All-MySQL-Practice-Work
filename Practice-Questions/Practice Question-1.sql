-- Create a database for you compony named XYZ

CREATE DATABASE XYZ;
USE XYZ;
-- STEP-1 Create a table insert this DB to store employee info(id, name and salary).
CREATE TABLE employee_info
(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);
-- STEP-2 Add following information in the DB
-- 	1, "ADAM", 25000
--     2, "BOB", 30000
--     3, "CASEY", 40000

INSERT INTO employee_info
(id, name, salary)
VALUES
(1, "ADAM", 25000),
(2, "BOB", 30000),
(3, "CASEY", 40000);

-- STEP-3 Select And View all your table data
SELECT * FROM employee_info;