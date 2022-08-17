                                 -- TRIGGER operator
-- TRIGGER is used to show some message at BEFORE or AFTER INSERT a value in a row.

/*
CREATE TABLE trigger_table(
	message VARCHAR(50)
);
DROP TABLE trigger_table;
*/

/*
DELIMITER $$
CREATE TRIGGER trigger_1 BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
	INSERT INTO trigger_table VALUES ('new row added');
END$$
DELIMITER ;

INSERT INTO employee VALUES (109,'Kavi', 'Liyas', '1985-10-01', 'M', 60000, 100, 1);

SELECT *
FROM trigger_table;

DROP TRIGGER trigger_1;
*/

/*
DELIMITER $$
CREATE TRIGGER trigger_2 BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
	INSERT INTO trigger_table VALUES (NEW.first_name);
END$$
DELIMITER ;

INSERT INTO employee VALUES (110,'Kavi', 'Liyas', '1985-10-01', 'M', 60000, 100, 1);

SELECT *
FROM trigger_table;

DROP TRIGGER trigger_2;
*/

                                      -- IFELSE THEN TRIGGER
DELIMITER $$
CREATE TRIGGER trigger_3 BEFORE INSERT
ON employee
FOR EACH ROW BEGIN
	IF NEW.sex='M' THEN
	INSERT INTO trigger_table VALUES ('male employee added'); 
    ELSEIF NEW.sex='F' THEN
    INSERT INTO trigger_table VALUES ('female employee added');
    ELSE 
    INSERT INTO trigger_table VALUES ('new employee added');
    END IF;
END$$
DELIMITER ;

INSERT INTO employee VALUES (111,'Kaviya', 'Kumar', '1985-10-01', 'F', 60000, 100, 1);

SELECT *
FROM trigger_table;

DELETE  
FROM employee
WHERE emp_id=111;

DROP TRIGGER trigger_3;