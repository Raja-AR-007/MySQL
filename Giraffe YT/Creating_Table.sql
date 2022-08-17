show databases;
use user;

create table student (
	student_id int primary key,
	name varchar(20),
	major varchar(20)
);
describe student;
drop table student;
alter table student add cgpa decimal(5,0);
alter table student add gpa decimal(5,0);
alter table student drop gpa;