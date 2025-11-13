create database companyDB;
use companyDB;

create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

alter table employees add column hiredate date;
alter table employees add column salary int;

insert into employees (first_name, last_name, hiredate, salary)
values 
( 'Nguyen', 'An', '2023-05-10', 15000000),
(' Tran', 'Binh', '2024-02-20', 18000000),
('Le', 'Chi', '2025-01-05', 20000000);

