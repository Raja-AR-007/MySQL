                                    -- NATURAL Joins
 -- NATURAL Joins can produce unexpected results, so that's why peoples will discourage to use them
USE database_store;

SELECT 
	o.order_id,
    c.first_name
FROM orders o 
NATURAL JOIN customers c;
