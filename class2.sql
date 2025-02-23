-- Comentrarios en una linea con doble linea 

/* en varias 
lineas usamos 
la barra y el asterisco 
*/

--Comando de tipo NULL nos trae el campo que pedimos pero que este nulo 

SELECT * FROM users WHERE users_email IS NULL;

SELECT * FROM users WHERE users_email IS NOT NULL; 

--Comando MIN o MAX, nos trae el mayor de cada campo

SELECT MAX(users_age) FROM users;

SELECT MIN(users_age) FROM users;

-- Comando COUNT es capaz de contar nos trae cuantas filas tienen el campo que pedimos 

SELECT COUNT(age) FROM users;

-- Si las quiero sumar entonces usamos SUM 

SELECT SUM(age) FROM users;

-- para pedir la media es AVG 

SELECT AVG(age) FROM user;

-- Comado IN hace un filtrado donde conocemos los datos que queremos 

SELECT * FROM users WHERE users_name IN ('jose','Brais'); -- tenemos que estar 100 por ciento seguro si no usamos un LIKE y %

--Tenemos BETWEEN, nos sirve para resultados que esten entre dos valores 

SELECT * FROM users WHERE users_age BETWEEN 15 AND 27;

--Comando muy util para consultas mas complejas ALIAS 

SELECT users_name, init_date as 'Fecha de inicio de programacion ' FROM hello_mysql.users WHERE users_age BETWEEN 15 AND 27
 
--Tambien podemos CONCAT concatenar cadenas

SELECT CONCAT('users_name', ' ', 'users_lastname') AS 'Nombre completo' FROM hello_mysql.users;

CREATE TABLE person1 (
    id NOT NULL ...
);


