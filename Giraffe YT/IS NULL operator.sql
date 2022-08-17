                                     -- IS NULL Operator
SELECT *
FROM customers
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE phone IS NOT NULL;

                                       -- Exercise
-- Get the orders that are not shipped
SELECT *
FROM orders
WHERE shipper_id IS NULL;

SELECT *
FROM orders
WHERE shipped_date IS NULL;