--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2017-03-01 10:44:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

ALTER SCHEMA public OWNER TO postgres;
COMMENT ON SCHEMA public IS 'standard public schema';

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 17689)
-- Name: actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE actions (
    id_actions integer NOT NULL,
    nom_actions character varying(10)
);


ALTER TABLE actions OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 17687)
-- Name: actions_id_actions_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actions_id_actions_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE actions_id_actions_seq OWNER TO postgres;

--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 181
-- Name: actions_id_actions_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actions_id_actions_seq OWNED BY actions.id_actions;


--
-- TOC entry 184 (class 1259 OID 17698)
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE admin (
    id_admin integer NOT NULL,
    nom character varying(255),
    pseudo character varying(255),
    mot_pass character varying(255)
);


ALTER TABLE admin OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 17696)
-- Name: admin_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE admin_id_admin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE admin_id_admin_seq OWNER TO postgres;

--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 183
-- Name: admin_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE admin_id_admin_seq OWNED BY admin.id_admin;


--
-- TOC entry 186 (class 1259 OID 17710)
-- Name: biens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE biens (
    id_biens integer NOT NULL,
    nom character varying(255),
    description character varying(255),
    lieux character varying(255),
    surfaces character varying(255),
    prix numeric,
    situation boolean
);


ALTER TABLE biens OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17708)
-- Name: biens_id_biens_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE biens_id_biens_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE biens_id_biens_seq OWNER TO postgres;

--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 185
-- Name: biens_id_biens_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE biens_id_biens_seq OWNED BY biens.id_biens;


--
-- TOC entry 188 (class 1259 OID 17722)
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clients (
    id_clients integer NOT NULL,
    nom_prenoms character varying(255),
    date_naiss date,
    sexe character varying(10),
    adresse character varying(255),
    metier character varying(255),
    pseudo character varying(255),
    mdp character varying(20)
);


ALTER TABLE clients OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17720)
-- Name: clients_id_clients_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE clients_id_clients_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE clients_id_clients_seq OWNER TO postgres;

--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 187
-- Name: clients_id_clients_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE clients_id_clients_seq OWNED BY clients.id_clients;


--
-- TOC entry 190 (class 1259 OID 17734)
-- Name: meubles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE meubles (
    id_meubles integer NOT NULL,
    nom_meuble character varying(255),
    description character varying(255),
    prix numeric,
    situation boolean
);


ALTER TABLE meubles OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17732)
-- Name: meubles_id_meubles_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE meubles_id_meubles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meubles_id_meubles_seq OWNER TO postgres;

--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 189
-- Name: meubles_id_meubles_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE meubles_id_meubles_seq OWNED BY meubles.id_meubles;


--
-- TOC entry 192 (class 1259 OID 17746)
-- Name: valider_biens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE valider_biens (
    id_valider_bien integer NOT NULL,
    id_cli integer,
    id_action integer,
    id_bien integer,
    prix_ancien numeric,
    prix_ctuel numeric
);


ALTER TABLE valider_biens OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 17744)
-- Name: valider_biens_id_valider_bien_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE valider_biens_id_valider_bien_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE valider_biens_id_valider_bien_seq OWNER TO postgres;

--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 191
-- Name: valider_biens_id_valider_bien_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE valider_biens_id_valider_bien_seq OWNED BY valider_biens.id_valider_bien;


--
-- TOC entry 194 (class 1259 OID 17758)
-- Name: valider_meubles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE valider_meubles (
    id_valider_meubles integer NOT NULL,
    id_cli integer,
    id_action integer,
    id_meuble integer,
    prix_ancien numeric,
    prix_actuel numeric
);


ALTER TABLE valider_meubles OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17756)
-- Name: valider_meubles_id_valider_meubles_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE valider_meubles_id_valider_meubles_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE valider_meubles_id_valider_meubles_seq OWNER TO postgres;

--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 193
-- Name: valider_meubles_id_valider_meubles_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE valider_meubles_id_valider_meubles_seq OWNED BY valider_meubles.id_valider_meubles;


--
-- TOC entry 2023 (class 2604 OID 17692)
-- Name: id_actions; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actions ALTER COLUMN id_actions SET DEFAULT nextval('actions_id_actions_seq'::regclass);


--
-- TOC entry 2024 (class 2604 OID 17701)
-- Name: id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin ALTER COLUMN id_admin SET DEFAULT nextval('admin_id_admin_seq'::regclass);


--
-- TOC entry 2025 (class 2604 OID 17713)
-- Name: id_biens; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY biens ALTER COLUMN id_biens SET DEFAULT nextval('biens_id_biens_seq'::regclass);


--
-- TOC entry 2026 (class 2604 OID 17725)
-- Name: id_clients; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clients ALTER COLUMN id_clients SET DEFAULT nextval('clients_id_clients_seq'::regclass);


