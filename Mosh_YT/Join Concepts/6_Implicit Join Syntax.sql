									-- Implicit Join Syntax
-- first create this syntax then create 'Implicit Join Syntax'
-- If we join 'two tables into one table' that one table will be consider as a 'actual single table'
SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- Implicit Join Syntax
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;

SELECT *
FROM orders o, customers c;

/*
-- Error 
SELECT *
FROM orders o
JOIN customers c
	ON
*/