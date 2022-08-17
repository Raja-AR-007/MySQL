--                                 CROSS Joins
-- CROSS Joins will combine or join 1st Table records or results with 2nd Table records or results
 
USE database_store;

-- Explicit Syntax
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c 
CROSS JOIN products p 
ORDER BY c.first_name;

-- Implicit Syntax
SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, products p
ORDER BY c.first_name;

--                                        Exercise
-- Do a cross join between shippers and products
--   using the implicit syntax 
SELECT 
	sh.name AS shiper,
    p.name AS product
FROM shippers sh, products p 
ORDER BY sh.name;

--   using the explicit syntax 
SELECT 
	sh.name AS shiper,
    p.name AS product
FROM shippers sh 
CROSS JOIN products p
ORDER BY sh.name;
