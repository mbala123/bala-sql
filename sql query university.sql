create database university;
use university;
create table students(
stuid int primary key,
stuname varchar(50),
stuage int,
stumajor varchar(50));
insert into students values(100,"Hari",23,"CSE");
insert into students values(101,"Mahi",21,"ECE");
insert into students values(102,"Vicky",20,"CSE");
insert into students values(103,"Alex",24,"EEE");
insert into students values(104,"Alan",19,"IT");
insert into students values(105,"Karthi",20,"ECE");

select * from students;

select * from students
where stumajor="CSE";

select max(stuage) from students;

update students
set stumajor="ECE"
where stuid=104;
select * from students;

delete from students
where stuid=104;
select * from students;


