/*                                          -- employee
                                          
CREATE TABLE employee(
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    birth_date DATE,
    sex VARCHAR(1),
    salary INT,
    super_id INT, 
    branch_id INT
);   

INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);
update employee
set branch_id=1
where emp_id=100;
INSERT INTO employee VALUES(101, 'Jan', 'Levinston', '1961-05-11', 'F', 110000, 100, 1);
INSERT INTO employee VALUES(102, 'Michel', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);
update employee
set branch_id=2
where emp_id=102;
INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kaviya', 'Kumar', '1980-02-05', 'F', 51000, 102, 2);
INSERT INTO employee VALUES(105, 'Prem', 'Kumar', '1958-03-15', 'M', 55000, 102, 2);
INSERT INTO employee VALUES(106, 'Raja', 'Raj', '1952-05-18', 'M', 85000, 100, NULL);
UPDATE employee
SET branch_id=3
WHERE emp_id=106;
INSERT INTO employee VALUES(107, 'Muthu', 'Vel', '1996-04-15', 'M', 85000, 106, 3);
INSERT INTO employee VALUES(108, 'Yoga', 'Raj', '1998-06-14', 'M', 85000, 106, 3);

SELECT * FROM employee;
DROP TABLE employee;
                                       -- branch
                                       
CREATE TABLE branch(
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(20),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

INSERT INTO branch VALUE(1, 'Corporate', 100, '2006-02-09');
INSERT INTO branch VALUE(2, 'Scranton', 102, '1992-04-06');
INSERT INTO branch VALUE(3, 'Stamford', 106, '1995-06-08');

SELECT * FROM branch;
DROP TABLE branch;

ALTER TABLE employee 
ADD FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL;

ALTER TABLE employee 
ADD FOREIGN KEY(super_id) REFERENCES employee(emp_id) ON DELETE SET NULL;
										
                                        -- client
                                        
CREATE TABLE client(
	client_id  INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);

SELECT * FROM client;
DROP TABLE client;
                                   
                                   -- works_with
                                   
CREATE TABLE works_with(
	emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, client_id),
    FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE 
);

INSERT INTO works_with VALUES(105, 400, 55000); 
INSERT INTO works_with VALUES(102, 401, 267000); 
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000); 
INSERT INTO works_with VALUES(108, 403, 12000); 
INSERT INTO works_with VALUES(105, 404, 33000); 
INSERT INTO works_with VALUES(107, 405, 26000); 
INSERT INTO works_with VALUES(102, 406, 15000); 
INSERT INTO works_with VALUES(105, 406, 130000); 

SELECT * FROM works_with;
DROP TABLE works_with;
							     
                                 -- branch_supplier
                                 
CREATE TABLE branch_supplier(
	branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name), 
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

INSERT INTO branch_supplier VALUES(2,'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2,'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3,'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2,'J.T Forms & Labels', 'Custom Froms');
INSERT INTO branch_supplier VALUES(3,'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3,'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3,'Stamford Labels', 'Custom Forms');

SELECT * FROM branch_supplier;
DROP TABLE branch_supplier;
*/
					           -- 'Wildcards' keyword is LIKE 
-- Whildcards keywords are % %% = any # character, _ = one character

-- Find any client's who are an LLC means(Limitted Library Company).

-- % sign which gonna represent any number of characters.
-- '%' it will match our expression to the table. it will give which value ending with our Expression. 
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

SELECT *
FROM employee
WHERE first_name LIKE '%a';

-- Double %% have value within %%. it will give which value having with our Expression.
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Patriot%';

                                   -- '_' underscore keyword
-- '_' underscore keyword is used to skip single character by using '_' underscore.

-- Find the employee born in march.
SELECT *
FROM employee
WHERE birth_date LIKE '____-03%';

SELECT *
FROM employee
WHERE birth_date LIKE '1967-__-__';

SELECT *
FROM employee
WHERE birth_date LIKE '____-__-05';

-- Find clients who are schools
SELECT *
FROM client
WHERE client_name LIKE '%school%';

-- % any number of characters
-- _ single character




