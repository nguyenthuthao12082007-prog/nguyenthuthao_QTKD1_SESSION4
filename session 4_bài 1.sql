create database companyDB;
use companyDB;

create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

alter table employees add column hiredate date;
alter table employees add column salary int;