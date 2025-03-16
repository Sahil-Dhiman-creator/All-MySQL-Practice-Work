-- FOR A GIVEN TABLE, FIND THE TOTAL PAYMENT ACCORDING TO EACH PAYMENT METHOD.

CREATE DATABASE Finding_Total_Payment_According_To_Each_Payment;
USE Finding_Total_Payment_According_To_Each_Payment;

CREATE TABLE payment
(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(25),
    city VARCHAR(25)
);

INSERT INTO payment
(customer_id, customer, mode, city)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

SELECT mode, count(customer)
FROM payment
GROUP BY mode; 