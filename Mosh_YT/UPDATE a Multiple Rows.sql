--                                 UPDATE a Multiple Rows
USE database_store;

-- 1
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id = 3;

-- 2
UPDATE invoices
SET payment_total = invoice_total * 0.5,
	payment_date = due_date
WHERE client_id IN (3, 4);

--                                      Exercise
-- Write a SQL atatement to
--   give any customers born before 1990
--   50 extra points

USE database_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';
