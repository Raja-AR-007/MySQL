--                                Joining Accross Database 
USE database_inventory;

SELECT * 
FROM database_store.order_items oi
JOIN products p
ON oi.product_id=p.product_id;