--                                            JOIN operator

-- If we join 'two tables into one table' that one table will be consider as a 'actual single table'
-- JOIN will do INNER JOIN 
SELECT *
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id;

-- creating Alias
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

--                                       Exercise
SELECT *
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