--
-- TOC entry 2027 (class 2604 OID 17737)
-- Name: id_meubles; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meubles ALTER COLUMN id_meubles SET DEFAULT nextval('meubles_id_meubles_seq'::regclass);


--
-- TOC entry 2028 (class 2604 OID 17749)
-- Name: id_valider_bien; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valider_biens ALTER COLUMN id_valider_bien SET DEFAULT nextval('valider_biens_id_valider_bien_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 17761)
-- Name: id_valider_meubles; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valider_meubles ALTER COLUMN id_valider_meubles SET DEFAULT nextval('valider_meubles_id_valider_meubles_seq'::regclass);


--
-- TOC entry 2166 (class 0 OID 17689)
-- Dependencies: 182
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 181
-- Name: actions_id_actions_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actions_id_actions_seq', 1, false);


--
-- TOC entry 2168 (class 0 OID 17698)
-- Dependencies: 184
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 183
-- Name: admin_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('admin_id_admin_seq', 1, false);


--
-- TOC entry 2170 (class 0 OID 17710)
-- Dependencies: 186
-- Data for Name: biens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2196 (class 0 OID 0)
-- Dependencies: 185
-- Name: biens_id_biens_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('biens_id_biens_seq', 1, false);


--
-- TOC entry 2172 (class 0 OID 17722)
-- Dependencies: 188
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2197 (class 0 OID 0)
-- Dependencies: 187
-- Name: clients_id_clients_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clients_id_clients_seq', 1, false);


--
-- TOC entry 2174 (class 0 OID 17734)
-- Dependencies: 190
-- Data for Name: meubles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 189
-- Name: meubles_id_meubles_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('meubles_id_meubles_seq', 1, false);


--
-- TOC entry 2176 (class 0 OID 17746)
-- Dependencies: 192
-- Data for Name: valider_biens; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 191
-- Name: valider_biens_id_valider_bien_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('valider_biens_id_valider_bien_seq', 1, false);


--
-- TOC entry 2178 (class 0 OID 17758)
-- Dependencies: 194
-- Data for Name: valider_meubles; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 193
-- Name: valider_meubles_id_valider_meubles_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('valider_meubles_id_valider_meubles_seq', 1, false);


--
-- TOC entry 2032 (class 2606 OID 17694)
-- Name: pk_actions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actions
    ADD CONSTRAINT pk_actions PRIMARY KEY (id_actions);


--
-- TOC entry 2035 (class 2606 OID 17706)
-- Name: pk_admin; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY admin
    ADD CONSTRAINT pk_admin PRIMARY KEY (id_admin);


--
-- TOC entry 2038 (class 2606 OID 17718)
-- Name: pk_biens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY biens
    ADD CONSTRAINT pk_biens PRIMARY KEY (id_biens);


--
-- TOC entry 2041 (class 2606 OID 17730)
-- Name: pk_clients; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clients
    ADD CONSTRAINT pk_clients PRIMARY KEY (id_clients);


--
-- TOC entry 2044 (class 2606 OID 17742)
-- Name: pk_meubles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meubles
    ADD CONSTRAINT pk_meubles PRIMARY KEY (id_meubles);


--
-- TOC entry 2046 (class 2606 OID 17754)
-- Name: pk_valider_biens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valider_biens
    ADD CONSTRAINT pk_valider_biens PRIMARY KEY (id_valider_bien);


--
-- TOC entry 2049 (class 2606 OID 17766)
-- Name: pk_valider_meubles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY valider_meubles
    ADD CONSTRAINT pk_valider_meubles PRIMARY KEY (id_valider_meubles);


--
-- TOC entry 2030 (class 1259 OID 17695)
-- Name: actions_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX actions_pk ON actions USING btree (id_actions);


--
-- TOC entry 2033 (class 1259 OID 17707)
-- Name: admin_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX admin_pk ON admin USING btree (id_admin);


--
-- TOC entry 2036 (class 1259 OID 17719)
-- Name: biens_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX biens_pk ON biens USING btree (id_biens);


--
-- TOC entry 2039 (class 1259 OID 17731)
-- Name: clients_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX clients_pk ON clients USING btree (id_clients);


--
-- TOC entry 2042 (class 1259 OID 17743)
-- Name: meubles_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX meubles_pk ON meubles USING btree (id_meubles);


--
-- TOC entry 2047 (class 1259 OID 17755)
-- Name: valider_biens_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX valider_biens_pk ON valider_biens USING btree (id_valider_bien);


--
-- TOC entry 2050 (class 1259 OID 17767)
-- Name: valider_meubles_pk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX valider_meubles_pk ON valider_meubles USING btree (id_valider_meubles);


--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-03-01 10:44:12

--
-- PostgreSQL database dump complete
--

