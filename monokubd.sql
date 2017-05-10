--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_sit_id_1344fc60_fk_propiedades_sit_id;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_fuente_id_bf095b22_fk_propiedades_fuente_id;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyecto_sector_id_0aa9ffbd_fk_propiedades_sector_codigo_sector;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT "D29137d071a432ef5d48641f7c8d64bb";
DROP INDEX public.proyectos_proyecto_sector_id_0aa9ffbd_like;
DROP INDEX public.proyectos_proyecto_e65d09da;
DROP INDEX public.proyectos_proyecto_72069cec;
DROP INDEX public.proyectos_proyecto_5b1d2adf;
DROP INDEX public.proyectos_proyecto_25bbe6e2;
DROP INDEX public.propiedades_sector_codigo_sector_0bdd0f03_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_e8701ad4;
DROP INDEX public.auth_user_user_permissions_8373b171;
DROP INDEX public.auth_user_groups_e8701ad4;
DROP INDEX public.auth_user_groups_0e939a4f;
DROP INDEX public.auth_permission_417f1b1c;
DROP INDEX public.auth_group_permissions_8373b171;
DROP INDEX public.auth_group_permissions_0e939a4f;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_pkey;
ALTER TABLE ONLY public.propiedades_unidad_ejecutora DROP CONSTRAINT propiedades_unidad_ejecutora_pkey;
ALTER TABLE ONLY public.propiedades_sit DROP CONSTRAINT propiedades_sit_pkey;
ALTER TABLE ONLY public.propiedades_sector DROP CONSTRAINT propiedades_sector_pkey;
ALTER TABLE ONLY public.propiedades_sector2 DROP CONSTRAINT propiedades_sector2_pkey;
ALTER TABLE ONLY public.propiedades_fuente DROP CONSTRAINT propiedades_fuente_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.proyectos_proyecto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.propiedades_unidad_ejecutora ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.propiedades_sit ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.propiedades_sector2 ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.propiedades_fuente ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.proyectos_proyecto_id_seq;
DROP TABLE public.proyectos_proyecto;
DROP SEQUENCE public.propiedades_unidad_ejecutora_id_seq;
DROP TABLE public.propiedades_unidad_ejecutora;
DROP SEQUENCE public.propiedades_sit_id_seq;
DROP TABLE public.propiedades_sit;
DROP SEQUENCE public.propiedades_sector2_id_seq;
DROP TABLE public.propiedades_sector2;
DROP TABLE public.propiedades_sector;
DROP SEQUENCE public.propiedades_fuente_id_seq;
DROP TABLE public.propiedades_fuente;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: propiedades_fuente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propiedades_fuente (
    id integer NOT NULL,
    nombre_fuente character varying(100) NOT NULL
);


ALTER TABLE propiedades_fuente OWNER TO postgres;

--
-- Name: propiedades_fuente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE propiedades_fuente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE propiedades_fuente_id_seq OWNER TO postgres;

--
-- Name: propiedades_fuente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE propiedades_fuente_id_seq OWNED BY propiedades_fuente.id;


--
-- Name: propiedades_sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propiedades_sector (
    codigo_sector character varying(50) NOT NULL,
    nombre_sector character varying(300) NOT NULL
);


ALTER TABLE propiedades_sector OWNER TO postgres;

--
-- Name: propiedades_sector2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propiedades_sector2 (
    id integer NOT NULL,
    codigo_sector character varying(50) NOT NULL,
    nombre_sector character varying(300) NOT NULL
);


ALTER TABLE propiedades_sector2 OWNER TO postgres;

--
-- Name: propiedades_sector2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE propiedades_sector2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE propiedades_sector2_id_seq OWNER TO postgres;

--
-- Name: propiedades_sector2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE propiedades_sector2_id_seq OWNED BY propiedades_sector2.id;


--
-- Name: propiedades_sit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propiedades_sit (
    id integer NOT NULL,
    nombre_sit character varying(10) NOT NULL
);


ALTER TABLE propiedades_sit OWNER TO postgres;

--
-- Name: propiedades_sit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE propiedades_sit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE propiedades_sit_id_seq OWNER TO postgres;

