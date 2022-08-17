
--                                        REGEXP(Regular Expression)
SELECT *
FROM customers
WHERE last_name REGEXP 'field';

-- '^field' Beginig of a string
SELECT *
FROM customers
WHERE last_name REGEXP '^field';

-- 'field$' Ending of a string
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac';

SELECT *
FROM customers
WHERE last_name REGEXP '^field|mac|rose';

SELECT *
FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

SELECT *
FROM customers
WHERE last_name REGEXP 'e';

-- square bracket [] Before a character 
SELECT *
FROM customers
WHERE last_name REGEXP '[avnm]e';

-- square bracket [] After a character 
SELECT *
FROM customers
WHERE last_name REGEXP 'i[dsgre]';

-- '-' is range between the square bracket
SELECT *
FROM customers
WHERE last_name REGEXP 'i[a-z]';

-- ^ Begning '^field'
-- $ End 'field$'
-- | Logical OR
-- [abcd]a or b[abcd] use square bracket to match a single char listed in the bracket
-- [a-z]a or n[a-z] to represent Range char listed in the bracket
-- 'abc' to match the value listed within '' 

                                     -- Exercise
-- Get the customers whose
--   first names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';

--   last names end with EY or ON
SELECT * 
FROM customers
WHERE last_name REGEXP 'ey$|on$';

--   last names starts with MY or contains SE 
SELECT * 
FROM customers
WHERE last_name REGEXP '^my|se';

--   last names contains B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';

SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu';
