--1
UPDATE usuarios
set id = 4
WHERE email = 'teste.123@gmail.com'

SELECT * FROM usuarios
WHERE email like 'teste.123@gmail.com';

--2
DELETE FROM usuarios
WHERE nome = 'Praia do Rosa';

SELECT * FROM usuarios
WHERE nome = 'Praia do Rosa';