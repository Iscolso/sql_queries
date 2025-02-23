-- Ahora vamos a ver relaciones en bases de datos

 -- Relaciones 1:1, 1:N, N:M, Autoreferencia (No es muy habitual)

 -- Crear Relaciones en bases de datos 

-- 1:1
 CREATE TABLE dni(
    dni_id int PRIMARY KEY AUTO_INCREMENT,
    dni_number int NOT NULL,
    users_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(users_id) REFERENCES users(users_id)
 );

 --N:M

 CREATE TABLE users_languages(
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    users_id int,
    languages_id int,
    FOREIGN KEY (users_id) REFERENCES users(users_id),
    FOREIGN KEY (languages_id) REFERENCES languages(languages_id)
UNIQUE users_id, languages_id
);


-- PARA RELACIONARLAS

UPDATE users SET company_id = 1 WHERE users_id = 2;

INSERT INTO users_languages (users_id,language_id) VALUES (1,1);
INSERT INTO users_languages (users_id,language_id) VALUES (1,2);
INSERT INTO users_languages (users_id,language_id) VALUES (1,3);
INSERT INTO users_languages (users_id,language_id) VALUES (2,1);
INSERT INTO users_languages (users_id,language_id) VALUES (2,3);

--Los JOIN 
--INNER JOIN sirve para obtener los datos comunes en dos o mas tablas 

SELECT * FROM users
INNER JOIN dni
ON users.users_id = dni.users_id;

SELECT users_name, dni_number FROM users
JOIN dni
ON users.users_id = dni.users_id 
ORDER BY users_age ASC;

-- Se pueden hacer lo mas complejo que queramos 

SELECT * FROM users
JOIN companies 
ON users.company_id = companies.company_id

-- Relacion con tercera tabla, trae los nombres de los programadores
-- y el lenguaje que conoce cada uno 

SELECT users.users_name, languages.name
FROM users_languages
JOIN users ON users_languages.users_id=users.users_id
JOIN languages ON users_languages.language_id=languages.language_id


--LEFT JOIN permite traer datos aunque esten nulos, porque trae la tabla de la izquierda

SELECT users_name, dni_number FROM dni
LEFT JOIN users 
ON users.users_id = dni.users_id

SELECT users.users_name, languages.name
FROM users
LEFT JOIN users_languages ON users.users_id=users_languages.users_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id

--RIGHT JOIN 

SELECT users.users_name, languages.name
FROM users
RIGHT JOIN users_languages ON users.users_id=users_languages.users_id
RIGHT JOIN languages ON users_languages.language_id=languages.language_id

--UNION Se queda con todo 

SELECT users.users_id AS u_users_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni 
ON users.user_id = dni.user_id
UNION 
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users 
RIGHT JOIN dni
ON users.user_id = dni.user_id;  

