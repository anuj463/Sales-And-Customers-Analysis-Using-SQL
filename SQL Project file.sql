CREATE DATABASE sales_customer_analysis;
USE sales_customer_analysis;
SHOW DATABASES;

CREATE TABLE customers (
    customer_id int PRIMARY KEY,
    customer_name varchar(100),
    city varchar(50),
    age int
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    category VARCHAR(50),
    sales_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
DESCRIBE customers;
DESCRIBE orders;

SELECT COUNT(*) FROM customers; 
SELECT COUNT(*) FROM orders;

SELECT * FROM customers LIMIT 10;
SELECT * FROM orders LIMIT 10;

SELECT COUNT(*) FROM customers WHERE city IS NULL;
SELECT COUNT(*) FROM orders WHERE sales_amount IS NULL;

SELECT MIN(sales_amount), MAX(sales_amount) FROM orders;
SELECT MIN(order_date), MAX(order_date) FROM orders;
 

SELECT SUM(sales_amount) 
FROM orders;

SELECT SUM(sales_amount), customer_id
FROM orders
GROUP BY customer_id;

SELECT 	count(order_id),customer_id
FROM orders
GROUP BY customer_id;

SELECT category, SUM(sales_amount)
FROM orders
GROUP BY category;

SELECT AVG(sales_amount)
FROM orders;