--
-- Name: propiedades_sit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE propiedades_sit_id_seq OWNED BY propiedades_sit.id;


--
-- Name: propiedades_unidad_ejecutora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE propiedades_unidad_ejecutora (
    id integer NOT NULL,
    nombre_unidad character varying(200) NOT NULL
);


ALTER TABLE propiedades_unidad_ejecutora OWNER TO postgres;

--
-- Name: propiedades_unidad_ejecutora_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE propiedades_unidad_ejecutora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE propiedades_unidad_ejecutora_id_seq OWNER TO postgres;

--
-- Name: propiedades_unidad_ejecutora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE propiedades_unidad_ejecutora_id_seq OWNED BY propiedades_unidad_ejecutora.id;


--
-- Name: proyectos_proyecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proyectos_proyecto (
    id integer NOT NULL,
    anio integer NOT NULL,
    prog integer NOT NULL,
    subp integer NOT NULL,
    proy integer NOT NULL,
    subp2 integer NOT NULL,
    rec integer NOT NULL,
    nombre_proyecto character varying(200) NOT NULL,
    apropiacion_inicial bigint NOT NULL,
    apropiacion_vigente bigint NOT NULL,
    compromiso bigint NOT NULL,
    obligaciones bigint NOT NULL,
    pagos bigint NOT NULL,
    fuente_id integer NOT NULL,
    sector_id character varying(50) NOT NULL,
    sit_id integer NOT NULL,
    unidad_ejecutora_id integer NOT NULL
);


ALTER TABLE proyectos_proyecto OWNER TO postgres;

--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proyectos_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proyectos_proyecto_id_seq OWNER TO postgres;

--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proyectos_proyecto_id_seq OWNED BY proyectos_proyecto.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: propiedades_fuente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_fuente ALTER COLUMN id SET DEFAULT nextval('propiedades_fuente_id_seq'::regclass);


--
-- Name: propiedades_sector2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_sector2 ALTER COLUMN id SET DEFAULT nextval('propiedades_sector2_id_seq'::regclass);


--
-- Name: propiedades_sit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_sit ALTER COLUMN id SET DEFAULT nextval('propiedades_sit_id_seq'::regclass);


--
-- Name: propiedades_unidad_ejecutora id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_unidad_ejecutora ALTER COLUMN id SET DEFAULT nextval('propiedades_unidad_ejecutora_id_seq'::regclass);


