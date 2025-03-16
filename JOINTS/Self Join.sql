-- [SELF JOIN] IS A TYPE OF REGULAR JOIN BUT THE TABLE IS JOINED WITH ITSELF

CREATE DATABASE self_join;
USE self_join;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;
