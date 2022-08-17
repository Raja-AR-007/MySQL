--                                  Creating a Copy of a Table

USE database_store;

CREATE TABLE orders_archived AS
SELECT * FROM orders;

-- Inserting a Sub query into a Table
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

--                                       Exercise

USE database_invoicing;

-- Inserting a Sub query into a Table
CREATE TABLE invoices_archived AS
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i 
JOIN clients c 
	USING(client_id)
-- WHERE payment_total != 0.00;
WHERE payment_date IS NOT NULL;
