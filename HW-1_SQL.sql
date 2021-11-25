-- 1. ������� ��� ���� � ��� ������.
SELECT *
FROM students
-- 2. ������� ���� ��������� � �������
SELECT id, name
FROM students
-- 3. ������� ������ Id �������������
SELECT id
FROM students
-- 4. ������� ������ ��� �������������
SELECT name
FROM students
-- 5. ������� ������ email �������������
SELECT email
FROM students
-- 6. ������� ��� � email �������������
SELECT name, email
FROM students
-- 7. ������� id, ���, email � ���� �������� �������������
SELECT id, name, email, created_on
FROM students
-- 8. ������� ������������� ��� password 12333
SELECT *
FROM students
WHERE PASSWORD = '12333'
-- 9. ������� ������������� ������� ���� ������� 2021-03-26 00:00:00
SELECT *
FROM students
WHERE created_on = '2021-03-26 00:00:00'
-- 10. ������� ������������� ��� � ����� ���� ����� ����
SELECT *
FROM students
WHERE name LIKE '%����%'
-- 11. ������� ������������� ��� � ����� � ����� ���� 8
SELECT *
FROM students
WHERE name LIKE '%8'
-- 12. ������� ������������� ��� � ����� � ���� ����� �
SELECT *
FROM students
WHERE name LIKE '%a%' OR name LIKE '%�%'
-- 13. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00
SELECT *
FROM students
WHERE created_on = '2021-07-12 00:00:00'
-- 14. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � ����� ������ 1m313
SELECT *
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND PASSWORD = '1m313'
-- 15. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� Andrey
SELECT *
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%'
-- 16. ������� ������������� ������� ���� ������� 2021-07-12 00:00:00 � � ������� � ����� ���� ����� 8
SELECT *
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%'
-- 17. ������� ������������ � ������� id ����� 10
SELECT *
FROM students
WHERE id = 10
-- 18. ������� ������������ � ������� id ����� 53
SELECT *
FROM students
WHERE id = 10
-- 19. ������� ������������ � ������� id ������ 40
SELECT *
FROM students
WHERE id > 40
-- 20. ������� ������������ � ������� id ������ 30
SELECT *
FROM students
WHERE id < 30
-- 21. ������� ������������ � ������� id ������ 27 ��� ������ 88
SELECT *
FROM students
WHERE id < 27 OR id > 88
-- 22. ������� ������������ � ������� id ������ ���� ����� 37
SELECT *
FROM students
WHERE id <= 37
-- 23. ������� ������������ � ������� id ������ ���� ����� 37
SELECT *
FROM students
WHERE id >= 37
-- 24. ������� ������������ � ������� id ������ 80 �� ������ 90
SELECT *
FROM students
WHERE id > 80 AND id < 90
-- 25. ������� ������������ � ������� id ����� 80 � 90
SELECT *
FROM students
WHERE id BETWEEN 80 AND 90
-- 26. ������� ������������� ��� password ����� 12333, 1m313, 123313
SELECT *
FROM students
WHERE PASSWORD IN ('12333', '1m313', '123313')
-- 27. ������� ������������� ��� created_on ����� 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
SELECT *
FROM students
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')
-- 28. ������� ����������� id 
SELECT MIN(id)
FROM students
-- 29. ������� ������������.
SELECT MAX(id)
FROM students
-- 30. ������� ���������� �������������
SELECT COUNT(*)
FROM students
-- 31. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� ����������� ���� ���������� �������������.
SELECT id, name, created_on
FROM students
ORDER BY created_on
-- 32. ������� id ������������, ���, ���� �������� ������������. ������������� �� ������� �������� ���� ���������� �������������.
SELECT id, name, created_on 
FROM students
ORDER BY created_on DESC