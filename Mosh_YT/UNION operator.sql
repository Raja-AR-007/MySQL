--                                 UNION operator
-- UNION operator is used to combine records or results from multiple queries 
-- * It combines only when the multiple queries colums are same *
USE database_store;

SELECT 
	orders.order_id,
    orders.order_date,
    'Active' AS status
FROM orders 
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	orders.order_id,
    orders.order_date,
    'Archived' AS status
FROM orders 
WHERE order_date < '2019-01-01'; 


-- other type
SELECT first_name
FROM customers
UNION 
SELECT name
FROM shippers;

-- 1st query part returs two cloumns 2nd quer part returns one column, mysql doesn't know how to combine
SELECT first_name, last_name
FROM customers
UNION 
SELECT name
FROM shippers;

-- unioned column name is based on first query part
SELECT name
FROM shippers
UNION
SELECT first_name
FROM customers;

--                                         Exercise

SELECT 
	customer_id, 
    first_name,
	points,
	'Bronze' AS type
FROM customers
WHERE points < 2000
UNION 
SELECT 
	customer_id, 
    first_name,
	points,
	'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000 
-- WHERE points >=2000 AND points < 3000
UNION 
SELECT 
	customer_id, 
    first_name,
	points,
	'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;
