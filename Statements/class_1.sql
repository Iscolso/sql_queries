SELECT * FROM users;

SELECT users_name FROM users;

SELECT users_name, users_id FROM users;

SELECT DISTINCT * FROM users; 

SELECT * FROM users WHERE age = 15;

SELECT * FROM users ORDER BY ;
--usamos para ordernar los dato que queremos podemos agregar
--desc o asc para mayor a menor o visceversa

--LIKE cuando queremos que nos devuelva algo que se parece a cierta cosa a diferencia del WHERE que necesitamos completo 

--LIKE '%gmail.com' con el porcentaje hacemos una busqueda dinamica asi nos devolvera cualquier email que acabe en gmail.com 

--NOT lo usamos para cuando queremos que no se cumpla lo que pedimos, se puede cocatenar con AND o OR 

SELECT * FROM users WHERE NOT users_email = 'josecolso@gmail.com' AND users_age = 15;

SELECT * FROM users WHERE NOT users_email = 'josecolso@gmail.com' OR users_age = 15;

--LIMIT trae los primeros n datos de la tabla 

SELECT * FROM users WHERE NOT users_email = 'josecolso@gmail.com' LIMIT 3; /*nos trae los 3 primeros que cumplen esto*/






