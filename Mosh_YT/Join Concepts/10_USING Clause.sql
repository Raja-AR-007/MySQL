                               -- USING Clause
-- USING Clause only use in when the column names are same
USE database_store;
-- USING clause in Normal Joins 
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM orders o
JOIN customers c 
	USING(customer_id)
LEFT JOIN shippers sh 
	USING(shipper_id);
    
-- USING Clause in composite Key
SELECT *
FROM order_items oi
JOIN order_item_notes oin 
	USING(order_id, product_id);
    
                                      -- Exercise
	USE database_invoicing;
    
    SELECT 
		p.date,
        c.name AS client,
        p.amount,
        pm.name AS payment_method
    FROM payments p 
    JOIN clients c USING(client_id)
    JOIN payment_methods pm 
		ON p.payment_method = pm.payment_method_id