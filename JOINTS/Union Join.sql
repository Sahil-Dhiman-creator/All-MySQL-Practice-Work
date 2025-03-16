CREATE DATABASE union_join;
USE union_join;

CREATE TABLE union_join
(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO union_join
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald",103);

-- SHOWING ALL THE NAME'S THAT WAS PRESENT IN THE TABLE
-- WITH THE HELP OF [UNION] WE CAN EASILY REMOVE THE DUPLICATES
SELECT name FROM union_join
UNION
SELECT name from union_join;

-- WITH THE HELP OF [UNION-ALL] WE CAN SEE ALL THE VALUES EXCEPT DUPLICATES ALSO
SELECT name FROM union_join
UNION ALL
SELECT name FROM union_join;

SELECT * FROM union_join;