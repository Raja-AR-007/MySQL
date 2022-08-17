CREATE TABLE stud (
	stud_id INT,
	name VARCHAR(20) UNIQUE,                /* name cannot be same it must be unique */
	major VARCHAR(20) DEFAULT 'undecided',  /* If we forget to specify one coloumn then it'll show the DEFAULT */
    cgpa DECIMAL(10.0) NOT NULL,            /* cgpa cannot be NULL*/
    PRIMARY KEY(stud_id)                    /* PRIMARY KEY have both NOT NULL and UNIQUE */
);
SELECT * FROM stud;
                 
DROP TABLE stud;

INSERT INTO stud(stud_id, name, cgpa) VALUES(1, 'Raja', 5.5);  /* If we forget to specify one coloumn then it'll show the DEFAULT */
INSERT INTO stud VALUES(2, 'Ravi', 'Boilogy', NULL);  /* cgpa cannot be NULL */
INSERT INTO stud VALUES(3, 'Raja', 'Mathamatics', 6.7);  /* name cannot be same it must be unique */
INSERT INTO stud VALUES(4, 'Sam', 'Computer', 7.7);
INSERT INTO stud VALUES(5, 'Edison', 'Mathamatics', 6.7);



