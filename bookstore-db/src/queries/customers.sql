-- SQL queries to retrieve and analyze data related to customers

-- Retrieve all customers
SELECT * FROM customer;

-- Retrieve a customer by ID
SELECT * FROM customer WHERE customer_id = ?;

-- Retrieve customers by last name
SELECT * FROM customer WHERE last_name = ?;

-- Count total number of customers
SELECT COUNT(*) AS total_customers FROM customer;

-- Retrieve customers with their addresses
SELECT c.customer_id, c.first_name, c.last_name, a.address_line1, a.city, a.state, a.zip_code
FROM customer c
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id;

-- Retrieve customers who have placed orders
SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM customer c
JOIN cust_order co ON c.customer_id = co.customer_id;