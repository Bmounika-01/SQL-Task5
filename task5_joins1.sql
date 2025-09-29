USE sql_task;

---------------------------------------------------------
-- INNER JOIN
---------------------------------------------------------

SELECT c.customer_id, c.customer_name, o.product, o.amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id;

----------------------------------------------------------
-- LEFT JOIN
----------------------------------------------------------

SELECT c.customer_id, c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id;

------------------------------------------------------------
-- RIGHT JOIN
------------------------------------------------------------

SELECT c.customer_id, c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;

-------------------------------------------------------------
-- FULL JOIN
-------------------------------------------------------------

SELECT c.customer_id, c.customer_name, o.product, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id

UNION

SELECT c.customer_id, c.customer_name, o.product, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customer_id = o.customer_id;


