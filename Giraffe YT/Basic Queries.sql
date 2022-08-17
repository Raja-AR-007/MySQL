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

                                     -- Basic Queries
-- ORDER BY, DESC ,ASC, LIMIT, WHERE, '<, >, <=, >=, =, <>, AND, OR', IN, AS, DISTINCT keywords.
SELECT major
FROM stud;

SELECT name, major
FROM stud;

SELECT stud.name, stud.major
FROM stud;

                                   -- ORDER BY 
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

                                  -- LIMIT keyword
-- LIMIT keyword is used to set the Limitations to execute values upto we want.
SELECT *
FROM stud
LIMIT 2;

SELECT *
FROM stud
ORDER BY stud_id DESC
LIMIT 2;
                              
                                -- WHERE keyword
-- WHERE is used to mention the location where we want to change value.
SELECT *
FROM stud
WHERE major='Biology';

SELECT *
FROM stud
WHERE major='Chemistry';

SELECT stud.name, stud.major
FROM stud
WHERE major='Chemistry';

SELECT stud.name, stud.major
FROM stud
WHERE major='Chemistry' OR major='Biology';

                    -- <, >, <=, >=, =, <>, AND, OR keywords
SELECT *
FROM stud
WHERE major <> 'Chemistry';  -- <> means not equal to

SELECT *
FROM stud
WHERE stud_id <3;

SELECT *
FROM stud
WHERE stud_id <=3;

SELECT *
FROM stud
WHERE stud_id <=3 AND name<>'Jack';

                             -- IN keyword
-- IN keyword is used to get particular Row values.
SELECT *
FROM stud
WHERE name IN ('Claire', 'Kate', 'Mike');
                 
SELECT *
FROM stud
WHERE major IN ('Biology', 'Chemistry');

SELECT *
FROM stud
WHERE major IN ('Biology', 'Chemistry') AND stud_id > 2;

                                    -- AS keyword 
-- AS keyword is used to change Columns name.
SELECT name AS name_of_stud, major As major_of_stud
FROM stud;

								-- DISTINCT key
-- DISTINCT key is used to execute one time that which values get repeated.
SELECT DISTINCT name 
FROM stud;

SELECT DISTINCT major 
FROM stud;

