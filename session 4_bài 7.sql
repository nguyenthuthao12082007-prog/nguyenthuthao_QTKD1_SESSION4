create database companyDB;
use companyDB;

create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);

alter table employees add column hiredate date;
alter table employees add column salary int;

alter table employees add column department varchar(50);

insert into employees (first_name, last_name, hiredate, salary)
values 
( 'Nguyen', 'An', '2023-05-10', 15000000, 'HR'),
(' Tran', 'Binh', '2024-02-20', 18000000, 'IT'),
('Le', 'Chi', '2025-01-05', 20000000, 'Finance'),
('david', 'pham', '2021-07-01', 4800, 'IT');

update employees
set salary = 4800
where employee_id = 2;
update employees
set
     hiredate = '2021-08-01'
where 
     first_name = 'david';
     
DELETE FROM employees
WHERE employee_id = 1;
DELETE FROM employees
WHERE salary < 5000;

SELECT * FROM employees;
SELECT * FROM employees
WHERE salary > 5000;
SELECT * FROM employees
ORDER BY hireDate DESC;

SELECT Department, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 5000;