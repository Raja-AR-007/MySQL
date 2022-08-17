--                                  Inserting Multiple Rows
USE database_srote;

-- Both queries are same
INSERT INTO shippers (name) 
VALUES ('shipper1'),
	   ('shipper2'),
	   ('shipper3');

INSERT INTO shippers (shipper_id, name) 
VALUES (6, 'shipper1'),
	   (7, 'shipper2'),
	   (8, 'shipper3');
       
--                                      Exercise
-- Insert three rows in the products table
INSERT INTO products(name, quantity_in_stock, unit_price)
VALUES('product1', 10, 1.95),
	  ('product2', 11, 1.95),
      ('product3', 12, 1.95);