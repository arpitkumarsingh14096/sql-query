show databases ;
create database library_database;
use library_database;
create table book (
id int primary key,
b_name varchar(100) not null,
author varchar(100) not null,
year_pub int
);

create table employees (
id int primary key auto_increment,
name varchar(100) not null,
email varchar(100) unique,
salary int default 30000,
check(salary>0),
b_name varchar(100),
foreign key(b_name) references book(b_name)
);
insert into employees(id,name,email,salary)
values(101,"arpit","abd",40000),
(102,"shreya","bsv",45000);
select *from employees;
alter table employees add column phone_number int;
alter table employees rename column id to emp_id;
truncate table employees;
select * from employees;
update employees set salary=50000 where id = 101;
delete from employees where id =102;



