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
    last_name character varying(20)
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
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: kaiser
--

COPY employee (id, first_name, last_name) FROM stdin;
1	Federico	Hernández García
2	Mónica	Gutiérrez Méndez
3	Alejandro	Farías Castillo
4	Isela	Rodriguez Pérez
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
-- Name: employee_department_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY employee_department
    ADD CONSTRAINT employee_department_pkey PRIMARY KEY (id);


--
-- Name: employee_pkey; Type: CONSTRAINT; Schema: public; Owner: kaiser; Tablespace: 
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: employee_department_id_employee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kaiser
--

ALTER TABLE ONLY employee_department
    ADD CONSTRAINT employee_department_id_employee_fkey FOREIGN KEY (id_employee) REFERENCES employee(id);


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

