 CREATE TABLE stud (
	stud_id INT,
	name VARCHAR(20),
	major VARCHAR(20),
    PRIMARY KEY(stud_id)
);
SELECT * FROM stud;

DROP TABLE stud;

INSERT INTO stud VALUES(1, 'Jack','Biology'); 
INSERT INTO stud VALUES(2, 'Kate', 'Sociology');  
INSERT INTO stud VALUES(3, 'Claire', 'Chemistry');  
INSERT INTO stud VALUES(4, 'Jack', 'Biology');
INSERT INTO stud VALUES(5, 'Mike', 'Computer Science');
 
 --                                        ORDER BY 
-- by default ORDER BY is a ASC 'Ascending Order'
SELECT stud.name, stud.major
FROM stud
ORDER BY name;

                              -- DESC keyword
-- DESC means Descending order
SELECT stud.name, stud.major
FROM stud
ORDER BY name DESC;

SELECT stud.name, stud.major
FROM stud
ORDER BY stud_id; 

SELECT *
FROM stud
ORDER BY stud_id DESC;

SELECT stud.stud_id, stud.name, stud.major
FROM stud
ORDER BY stud_id DESC; 

                                 -- ASC keyword
-- ASC means Ascending order
SELECT stud.stud_id, stud.name, stud.major
FROM stud
ORDER BY stud_id ASC;

SELECT *
FROM stud
ORDER BY major, stud_id;

SELECT *
FROM stud
ORDER BY major, stud_id DESC;

                                   -- ORDER BY keyword (Company Database)
-- Find employees ordered by salary
SELECT *
FROM employee
ORDER BY salary;

                                   -- DESC keyword
-- order the employee by their richness
SELECT *
FROM employee
ORDER BY salary DESC;

-- Find employees ordered by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name, Last_name;