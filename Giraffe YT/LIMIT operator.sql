                                  -- LIMIT keyword
-- LIMIT keyword is used to set the Limitations to execute values upto we want.
SELECT *
FROM stud
LIMIT 2;

SELECT *
FROM stud
ORDER BY stud_id DESC
LIMIT 2;

								-- LIMIT keyword (Company Database)
-- Find the first five employees in the table
SELECT *
FROM employee
LIMIT 5;

-- Find the first and last names of employees
SELECT first_name, last_name
FROM employee;