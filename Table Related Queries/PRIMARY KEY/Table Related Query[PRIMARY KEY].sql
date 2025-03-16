CREATE DATABASE primary_key;
USE primary_key;

-- FIRST TYPE TO CREATE A PRIMARY KEY 
CREATE TABLE first_way_of_declaration_of_primary_key(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20)
);
-- SECOND TYPE TO CREATE A PRIMARY KEY
CREATE TABLE second_way_of_declaration_of_primary_key(
	id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id, name)
);