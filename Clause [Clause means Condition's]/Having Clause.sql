-- HAVING CLAUSE IS VERY SIMILAR TO WHERE CLAUSE
-- WHERE CLAUSE IS USED TO APPLY SOME CONDITION ON THE ROW'S
-- HAVING CLAUSE IS USED TO APPLY SOME CONDITION ON THE GROUP'S

-- Q1: COUNT THE NUMBER OF STUDENTS IN EACH CITY WHERE MAXIMUM MARKS IS CROSS 90
 CREATE DATABASE having_clause;
 USE having_clause;
 
CREATE TABLE having_clause
 (
	rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
	grade VARCHAR(1),
    city VARCHAR(20)
 );
 
 INSERT INTO having_clause (rollno, name, marks, grade, city)
 VALUES
 (101, "anil", 78, "C", "PUNE"),
 (102, "bhumika", 93, "A", "MUMBAI"),
 (103, "chetan", 85, "B", "MUMBAI"),
 (104, "dhruv", 96, "A", "DELHI"),
 (105, "emanuel", 12, "F", "DELHI"),
 (106, "farah", 82, "B", "DELHI");
 
 -- GROUPING ON THE BASES OF CITY
 -- COUNT HOW MANY STUDENT IN EACH CITY
 -- SHOWING THOES CITIES IN WHICH MAXIMUM MAX IS GREATER THEN 90
SELECT city, count(name)
FROM having_clause
GROUP BY city
HAVING MAX(marks) > 90;

-- SEQUENCE/ORDER OF WRITING THE QUERY
SELECT city
FROM having_clause
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) >= 93
ORDER BY city ASC;