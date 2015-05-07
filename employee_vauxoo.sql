-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_department (
	id integer,
	name character varying(35),
	description character varying(40),
	PRIMARY KEY (id)
);

CREATE TABLE employee (
	id integer PRIMARY KEY,
	first_name character varying(20),
	last_name character varying(20),
	jefe integer REFERENCES employee(id),
	id_employee_depart integer REFERENCES employee_department(id)
);

INSERT INTO employee VALUES (000001,'Federico','Hernández García',NULL),
	(000002,'Mónica','Gutiérrez Méndez',000001),
	(000003,'Alejandro','Farías Castillo',000003),
	(000004,'Isela','Rodriguez Pérez',000001

);


INSERT INTO employee_department VALUES (100001,'Recursos Humanos','Gestiona los recursos humanos'),
	(100002,'Sistemas','Administra el sistema de la empresa'),
	(100003,'Finanzas','Administta los recursos financieros'),
	(100004,'Comunicación y Difusión','Difunde información acerca de la empresa'),
	(100005,'Gerencia','Gestiona la empresa'),
	(100006,'logística','Planea los proyectos empresariales');

CREATE TABLE employee_hobby(
	id integer,
	name character varying(20),
	description character varying(40),
	PRIMARY KEY (id)
);

CREATE TABLE hobbies (
	id_employee integer REFERENCES employee(id) ON DELETE RESTRICT,
	id_employeeh integer REFERENCES employee_hobby(id) ON DELETE CASCADE,
	PRIMARY KEY (id_employee, id_employeeh)
);

INSERT INTO employee_hobby VALUES(000001,'Bailar','Salsa, merengue o cumbia'),
	(000002,'Dibujar','Tipo anime, objetos y en 3D'),
	(000003,'Cantar','Música Pop y baladas');

INSERT INTO hobbies VALUES(000001,000001),
	(000001,000003),
	(000002,000002),
	(000003,000002);


-- ...
