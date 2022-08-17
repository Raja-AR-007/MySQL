-- INNER JOIN (INNER is optional)
-- OUTER JOIN 

-- usually 'JOIN is a INNER JOIN by default.

-- JOIN will do INNER JOIN 
-- OUTER JOIN will do LEFT JOIN and RIGHT JOIN

USE database_store;

-- By default usual JOIN is a INNER JOIN
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- INNER JOIN 
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
INNER JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- LEFT JOIN
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT JOIN 
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT JOIN (Left and Right side tables positions are changed)
SELECT c.customer_id, c.first_name, o.order_id
FROM orders o  -- left
RIGHT JOIN customers c  -- right
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

                                            -- Exercise
SELECT *
FROM products p
LEFT JOIN order_items oi
	ON  p.product_id = oi.product_id;  -- condition
    
SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON  p.product_id = oi.product_id;