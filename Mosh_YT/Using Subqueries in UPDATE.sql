--                                 Using Subqueries in UPDATE
USE database_invoicing;

-- 1
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = 
			(SELECT client_id
			FROM clients
			WHERE name = 'Myworks');
            
-- 2
-- Assignment operator '=' cannot return Multiple records in Subqueries
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id IN 
			(SELECT client_id
			FROM clients
			WHERE state IN ('CA', 'NY')); -- Multiple records

-- 3
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
    
SELECT *
FROM invoices
WHERE payment_date IS NULL;

-- 4
-- Before executing this query check this query like 3 (we can find 'WHERE part query' is properly working or not)
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE payment_date IS NULL;

--                                          Exercise
-- which customer have points more than 3000
--   and create their's comments as 'Gold customer'
USE database_store;

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN
			(SELECT customer_id
			FROM customers 
			WhERE points > 3000)
