--                               Deleting Rows
USE database_invoicing;

DELETE FROM invoices
WHERE client_id = (
	SELECT *
	FROM clients
	WHERE name = 'Myworks'
);

