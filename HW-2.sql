-- Таблица employees

-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками.

CREATE TABLE employees(
	id serial PRIMARY KEY,
	employee_name varchar (50) NOT NULL
);

INSERT INTO employees(employee_name)
VALUES ('Charisse'),
		('Court'),
		('Waylon'),
		('Nona'),
		('Zebadiah'),
		('Allistir'),
		('Rica'),
		('Joey'),
		('Theodoric'),
		('Jacinda'),
		('Concettina'),
		('Sissie'),
		('Dyane'),
		('Jamal'),
		('Sheffie'),
		('Timothee'),
		('Dorian'),
		('Deeanne'),
		('Goddard'),
		('Mannie'),
		('Sandye'),
		('Rachael'),
		('Burlie'),
		('Wallie'),
		('Jessica'),
		('Kenn'),
		('Dermot'),
		('Rita'),
		('Rourke'),
		('Cyb'),
		('Sadella'),
		('Kare'),
		('Linnie'),
		('Casar'),
		('Wynn'),
		('Maddalena'),
		('Barnett'),
		('Tamma'),
		('Vaclav'),
		('Addy'),
		('Penny'),
		('Oneida'),
		('Slade'),
		('Thomasine'),
		('Ryun'),
		('Rollie'),
		('Georgette'),
		('Tull'),
		('Pierson'),
		('Nial'),
		('Claresta'),
		('Garvey'),
		('Jo-ann'),
		('Gladi'),
		('Netty'),
		('Ginevra'),
		('Delano'),
		('Genovera'),
		('Helenka'),
		('Berton'),
		('Ilise'),
		('Windham'),
		('Velma'),
		('Dicky'),
		('Alejandra'),
		('Truman'),
		('Cass'),
		('Care'),
		('Agatha'),
		('Stanislaus');


-- Таблица salary

-- Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- Наполнить таблицу salary 15 строками

CREATE TABLE salary (
	id serial PRIMARY KEY,
	monthly_salary int NOT NULL	
);

INSERT INTO salary (monthly_salary)
VALUES (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

	
-- Таблица employee_salary

-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

CREATE TABLE employee_salary (
	id serial PRIMARY KEY,
	employee_id int UNIQUE NOT NULL,
	salary_id int NOT NULL
);
	
INSERT INTO employee_salary (employee_id, salary_id)	
VALUES (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1);


-- Таблица roles

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:
		
CREATE TABLE roles(
	id serial PRIMARY KEY,
	role_name int UNIQUE NOT NULL
);
	
ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar (30);

INSERT INTO roles (role_name)
VALUES ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		

--Таблица roles_employee

--Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками	

CREATE TABLE roles_employee(
	id serial PRIMARY KEY,
	employee_id int UNIQUE NOT NULL,
	role_id int NOT NULL,
	FOREIGN KEY (employee_id)
		REFERENCES employees(id),
	FOREIGN KEY (role_id)
		REFERENCES roles(id)
);

INSERT INTO roles_employee (employee_id, role_id) 
VALUES (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(14, 15),
		(55, 3),
		(12, 19),
		(8, 20),
		(29, 18),
		(32, 15),
		(15, 4),
		(60, 8),
		(66, 11),
		(47, 13),
		(4, 14),
		(48, 17),
		(25, 19),
		(44, 1),
		(33, 15),
		(28, 12),
		(62, 7),
		(59, 18),
		(40, 16),
		(39, 18),
		(64, 13),
		(53, 19),
		(35, 13),
		(27, 9),
		(36, 16),
		(13, 14),
		(57, 10),
		(18, 12),
		(49, 17);
