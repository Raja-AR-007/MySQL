create table stud (
	stud_id int primary key,
	name varchar(20),
	major varchar(20)
);
select * from stud;
drop table stud;
insert into stud values(1, 'Raja', 'Chemistry');
insert into stud values(2, 'Raja', 'Mathametics');
insert into stud(stud_id, name) values(3, 'Kavin'); 
insert into stud values(4, 'dinesh', 'Chemistry');
insert into stud values(5, 'Vijay', 'English');

SELECT DISTINCT major
FROM stud;
