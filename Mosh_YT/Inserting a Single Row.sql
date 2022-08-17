--                                    Inserting a Single Row
USE database_store;

INSERT INTO customers VALUES(DEFAULT, 'John', 'Smith', '1990-01-01', NULL, 'address', 'city', 'CA', DEFAULT);

-- after the table name we can optionally supply a list of column that we want to
INSERT INTO customers(first_name, last_name, birth_date, address, city, state) 
VALUES('Matt', 'Cone', '1994-01-01', 'address', 'city', 'SA');