--
-- Name: proyectos_proyecto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add fuente	7	add_fuente
20	Can change fuente	7	change_fuente
21	Can delete fuente	7	delete_fuente
22	Can add sector	8	add_sector
23	Can change sector	8	change_sector
24	Can delete sector	8	delete_sector
25	Can add sit	9	add_sit
26	Can change sit	9	change_sit
27	Can delete sit	9	delete_sit
28	Can add unidad_ ejecutora	10	add_unidad_ejecutora
29	Can change unidad_ ejecutora	10	change_unidad_ejecutora
30	Can delete unidad_ ejecutora	10	delete_unidad_ejecutora
31	Can add proyecto	11	add_proyecto
32	Can change proyecto	11	change_proyecto
33	Can delete proyecto	11	delete_proyecto
34	Can add sector2	12	add_sector2
35	Can change sector2	12	change_sector2
36	Can delete sector2	12	delete_sector2
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$30000$PzHlGDAtaQiE$RmEzCJD4Zh3oSMPBEJbh3Jf592fXG3fZwU/reOq4WoY=	2017-05-10 15:28:45.115-05	f	lina				f	t	2017-05-10 15:22:42-05
2	pbkdf2_sha256$30000$26YLFTBZqnIA$3VhWKsVXnDriHHXgiyeuLdcHAcZB/hSi1bmJxrUfJNc=	2017-05-10 16:17:25.335-05	t	admin			linamtoquica@gmail.com	t	t	2017-05-10 10:42:38.224-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 3, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	3	1
2	3	2
3	3	3
4	3	10
5	3	11
6	3	12
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 6, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-05-10 10:44:15.066-05	1	lina	3		3	2
2	2017-05-10 15:22:42.875-05	3	lina	1	[{"added": {}}]	3	2
3	2017-05-10 15:24:04.488-05	3	lina	2	[]	3	2
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 3, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	propiedades	fuente
8	propiedades	sector
9	propiedades	sit
10	propiedades	unidad_ejecutora
11	proyectos	proyecto
12	propiedades	sector2
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-05-10 10:40:45.101-05
2	auth	0001_initial	2017-05-10 10:40:48.084-05
3	admin	0001_initial	2017-05-10 10:40:48.483-05
4	admin	0002_logentry_remove_auto_add	2017-05-10 10:40:48.515-05
5	contenttypes	0002_remove_content_type_name	2017-05-10 10:40:48.568-05
6	auth	0002_alter_permission_name_max_length	2017-05-10 10:40:48.585-05
7	auth	0003_alter_user_email_max_length	2017-05-10 10:40:48.6-05
8	auth	0004_alter_user_username_opts	2017-05-10 10:40:48.615-05
9	auth	0005_alter_user_last_login_null	2017-05-10 10:40:48.629-05
10	auth	0006_require_contenttypes_0002	2017-05-10 10:40:48.632-05
11	auth	0007_alter_validators_add_error_messages	2017-05-10 10:40:48.646-05
12	auth	0008_alter_user_username_max_length	2017-05-10 10:40:48.872-05
13	sessions	0001_initial	2017-05-10 10:40:49.416-05
14	propiedades	0001_initial	2017-05-10 11:31:04.316-05
15	proyectos	0001_initial	2017-05-10 11:44:33.681-05
16	proyectos	0002_auto_20170510_1544	2017-05-10 15:56:04.082-05
17	proyectos	0003_auto_20170510_1545	2017-05-10 15:56:04.114-05
18	proyectos	0004_auto_20170510_1555	2017-05-10 15:56:04.144-05
19	proyectos	0005_auto_20170510_1555	2017-05-10 15:56:04.175-05
20	propiedades	0002_sector2	2017-05-10 15:57:19.899-05
21	proyectos	0006_auto_20170510_1557	2017-05-10 15:57:19.951-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
z1g2onmmm9v80ob755enrmfkc78bf3zc	OWI4YjUwNGFmNmE2ZjkzYTQ3NmM3NjMxNjVlYjNlZGU3NjZmNjAwODp7Il9hdXRoX3VzZXJfaGFzaCI6ImUyZDY5Mjg2ZGZiNWExZmRlMGNiZTE1MTNlYjY0OGZkMDE4N2RlNDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-05-24 10:43:25.412-05
lyxzj1jdu9d5hktbrzqlqi9zjdecmxaa	NTkxODkzMDVlNjYyMjVhZDg3YjZhOTNlZTBhZTg5ZWI3NWJiYTE2ZTp7fQ==	2017-05-24 11:19:38.915-05
rj6y58onm6dzq4piuf7kwkqkv4f91u4m	OWI4YjUwNGFmNmE2ZjkzYTQ3NmM3NjMxNjVlYjNlZGU3NjZmNjAwODp7Il9hdXRoX3VzZXJfaGFzaCI6ImUyZDY5Mjg2ZGZiNWExZmRlMGNiZTE1MTNlYjY0OGZkMDE4N2RlNDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-05-24 16:17:25.34-05
\.


--
-- Data for Name: propiedades_fuente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propiedades_fuente (id, nombre_fuente) FROM stdin;
3	Nación
\.


--
-- Name: propiedades_fuente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('propiedades_fuente_id_seq', 3, true);


--
-- Data for Name: propiedades_sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propiedades_sector (codigo_sector, nombre_sector) FROM stdin;
10101	CONGRESO DE LA REPÚBLICA
\.


--
-- Data for Name: propiedades_sector2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propiedades_sector2 (id, codigo_sector, nombre_sector) FROM stdin;
1	10101	CONGRESO DE LA REPÚBLICA
\.


--
-- Name: propiedades_sector2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('propiedades_sector2_id_seq', 1, true);


--
-- Data for Name: propiedades_sit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propiedades_sit (id, nombre_sit) FROM stdin;
2	C
\.


