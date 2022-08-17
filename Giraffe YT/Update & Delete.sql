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

                                   /* UPDATE */
-- SET is used to create new values
-- WHERE is used to mention the location where we want to change value.
UPDATE stud
SET major='Bio'
WHERE major='Biology';

UPDATE stud
SET major='Comp Sci'
WHERE stud_id=4;

UPDATE stud
SET major='BioChemistry'
WHERE major='Bio' OR major='Chemistry';

UPDATE stud
SET name='Tom', major='undecided'
WHERE stud_id='1';

UPDATE stud 
SET major='undecided'; 

                              /* DELETE */
DELETE FROM stud
WHERE stud_id=5;

DELETE FROM stud
WHERE name='Tom' AND  major='undecided';

DELETE FROM stud;

DELETE FROM stud
WHERE major='Biology';
