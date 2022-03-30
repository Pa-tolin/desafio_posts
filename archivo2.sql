--PARTE 1--

--punto 1
CREATE DATABASE posts;

--punto 2
CREATE TABLE post(id INT, nombre_de_usuario VARCHAR(30), fecha_de_creacion DATE, contenido VARCHAR(200), descripcion VARCHAR(500), PRIMARY KEY(id)); 

--punto 3
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(1,'Pamela', '2022-03-29','datos de Pamela', 'Alta');
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(2,'Pamela', '2022-03-29','otros datos', 'Morena');
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(3,'Carlos', '2022-03-29','datos de Carlos', 'Ojos verdes');

--punto 4
ALTER TABLE post ADD titulo VARCHAR(25);

--punto 5
UPDATE post SET titulo='La Pamela' where id=1;
UPDATE post SET titulo='La Pamela' where id=2;
UPDATE post SET titulo='El Carlos' where id=3;

--punto 6
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(4,'Pedro', '2022-03-29','datos Pedro', 'Colorin', 'El Pedro');
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(5,'Pedro', '2022-03-29','otros datos', 'Simpatico', 'El Pedro');

--punto 7
DELETE FROM post WHERE nombre_de_usuario='Carlos';

--punto 8
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(3,'Carlos', '2022-03-29','otros datos', 'futbolista', 'El Carlos');

--PARTE 2--

--punto1
CREATE TABLE comentarios(id INT, fecha DATE, hora_de_creacion TIME, contenido VARCHAR(100), FOREIGN KEY (id) REFERENCES post(id)); 


--punto 2
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (1, '2022-03-29', '22:31', 'mas datos');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (1, '2022-03-29', '22:41', 'datos importantes');

INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (3, '2022-03-29', '22:41', 'mas datos');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (3, '2022-03-29', '22:45', 'datos importantes');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (3, '2022-03-29', '22:51', 'datos personales');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (3, '2022-03-29', '22:51', 'datos oficiales');

--punto 3
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(6,'Margarita', '2022-03-29','datos de Margarita', 'Rubia', 'Color de cabello');

--punto 4
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-03-29', '22:52', 'otros datos');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-03-29', '22:53', 'mas datos');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-03-29', '22:55', 'datos importantes');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-03-29', '22:58', 'datos personales');
INSERT INTO comentarios(id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-03-29', '22:59', 'datos oficiales');