--
-- Name: propiedades_sit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('propiedades_sit_id_seq', 2, true);


--
-- Data for Name: propiedades_unidad_ejecutora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY propiedades_unidad_ejecutora (id, nombre_unidad) FROM stdin;
1	CONGRESO DE LA REPUBLICA - SENADO DE LA REPUBLICA
\.


--
-- Name: propiedades_unidad_ejecutora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('propiedades_unidad_ejecutora_id_seq', 1, true);


--
-- Data for Name: proyectos_proyecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proyectos_proyecto (id, anio, prog, subp, proy, subp2, rec, nombre_proyecto, apropiacion_inicial, apropiacion_vigente, compromiso, obligaciones, pagos, fuente_id, sector_id, sit_id, unidad_ejecutora_id) FROM stdin;
3	2002	500	1000	3	0	10	IMPLANTACION DEL PROGRAMA DE MODERNIZACION DEL CONGRESO. PREVIO CONCEPTO DNP	0	800000000	0	0	0	3	10101	2	1
\.


--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proyectos_proyecto_id_seq', 4, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: propiedades_fuente propiedades_fuente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_fuente
    ADD CONSTRAINT propiedades_fuente_pkey PRIMARY KEY (id);


--
-- Name: propiedades_sector2 propiedades_sector2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_sector2
    ADD CONSTRAINT propiedades_sector2_pkey PRIMARY KEY (id);


--
-- Name: propiedades_sector propiedades_sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_sector
    ADD CONSTRAINT propiedades_sector_pkey PRIMARY KEY (codigo_sector);


--
-- Name: propiedades_sit propiedades_sit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_sit
    ADD CONSTRAINT propiedades_sit_pkey PRIMARY KEY (id);


--
-- Name: propiedades_unidad_ejecutora propiedades_unidad_ejecutora_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY propiedades_unidad_ejecutora
    ADD CONSTRAINT propiedades_unidad_ejecutora_pkey PRIMARY KEY (id);


--
-- Name: proyectos_proyecto proyectos_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: propiedades_sector_codigo_sector_0bdd0f03_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX propiedades_sector_codigo_sector_0bdd0f03_like ON propiedades_sector USING btree (codigo_sector varchar_pattern_ops);


--
-- Name: proyectos_proyecto_25bbe6e2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proyectos_proyecto_25bbe6e2 ON proyectos_proyecto USING btree (sit_id);


--
-- Name: proyectos_proyecto_5b1d2adf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proyectos_proyecto_5b1d2adf ON proyectos_proyecto USING btree (sector_id);


--
-- Name: proyectos_proyecto_72069cec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proyectos_proyecto_72069cec ON proyectos_proyecto USING btree (fuente_id);


--
-- Name: proyectos_proyecto_e65d09da; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proyectos_proyecto_e65d09da ON proyectos_proyecto USING btree (unidad_ejecutora_id);


--
-- Name: proyectos_proyecto_sector_id_0aa9ffbd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proyectos_proyecto_sector_id_0aa9ffbd_like ON proyectos_proyecto USING btree (sector_id varchar_pattern_ops);


--
-- Name: proyectos_proyecto D29137d071a432ef5d48641f7c8d64bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT "D29137d071a432ef5d48641f7c8d64bb" FOREIGN KEY (unidad_ejecutora_id) REFERENCES propiedades_unidad_ejecutora(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proyecto proyecto_sector_id_0aa9ffbd_fk_propiedades_sector_codigo_sector; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyecto_sector_id_0aa9ffbd_fk_propiedades_sector_codigo_sector FOREIGN KEY (sector_id) REFERENCES propiedades_sector(codigo_sector) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proyecto proyectos_proyecto_fuente_id_bf095b22_fk_propiedades_fuente_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_fuente_id_bf095b22_fk_propiedades_fuente_id FOREIGN KEY (fuente_id) REFERENCES propiedades_fuente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proyecto proyectos_proyecto_sit_id_1344fc60_fk_propiedades_sit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_sit_id_1344fc60_fk_propiedades_sit_id FOREIGN KEY (sit_id) REFERENCES propiedades_sit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

