							  -- Self Joins
USE database_hr;

SELECT * 
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id;

SELECT 
	e.employee_id,
    e.first_name AS emp_name,
    m.first_name AS manager
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id;

--                                      Self Joins (Company_Database)
USE company_database;

SELECT *
FROM employee e 
JOIN employee m
ON e.super_id = m.emp_id;

SELECT 
	e.emp_id,
    e.first_name,
    m.first_name AS manage,
    e.super_id
FROM employee e 
JOIN employee m
ON e.super_id = m.emp_id;


