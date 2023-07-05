create database BooksDB;
use BooksDB;
create table books(
s_no int primary key,
book_title text,
author_name text,
genre text,
publication year,
price int);
insert into books values(1,"Cindrella","Water Elias Disney","Cartoon",1997,5000);
insert into books values(2,"Zombie","Hitler","Horror",1987,500);
insert into books values(3,"Life of Pi","Mary Comb","Life lesson",2007,2000);
insert into books values(4,"Life of Lord","Prince Check","Fiction",1907,4000);
insert into books values(5,"World tour","William","action",2002,5500);
insert into books values(6,"Poppins","Wright Brothers","Cartoon",2010,3000);

select * from books;

select * from books 
where book_title="Life of Pi";

select avg(price) from books;

update books
set price=5000
where price=5500;
select * from books;

delete from books
where book_title="World tour";
select * from books;

create table authors(
se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint FK_s_no foreign key(s_no) references Books(s_no)); 

insert into authors values(1,20,"Dubai","William",5);
insert into authors values(2,25,"Bombay","Zombie",2);
insert into authors values(3,30,"Sidney","Walter Elias Disney",1);
insert into authors values(4,40,"Darjiling","Wright Brothers",6);

select * from authors;

select * from books
inner join authors
on books.s_no=authors.s_no;



