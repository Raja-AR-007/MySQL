
USE database_store;

INSERT INTO orders(customer_id, order_date, status)
VALUE(1, '2019-01-02', 1);

SELECT LAST_INSERT_ID();

--                                       Inserting Hierarchical Rows

-- By using LAST_INSERT_ID() we can create Hierarchical data
-- By using one primary key we can create many rows of records

INSERT INTO order_items
VALUES
	(LAST_INSERT_ID(), 3, 1, 1.65),
	(LAST_INSERT_ID(), 4, 1, 2.94);
     
DELETE 
FROM orders
WHERE order_id=11;