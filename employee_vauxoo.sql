--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: kaiser; Tablespace: 
--

CREATE TABLE employee (
    id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(20),
    id_jefe integer
);


ALTER TABLE public.employee OWNER TO kaiser;

--
-- Name: employee_department; Type: TABLE; Schema: public; Owner: kaiser; Tablespace: 
--

CREATE TABLE employee_department (
    id integer NOT NULL,
    id_employee integer,
    name character varying(35),
    description character varying(40)
);


ALTER TABLE public.employee_department OWNER TO kaiser;

--
-- Name: employee_hobby; Type: TABLE; Schema: public; Owner: kaiser; Tablespace: 
--

CREATE TABLE employee_hobby (
    id integer NOT NULL,
    name character varying(20),
    description character varying(40)
);


ALTER TABLE public.employee_hobby OWNER TO kaiser;

--
-- Name: hobbies; Type: TABLE; Schema: public; Owner: kaiser; Tablespace: 
--

CREATE TABLE hobbies (
    id_employee integer NOT NULL,
    id_employeeh integer NOT NULL
);


ALTER TABLE public.hobbies OWNER TO kaiser;

--
-- Name: jefe; Type: TABLE; Schema: public; Owner: kaiser; Tablespace: 
--

CREATE TABLE jefe (
    id_jefe integer NOT NULL
)
INHERITS (employee);


ALTER TABLE public.jefe OWNER TO kaiser;

--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY employee (id, first_name, last_name, id_jefe) FROM stdin;
2	Mónica	Gutiérrez Méndez	1
1	Federico	Hernández García	4
3	Alejandro	Farías Castillo	4
4	Isela	Rodriguez Pérez	2
\.


--
-- Data for Name: employee_department; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY employee_department (id, id_employee, name, description) FROM stdin;
100001	1	Recursos Humanos	Gestiona los recursos humanos
100002	2	Sistemas	Administra el sistema de la empresa
100003	3	Finanzas	Administta los recursos financieros
100004	4	Comunicación y Difusión	Difunde información acerca de la empresa
100005	\N	Gerencia	Gestiona la empresa
100006	\N	logística	Planea los proyectos empresariales
\.


--
-- Data for Name: employee_hobby; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY employee_hobby (id, name, description) FROM stdin;
1	Bailar	Salsa, merengue o cumbia
2	Dibujar	Tipo anime, objetos y en 3D
3	Cantar	Música Pop y baladas
\.


--
-- Data for Name: hobbies; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY hobbies (id_employee, id_employeeh) FROM stdin;
1	1
1	3
2	1
2	2
2	3
3	1
3	2
4	1
4	3
\.


--
-- Data for Name: jefe; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY jefe (id, first_name, last_name, id_jefe) FROM stdin;
5	María Elena	González Perez	1
6	David	Estrada Méndez	2
7	Jorge Luis	Gamboa López	3
8	Karen	Orozco Lozano	4
\.


--
-- Name: employee_department_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY employee_department
    ADD CONSTRAINT employee_department_pkey PRIMARY KEY (id);


--
-- Name: employee_hobby_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY employee_hobby
    ADD CONSTRAINT employee_hobby_pkey PRIMARY KEY (id);


--
-- Name: employee_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY hobbies
    ADD CONSTRAINT hobbies_pkey PRIMARY KEY (id_employee, id_employeeh);


--
-- Name: jefe_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY jefe
    ADD CONSTRAINT jefe_pkey PRIMARY KEY (id_jefe);


--
-- Name: employee_department_id_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kaiser
--

ALTER TABLE ONLY employee_department
    ADD CONSTRAINT employee_department_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES employee(id);


--
-- Name: employee_id_jefe_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kaiser
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_id_jefe_fkey FOREIGN KEY (id_jefe) REFERENCES jefe(id_jefe) ON DELETE CASCADE;


--
-- Name: hobbies_id_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kaiser
--

ALTER TABLE ONLY hobbies
    ADD CONSTRAINT hobbies_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES employee(id) ON DELETE RESTRICT;


--
-- Name: hobbies_id_employeeh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kaiser
--

ALTER TABLE ONLY hobbies
    ADD CONSTRAINT hobbies_id_employeeh_fkey FOREIGN KEY (id_employeeh) REFERENCES employee_hobby(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

