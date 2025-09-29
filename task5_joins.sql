CREATE DATABASE sql_task;
USE sql_task;

-----------------------------------------------
-- Customers Table
-----------------------------------------------

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

-------------------------------------------------
-- Orders Table
-------------------------------------------------

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-----------------------------------------------------
-- Insert sample data
----------------------------------------------------

INSERT INTO Customers VALUES
(1, 'mounika', 'Delhi'),
(2, 'sony', 'Mumbai'),
(3, 'kalpana', 'Chennai'),
(4, 'swetha', 'Hyderabad');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 60000),
(102, 2, 'Mobile', 20000),
(103, 1, 'Tablet', 15000),
(104, 3, 'Headphones', 3000);


