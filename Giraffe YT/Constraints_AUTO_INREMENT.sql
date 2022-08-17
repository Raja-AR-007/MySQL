CREATE TABLE stud (
	stud_id INT AUTO_INCREMENT,  /* every time it'll increment PRIMARY KEY automatically, if we didn't specify primary key column */
	name VARCHAR(20),                
	major VARCHAR(20), 
    cgpa DECIMAL(10.0),            
    PRIMARY KEY(stud_id)        /* PRIMARY KEY have both NOT NULL and UNIQUE */            
);
SELECT * FROM stud;
                 
DROP TABLE stud;
                             /* AUTO_INCREMENT */
INSERT INTO stud(name, major, cgpa) VALUES('Ragu', 'Tamil', 7.7);  /* every time it'll increment PRIMARY KEY automatically */
INSERT INTO stud(name, major, cgpa) VALUES('Mickel', 'Hindi', 6.7);