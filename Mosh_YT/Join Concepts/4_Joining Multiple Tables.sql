                                   -- Joining Multiple Tables (database store)
USE database_store;

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;
    
SELECT
	o.order_id,
    o.order_date,
    c.customer_id,
    c.first_name,
    c.last_name,
    os.name AS order_status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;
    
                                      -- Exercise (database invoicing)
USE database_invoicing;
-- joining two tables
SELECT *
FROM payments p
JOIN clients c
	ON p.client_id= c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
    
SELECT 
	c.client_id,
    p.payment_id,
    p.invoice_id,
    p.date,
    p.amount,
    pm.name AS payment_status
FROM payments p
JOIN clients c
	ON p.client_id= c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
    
-- joining three tables (practiced query)
SELECT *
FROM payments p
JOIN clients c
	ON p.client_id= c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN invoices i
	ON p.invoice_id = i.invoice_id;
    
SELECT 
	c.client_id,
    p.payment_id,
    p.date,
    p.amount,
    pm.name AS payment_status,
    i.invoice_id,
    i.invoice_total,
    i.number AS `invoice's number`
FROM payments p
JOIN clients c
	ON p.client_id= c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN invoices i
	ON p.invoice_id = i.invoice_id;