-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
SELECT e.employee_name, s.monthly_salary  
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id;


-- 2. Вывести всех работников у которых ЗП меньше 2000.

SELECT e.employee_name
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
WHERE s.monthly_salary < 2000;


-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

SELECT s.monthly_salary
FROM employee_salary AS e_s
	LEFT JOIN salary AS s
 	ON e_s.salary_id = s.id
 	LEFT JOIN employees AS e
 	ON e_s.employee_id = e.id
WHERE e.employee_name is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)	

SELECT s.monthly_salary
FROM employee_salary AS e_s
	LEFT JOIN salary AS s
 	ON e_s.salary_id = s.id
 	LEFT JOIN employees AS e
 	ON e_s.employee_id = e.id
WHERE e.employee_name is NULL AND s.monthly_salary < 2000;


-- 5. Найти всех работников кому не начислена ЗП.

SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	FULL OUTER JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	FULL OUTER JOIN salary AS s
	ON e_s.salary_id = s.id
WHERE e_s.id IS NULL;


-- 6. Вывести всех работников с названиями их должности.

SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id;
	

-- 7. Вывести имена и должность только Java разработчиков.

SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Java developer%';


-- 8. Вывести имена и должность только Python разработчиков.

SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id 
WHERE r.role_name LIKE '%Python%';


-- 9. Вывести имена и должность всех QA инженеров.

SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%QA%';


-- 10. Вывести имена и должность ручных QA инженеров.

SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Manual QA%';


-- 11. Вывести имена и должность автоматизаторов QA
SELECT e.employee_name, r.role_name
FROM employees AS e
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Automation QA%';


-- 12. Вывести имена и зарплаты Junior специалистов

SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Junior%';
	

-- 13. Вывести имена и зарплаты Middle специалистов
	
SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Middle%';


-- 14. Вывести имена и зарплаты Senior специалистов

SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e.id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Senior%';


-- 15. Вывести зарплаты Java разработчиков

SELECT s.monthly_salary
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Java developer';
 

-- 16. Вывести зарплаты Python разработчиков

SELECT s.monthly_salary
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Python developer';


-- 17. Вывести имена и зарплаты Junior Python разработчиков

SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Junior Python developer%';


-- 18. Вывести имена и зарплаты Middle JS разработчиков
	
SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Middle JavaScript developer%';
	

-- 19. Вывести имена и зарплаты Senior Java разработчиков

SELECT e.employee_name, s.monthly_salary
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id
	JOIN salary AS s
	ON e_s.salary_id = s.id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Senior Java developer';


-- 20. Вывести зарплаты Junior QA инженеров

SELECT s.monthly_salary
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE 'Junior%QA engineer';


-- 21. Вывести среднюю зарплату всех Junior специалистов

SELECT AVG(s.monthly_salary)
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%Junior%'


-- 22. Вывести сумму зарплат JS разработчиков

SELECT SUM(s.monthly_salary) 
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%JavaScript developer%';


-- 23. Вывести минимальную ЗП QA инженеров

SELECT MIN(s.monthly_salary)
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%QA engineer%';


-- 24. Вывести максимальную ЗП QA инженеров

SELECT MAX(s.monthly_salary)
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%QA engineer%';


-- 25. Вывести количество QA инженеров

SELECT COUNT(role_name)
FROM roles
WHERE role_name LIKE '%QA engineer%';


-- 26. Вывести количество Middle специалистов.

SELECT COUNT(role_name)
FROM roles
WHERE role_name LIKE '%Middle%';


-- 27. Вывести количество разработчиков

SELECT COUNT(role_name)
FROM roles
WHERE role_name LIKE '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM(s.monthly_salary)
FROM salary AS s
	JOIN employee_salary AS e_s
	ON s.id = e_s.salary_id
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
WHERE r.role_name LIKE '%developer%';


-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id 
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
	JOIN salary AS s 
	ON e_s.salary_id = s.id
ORDER BY s.monthly_salary;


-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id 
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
	JOIN salary AS s 
	ON e_s.salary_id = s.id
WHERE s.monthly_salary BETWEEN 1700 AND 2300
ORDER BY s.monthly_salary;


-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id 
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
	JOIN salary AS s 
	ON e_s.salary_id = s.id
WHERE s.monthly_salary < 2300
ORDER BY s.monthly_salary;


-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

SELECT e.employee_name, r.role_name, s.monthly_salary 
FROM employees AS e
	JOIN employee_salary AS e_s
	ON e.id = e_s.employee_id 
	JOIN roles_employee AS r_e
	ON e_s.employee_id = r_e.employee_id
	JOIN roles AS r
	ON r_e.role_id = r.id
	JOIN salary AS s 
	ON e_s.salary_id = s.id
WHERE s.monthly_salary IN (1100, 1500, 2000)
ORDER BY s.monthly_salary;
