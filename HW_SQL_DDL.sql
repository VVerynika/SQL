-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar (50) not null
	);
  
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(	
	id serial primary key,
	monthly_salary int not null
);

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
	);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int unique not null
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar (30);

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(	
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key(employee_id)
	    references employees(id),
	foreign key(role_id)  
	    references roles(id)
);

--Наполнить таблицу employee 70 строками

insert into employees (employee_name)
values ('Oliver_Smith'),
		('Abigail_Jones'),
		('Alexander_Smith'),
		('Amelia_Li'),
		('Ava_Lee'),
		('Barbara_Jones'),
		('Bethany_Wilson'),
		('Callum_Roy'),
		('Charles_Thomas'),
		('Charlie_Roy'),
		('Charlotte_Wang'),
		('Connor_Gelbero'),
		('Damian_Miller'),
		('Daniel_Taylor'),
		('David_Davies'),
		('Elizabeth_Brown'),
		('Emily_Martin'),
		('Emma_Smith'),
		('Ethan_Roberts'),
		('George_Davis'),
		('Harry_Williams'),
		('Isabella_Tremblay'),
		('Isla_Lam'),
		('Jack_Johnson'),
		('Jacob_Walsh'),
		('Jake_Murphy'),
		('James_Rodriguez'),
		('James_Lam'),
		('Jennifer_Williams'),
		('Jessica_Anderson'),
		('Jessica_Lee'),
		('Joanne_Wilson'),
		('Joe_White'),
		('John_Jones'),
		('Joseph_Evans'),
		('Kyle_Smith'),
		('Lauren_White'),
		('Liam_Davis'),
		('Lily_Gagnon'),
		('Linda_Taylor'),
		('Madison_Singh'),
		('Margaret_Wang'),
		('Margaret_Smith'),
		('Mary_Mor'),
		('Mason_Garcia'),
		('Megan_Taylor'),
		('Mia_Gagnon'),
		('Michael_Brown'),
		('Michael_Smith'),
		('Michelle_Martin'),
		('Noah_Smith'),
		('Olivia_Smith'),
		('Olivia_White'),
		('Oscar_Garcia'),
		('Patricia_Wilson'),
		('Poppy_Gelbero'),
		('Reece_Byrne'),
		('Rhys_Morton'),
		('Richard_Wilson'),
		('Robert_Williams'),
		('Samantha_Jo'),
		('Sarah_Li'),
		('Sophia_Martin'),
		('Sophie_Wilson'),
		('Susan_Singh'),
		('Thomas_Miller'),
		('Tracy_Anderson'),
		('Victoria_Morton'),
		('William_Wilson'),
		('William_Taylor');

--Наполнить таблицу salary 15 строками

insert into salary(id, monthly_salary)
values (1, 1000),
		(2, 1100),
		(3, 1200),
		(4, 1300),
		(5, 1400),
		(6, 1500)
 		(7, 1600),
		(8, 1700),
		(9, 1800),
		(10, 1900)
		(11, 2000),
		(12, 2100),
		(13, 2200),
		(14, 2300),
		(15, 2400),
		(16, 2500);

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (40, 13),
	   (23, 4),
	   (11, 2),
	   (52, 10),
	   (15, 13),
	   (26, 4),
	   (16, 1),
	   (33, 7),
	   (2, 8),
	   (4, 4),
	   (6, 9),
	   (7, 7),
	   (8, 2),
	   (9, 1),
	   (10, 7),
	   (12, 3),
	   (13, 6),
	   (14, 7),
	   (17, 5),
	   (18, 7),
	   (19, 4),
	   (20, 9),
	   (21, 7),
	   (22, 3),
	   (24, 9),
	   (25, 7),
	   (27, 4),
	   (71, 7),
	   (72, 4),
	   (73, 9),
	   (74, 7),
	   (75, 4),
	   (76, 9),
	   (77, 7),
	   (78, 4),
	   (79, 9),
	   (80, 9);

--Наполнить таблицу roles 20 строками

insert into roles (role_name)
values ('Junior_Python_developer'),
	('Middle_Python_developer'),
	('Senior_Python_developer'),
	('Junior_Java_developer'),
	('Middle_Java_developer'),
	('Senior_Java_developer'),
	('Junior_JavaScript_developer'),
	('Middle_JavaScript_developer'),
	('Senior_JavaScript_developer'),
	('Junior_Manual_QA_engineer'),
	('Middle_Manual_QA_engineer'),
	('Senior_Manual_QA_engineer'),
	('Project_Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales_manager'),
	('Junior_Automation_QA_engineer'),
	('Middle_Automation_QA_engineer'),
	('Senior_Automation_QA_engineer');

--Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 1),
		(22, 12),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 5),
		(2, 1),
		(4, 9),
		(8, 13),
		(9, 4),
		(12, 2),
		(13, 9),
		(14, 12),
		(15, 3),
		(16, 6),
		(17, 7),
		(18, 2),
		(19, 4),
		(24, 9),
		(25, 8),
		(26, 4),
		(27, 2),
		(28, 9),
		(29, 10),
		(30, 3),
		(31, 4),
		(32, 7),
		(33, 2),
		(35, 4),
		(36, 5),
		(37, 13),
		(38, 6),
		(39, 2),
		(40, 9);
	  

select * from roles;
select * from roles_employee;
select * from salary;
select * from employees;
select * from employee_salary;
