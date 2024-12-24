--
-- PostgreSQL database dump
--

-- Dumped from database version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: app_games; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.app_games (
    id integer NOT NULL,
    game_id integer NOT NULL,
    date character varying(10) NOT NULL,
    "homeTeam" integer NOT NULL,
    "awayTeam" integer NOT NULL
);


ALTER TABLE public.app_games OWNER TO okcapplicant;

--
-- Name: app_games_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.app_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_games_id_seq OWNER TO okcapplicant;

--
-- Name: app_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.app_games_id_seq OWNED BY public.app_games.id;


--
-- Name: app_player; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.app_player (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.app_player OWNER TO okcapplicant;

--
-- Name: app_player_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.app_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_player_id_seq OWNER TO okcapplicant;

--
-- Name: app_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.app_player_id_seq OWNED BY public.app_player.id;


--
-- Name: app_player_stat; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.app_player_stat (
    id integer NOT NULL,
    "isStarter" boolean NOT NULL,
    minutes integer NOT NULL,
    points integer NOT NULL,
    assists integer NOT NULL,
    "offensiveRebounds" integer NOT NULL,
    "defensiveRebounds" integer NOT NULL,
    steals integer NOT NULL,
    blocks integer NOT NULL,
    turnovers integer NOT NULL,
    "defensiveFouls" integer NOT NULL,
    "offensiveFouls" integer NOT NULL,
    "freeThrowsMade" integer NOT NULL,
    "freeThrowsAttempted" integer NOT NULL,
    "twoPointersMade" integer NOT NULL,
    "twoPointersAttempted" integer NOT NULL,
    "threePointersMade" integer NOT NULL,
    "threePointersAttempted" integer NOT NULL,
    game_id integer NOT NULL,
    player_id integer NOT NULL
);


ALTER TABLE public.app_player_stat OWNER TO okcapplicant;

--
-- Name: app_player_stat_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.app_player_stat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_player_stat_id_seq OWNER TO okcapplicant;

--
-- Name: app_player_stat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.app_player_stat_id_seq OWNED BY public.app_player_stat.id;


--
-- Name: app_shots; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.app_shots (
    id integer NOT NULL,
    game_id integer NOT NULL,
    player_id integer NOT NULL,
    "isMake" boolean NOT NULL,
    "locationX" numeric(10,2) NOT NULL,
    "locationY" numeric(10,2) NOT NULL
);


ALTER TABLE public.app_shots OWNER TO okcapplicant;

--
-- Name: app_shots_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.app_shots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_shots_id_seq OWNER TO okcapplicant;

--
-- Name: app_shots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.app_shots_id_seq OWNED BY public.app_shots.id;


--
-- Name: app_team; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.app_team (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.app_team OWNER TO okcapplicant;

--
-- Name: app_team_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.app_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_team_id_seq OWNER TO okcapplicant;

--
-- Name: app_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.app_team_id_seq OWNED BY public.app_team.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO okcapplicant;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO okcapplicant;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO okcapplicant;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO okcapplicant;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO okcapplicant;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO okcapplicant;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO okcapplicant;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO okcapplicant;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO okcapplicant;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO okcapplicant;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO okcapplicant;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO okcapplicant;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO okcapplicant;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO okcapplicant;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO okcapplicant;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO okcapplicant;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO okcapplicant;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: okcapplicant
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO okcapplicant;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: okcapplicant
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: okcapplicant
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO okcapplicant;

--
-- Name: app_games id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_games ALTER COLUMN id SET DEFAULT nextval('public.app_games_id_seq'::regclass);


--
-- Name: app_player id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_player ALTER COLUMN id SET DEFAULT nextval('public.app_player_id_seq'::regclass);


--
-- Name: app_player_stat id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_player_stat ALTER COLUMN id SET DEFAULT nextval('public.app_player_stat_id_seq'::regclass);


--
-- Name: app_shots id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_shots ALTER COLUMN id SET DEFAULT nextval('public.app_shots_id_seq'::regclass);


--
-- Name: app_team id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_team ALTER COLUMN id SET DEFAULT nextval('public.app_team_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: app_games; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.app_games (id, game_id, date, "homeTeam", "awayTeam") FROM stdin;
1	1	2022-12-19	1	2
2	2	2022-12-21	1	2
3	3	2023-02-10	2	1
4	4	2023-03-26	2	1
\.


--
-- Data for Name: app_player; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.app_player (id, name) FROM stdin;
1	Michael Jordan
2	Tweety
3	Bugs Bunny
4	Daffy Duck
5	Sniffles
6	Yosemite Sam
7	Road Runner
8	Porky Pig
9	Sylvester
10	Lola Bunny
11	Wile E. Coyote
12	Bill Murray
13	Barnyard Dawg
14	Tasmanian Devil
15	Foghorn Leghorn
16	Elmer Fudd
17	Monstar 1
18	Monstar 2
19	Monstar 3
20	Monstar 4
21	Monstar 5
22	Monstar 6
23	Monstar 7
24	Monstar 8
25	Monstar 9
26	Monstar 10
27	Monstar 11
28	Monstar 12
29	Monstar 13
30	Monstar 14
31	Monstar 15
\.


--
-- Data for Name: app_player_stat; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.app_player_stat (id, "isStarter", minutes, points, assists, "offensiveRebounds", "defensiveRebounds", steals, blocks, turnovers, "defensiveFouls", "offensiveFouls", "freeThrowsMade", "freeThrowsAttempted", "twoPointersMade", "twoPointersAttempted", "threePointersMade", "threePointersAttempted", game_id, player_id) FROM stdin;
1	f	16	12	1	0	3	0	1	0	1	0	0	0	0	0	4	5	1	17
2	t	35	35	6	0	2	1	2	2	2	0	14	14	9	23	1	1	1	18
3	f	28	12	2	1	3	2	0	2	2	1	0	0	3	4	2	3	1	19
4	t	31	13	0	2	1	1	0	2	4	1	7	8	3	6	0	2	1	20
5	t	23	8	3	3	3	0	1	2	2	0	2	4	3	5	0	4	1	21
6	f	23	11	1	0	3	1	0	0	1	0	0	0	1	1	3	6	1	22
7	f	10	1	1	0	1	0	0	0	1	0	1	1	0	0	0	3	1	23
8	t	25	12	1	2	2	1	0	0	2	0	4	4	4	6	0	3	1	27
9	f	12	6	1	1	5	0	0	1	2	0	2	3	2	2	0	2	1	28
10	t	33	13	4	2	5	1	1	1	2	0	2	3	4	10	1	2	1	29
11	f	10	6	0	1	2	0	0	0	0	0	2	2	2	3	0	1	1	15
12	t	38	28	6	0	3	1	0	4	4	0	4	4	3	5	6	12	1	1
13	t	41	26	3	3	5	2	0	4	0	2	5	7	9	13	1	5	1	2
14	f	22	8	2	4	2	1	0	2	4	1	0	0	4	6	0	1	1	4
15	t	32	13	6	2	6	0	0	0	2	0	4	4	3	6	1	2	1	6
16	t	34	19	1	0	4	1	0	2	5	0	0	0	2	6	5	10	1	8
17	t	31	9	3	2	5	0	2	0	4	0	1	2	4	4	0	0	1	9
18	f	13	9	1	2	2	0	0	0	1	0	0	0	0	6	3	5	1	13
19	f	14	3	4	0	2	0	0	4	2	3	1	2	1	2	0	1	1	14
20	f	17	6	1	0	2	1	0	0	2	0	0	0	0	1	2	4	2	22
21	f	6	3	1	1	0	0	0	0	0	0	0	0	0	0	1	1	2	23
22	t	30	13	6	2	4	1	0	3	0	0	1	2	6	8	0	0	2	26
23	f	9	0	0	1	2	0	0	1	0	1	0	0	0	4	0	0	2	27
24	t	30	15	1	0	4	0	0	3	2	0	4	4	4	5	1	3	2	29
25	f	20	6	0	0	1	0	1	0	5	0	0	0	0	2	2	3	2	17
26	t	35	27	3	0	6	2	1	5	1	2	11	13	8	16	0	3	2	18
27	f	26	9	2	4	3	2	0	1	0	0	1	2	4	6	0	1	2	19
28	t	38	14	3	0	3	1	1	3	2	0	2	2	3	5	2	6	2	20
29	t	19	6	2	1	2	2	0	1	1	0	2	2	2	5	0	2	2	21
30	f	3	2	0	0	1	0	0	1	0	0	0	0	1	1	0	1	2	28
31	f	18	8	1	2	5	1	0	1	2	1	0	0	4	5	0	0	2	14
32	t	36	16	8	0	2	2	0	4	2	0	2	2	4	8	2	11	2	1
33	t	22	12	4	1	5	1	0	1	1	0	1	2	4	5	1	2	2	3
34	f	15	3	2	1	1	0	1	0	0	0	0	0	0	2	1	3	2	4
35	t	34	13	2	1	4	1	0	5	3	2	2	2	4	4	1	3	2	6
36	t	29	12	4	0	1	1	1	3	3	2	0	0	0	2	4	9	2	8
37	f	19	6	3	4	3	3	1	1	2	0	0	0	3	5	0	0	2	9
38	f	7	3	1	0	0	0	1	1	2	0	0	0	0	0	1	1	2	13
39	f	19	8	0	0	1	0	0	0	0	0	0	0	1	2	2	3	2	15
40	t	35	17	4	0	5	0	1	2	2	0	1	3	5	10	2	4	2	2
41	f	16	4	3	1	1	0	0	0	5	0	0	0	2	2	0	0	3	14
42	t	17	11	2	0	2	0	0	0	3	0	1	1	2	2	2	5	3	10
43	f	24	8	1	2	3	0	1	3	2	1	2	2	0	0	2	4	3	11
44	t	35	38	9	1	1	1	0	6	2	1	12	13	4	5	6	13	3	1
45	f	13	10	1	1	2	0	0	1	1	1	0	0	5	6	0	1	3	16
46	f	28	13	3	1	2	1	2	0	0	0	0	0	2	4	3	4	3	15
47	t	36	23	2	0	4	0	1	4	5	0	5	5	6	8	2	5	3	2
48	t	28	9	2	2	6	0	1	2	2	1	5	6	2	2	0	0	3	9
49	t	36	11	6	1	2	1	0	2	2	0	4	4	2	6	1	8	3	8
50	f	1	2	0	0	0	0	0	0	1	0	0	0	1	1	0	0	3	13
51	f	23	12	3	0	3	0	0	1	1	0	0	0	0	1	4	4	3	22
52	f	18	11	1	1	1	0	0	0	3	0	2	2	3	3	1	2	3	30
53	f	20	9	3	1	0	1	1	2	0	0	1	1	1	4	2	4	3	25
54	t	20	2	1	2	2	0	0	1	4	1	0	0	1	4	0	1	3	27
55	f	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	3	23
56	t	39	44	7	0	3	2	1	4	1	0	18	19	13	15	0	1	3	18
57	f	7	2	0	1	1	0	0	1	1	1	0	0	1	2	0	0	3	28
58	t	28	19	7	3	3	0	0	0	4	0	3	3	5	12	2	3	3	26
59	t	32	13	6	1	3	3	0	1	2	1	5	5	4	9	0	1	3	29
60	f	20	18	1	1	0	1	1	0	5	0	3	5	3	3	3	3	3	20
61	t	26	8	0	0	3	2	0	0	2	0	0	0	4	6	0	3	3	19
62	t	10	6	0	0	2	0	0	2	0	0	0	1	3	3	0	1	4	14
63	f	14	2	0	2	0	1	1	0	2	0	2	2	0	1	0	1	4	16
64	f	31	28	0	2	4	0	0	2	4	1	3	3	8	15	3	6	4	11
65	f	21	14	5	1	0	0	0	3	1	0	4	6	2	5	2	4	4	13
66	f	15	11	0	1	4	0	0	0	3	0	0	0	1	3	3	6	4	7
67	t	26	3	5	0	2	0	0	1	2	0	0	0	0	1	1	5	4	5
68	t	32	7	4	2	8	1	6	3	1	1	1	2	3	6	0	0	4	9
69	f	19	4	0	0	0	1	0	1	1	0	2	2	1	4	0	0	4	10
70	t	35	29	3	0	5	0	0	5	3	0	8	11	6	8	3	5	4	15
71	t	32	8	1	0	4	2	0	1	2	1	0	0	1	4	2	4	4	12
72	f	12	4	0	1	0	1	0	1	1	0	0	0	2	3	0	2	4	31
73	f	13	5	0	0	1	1	0	0	2	0	0	0	1	3	1	1	4	24
74	f	14	5	2	1	1	0	0	0	3	0	0	0	1	2	1	4	4	25
75	f	7	0	0	0	1	0	0	1	1	1	0	0	0	1	0	1	4	27
76	f	28	20	5	2	5	2	0	0	2	0	5	5	0	2	5	10	4	22
77	t	35	31	3	2	0	4	0	3	1	0	13	15	9	16	0	1	4	18
78	t	35	17	6	1	10	1	2	2	0	0	0	1	4	7	3	5	4	26
79	t	37	23	4	1	4	2	0	1	1	0	3	3	7	12	2	2	4	29
80	t	26	7	2	2	4	0	0	1	3	0	1	2	3	5	0	3	4	30
81	t	28	6	1	3	3	2	0	2	4	0	2	2	2	8	0	6	4	20
\.


--
-- Data for Name: app_shots; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.app_shots (id, game_id, player_id, "isMake", "locationX", "locationY") FROM stdin;
1	1	17	t	0.20	25.10
2	1	17	t	-7.70	26.10
3	1	17	f	15.80	24.50
4	1	17	t	-7.80	23.50
5	1	17	t	16.30	23.80
6	1	18	f	-0.20	-0.90
7	1	18	f	-0.60	0.50
8	1	18	t	-14.30	0.40
9	1	18	f	-5.90	13.80
10	1	18	f	-10.00	11.70
11	1	18	t	-7.00	13.80
12	1	18	t	-6.20	5.90
13	1	18	f	0.90	2.00
14	1	18	f	-2.00	1.10
15	1	18	t	0.70	12.70
16	1	18	t	-18.10	18.00
17	1	18	f	-1.30	0.80
18	1	18	f	-6.60	2.00
19	1	18	t	1.20	10.30
20	1	18	t	-1.00	13.60
21	1	18	t	0.10	2.20
22	1	18	f	0.20	0.80
23	1	18	f	-6.20	13.00
24	1	18	f	-14.10	10.30
25	1	18	f	-6.50	13.80
26	1	18	t	0.10	2.40
27	1	18	t	1.00	-0.30
28	1	18	f	8.70	14.00
29	1	18	f	7.10	4.00
30	1	19	f	-14.30	25.30
31	1	19	t	0.00	0.00
32	1	19	t	0.40	4.70
33	1	19	t	13.50	22.50
34	1	19	f	0.60	0.40
35	1	19	t	6.90	13.50
36	1	19	t	23.20	0.80
37	1	20	f	1.80	24.60
38	1	20	t	-1.00	0.20
39	1	20	t	0.70	-0.70
40	1	20	f	-2.70	1.10
41	1	20	t	0.60	5.40
42	1	20	f	23.50	9.70
43	1	20	f	3.40	0.90
44	1	20	f	0.00	-0.90
45	1	21	t	-1.60	0.70
46	1	21	f	13.50	25.00
47	1	21	t	0.10	1.20
48	1	21	t	0.00	0.00
49	1	21	f	0.00	0.00
50	1	21	f	-23.00	-1.00
51	1	21	f	-23.30	4.60
52	1	21	f	4.00	1.80
53	1	21	f	-11.90	22.00
54	1	22	f	-18.30	20.00
55	1	22	t	-22.80	-1.20
56	1	22	f	14.50	21.00
57	1	22	f	-14.10	21.00
58	1	22	t	-20.50	17.00
59	1	22	t	-0.70	0.30
60	1	22	t	1.60	24.60
61	1	23	f	-22.80	-1.70
62	1	23	f	22.70	3.30
63	1	23	f	16.70	24.30
64	1	27	t	0.00	1.90
65	1	27	t	1.50	0.90
66	1	27	f	-22.90	-1.60
67	1	27	t	-1.60	0.80
68	1	27	f	-1.30	3.30
69	1	27	f	-22.50	12.00
70	1	27	f	23.30	1.40
71	1	27	t	1.50	-0.70
72	1	27	f	-7.00	0.90
73	1	28	f	-22.50	3.20
74	1	28	f	18.50	19.20
75	1	28	t	1.50	-0.30
76	1	28	t	-0.60	2.50
77	1	29	t	0.50	1.40
78	1	29	f	-0.90	0.90
79	1	29	f	-6.70	14.70
80	1	29	f	-1.60	5.60
81	1	29	f	8.10	20.90
82	1	29	t	0.00	0.00
83	1	29	f	0.00	0.00
84	1	29	t	1.00	1.90
85	1	29	f	-18.90	16.60
86	1	29	t	0.00	0.00
87	1	29	f	-1.60	0.80
88	1	29	t	7.70	23.80
89	1	15	f	21.70	14.10
90	1	15	t	0.00	0.00
91	1	15	f	0.50	1.20
92	1	15	t	-13.60	12.50
93	1	1	t	-22.40	11.50
94	1	1	t	1.00	-0.80
95	1	1	t	0.50	1.30
96	1	1	f	-23.00	12.50
97	1	1	t	0.70	-0.10
98	1	1	f	-20.80	15.00
99	1	1	f	6.10	7.60
100	1	1	f	-15.90	23.50
101	1	1	f	14.70	20.50
102	1	1	t	16.10	33.90
103	1	1	t	-21.20	12.30
104	1	1	f	-19.00	25.00
105	1	1	t	-16.80	22.20
106	1	1	t	15.20	20.50
107	1	1	t	-23.30	2.40
108	1	1	f	0.90	0.80
109	1	1	f	-15.90	25.80
110	1	2	f	22.20	12.10
111	1	2	f	18.00	1.00
112	1	2	f	13.50	24.30
113	1	2	t	23.00	4.40
114	1	2	t	-0.60	-0.20
115	1	2	t	-0.10	0.80
116	1	2	t	0.70	-0.60
117	1	2	t	7.00	16.00
118	1	2	t	1.00	-0.20
119	1	2	f	2.10	0.30
120	1	2	t	-0.10	2.70
121	1	2	f	-0.60	2.60
122	1	2	t	-0.40	1.10
123	1	2	f	-3.80	20.60
124	1	2	f	-23.00	1.60
125	1	2	t	0.20	1.50
126	1	2	t	0.40	1.40
127	1	2	f	22.50	0.50
128	1	4	f	1.00	-0.30
129	1	4	t	0.00	0.00
130	1	4	t	0.00	0.00
131	1	4	f	23.90	9.90
132	1	4	f	2.70	0.90
133	1	4	t	-0.90	1.10
134	1	4	t	-1.20	2.20
135	1	6	f	6.20	7.20
136	1	6	f	22.30	4.40
137	1	6	t	6.20	8.20
138	1	6	t	-13.10	24.80
139	1	6	f	-0.10	2.70
140	1	6	t	1.20	1.50
141	1	6	t	1.60	2.20
142	1	6	f	1.10	1.90
143	1	8	f	-1.80	26.00
144	1	8	t	-6.00	9.20
145	1	8	f	-16.80	19.60
146	1	8	f	-19.60	16.40
147	1	8	t	16.40	22.80
148	1	8	t	-16.50	20.70
149	1	8	f	-15.60	21.90
150	1	8	t	-16.50	19.00
151	1	8	t	6.20	6.00
152	1	8	t	-18.10	17.60
153	1	8	f	-21.60	14.10
154	1	8	f	6.10	10.50
155	1	8	f	-10.80	12.20
156	1	8	f	6.70	13.50
157	1	8	t	21.60	14.50
158	1	8	f	-0.20	2.70
159	1	9	t	0.00	1.20
160	1	9	t	0.00	0.00
161	1	9	t	-0.50	1.90
162	1	9	t	-6.20	2.00
163	1	13	f	23.20	0.90
164	1	13	t	23.20	2.00
165	1	13	f	6.90	5.90
166	1	13	t	23.00	2.80
167	1	13	t	-22.80	-1.20
168	1	13	f	0.00	0.00
169	1	13	f	0.00	5.10
170	1	13	f	17.30	18.40
171	1	13	f	0.20	0.40
172	1	13	f	-6.20	5.30
173	1	13	f	-16.20	-2.20
174	1	14	f	0.90	2.10
175	1	14	t	0.90	5.00
176	1	14	f	-0.40	25.50
177	2	22	f	-17.00	22.00
178	2	22	f	2.20	1.50
179	2	22	f	-17.00	22.40
180	2	22	t	-8.10	26.00
181	2	22	t	-8.50	25.50
182	2	23	t	21.00	13.10
183	2	26	f	-2.80	11.90
184	2	26	t	-6.10	4.30
185	2	26	t	-0.60	6.20
186	2	26	f	3.60	5.00
187	2	26	t	1.00	6.00
188	2	26	t	-6.90	1.30
189	2	26	t	-1.30	0.90
190	2	26	t	-2.10	0.70
191	2	27	f	4.50	0.80
192	2	27	f	4.50	11.00
193	2	27	f	-6.00	0.30
194	2	27	f	-3.20	0.20
195	2	29	f	-23.90	0.90
196	2	29	t	-1.30	2.00
197	2	29	t	-2.30	1.50
198	2	29	f	-4.20	2.40
199	2	29	t	-3.80	5.80
200	2	29	t	-19.50	17.60
201	2	29	t	3.60	3.30
202	2	29	f	16.10	20.30
203	2	17	f	-17.60	0.10
204	2	17	t	5.60	25.80
205	2	17	f	23.70	-0.40
206	2	17	f	-18.40	12.00
207	2	17	t	-22.50	-3.30
208	2	18	f	4.80	27.10
209	2	18	t	-1.80	2.60
210	2	18	f	3.90	9.30
211	2	18	f	-5.50	4.30
212	2	18	f	3.40	7.10
213	2	18	f	5.80	7.50
214	2	18	f	3.40	2.00
215	2	18	t	0.10	6.10
216	2	18	f	2.70	3.60
217	2	18	t	-3.70	16.80
218	2	18	f	-4.30	1.10
219	2	18	f	2.00	3.10
220	2	18	t	7.50	12.30
221	2	18	t	1.80	0.90
222	2	18	t	15.30	0.50
223	2	18	f	6.00	26.10
224	2	18	t	2.70	2.40
225	2	18	f	14.50	25.90
226	2	18	t	-2.80	1.00
227	2	19	t	0.00	0.00
228	2	19	t	-2.50	12.50
229	2	19	t	2.00	1.10
230	2	19	f	-4.70	11.30
231	2	19	t	0.00	0.00
232	2	19	f	22.50	12.30
233	2	19	f	0.60	7.30
234	2	20	t	1.80	0.60
235	2	20	f	19.90	15.90
236	2	20	f	-16.50	22.50
237	2	20	f	-5.10	4.50
238	2	20	t	-22.90	2.50
239	2	20	f	20.60	14.00
240	2	20	f	-1.50	2.40
241	2	20	t	0.00	1.80
242	2	20	t	14.20	23.30
243	2	20	f	9.30	28.20
244	2	20	t	-4.00	2.90
245	2	21	f	2.90	14.30
246	2	21	f	23.40	-1.60
247	2	21	t	0.00	0.00
248	2	21	f	4.70	2.90
249	2	21	f	22.40	-0.40
250	2	21	f	-2.00	1.20
251	2	21	t	3.10	3.30
252	2	28	t	-0.90	0.30
253	2	28	f	15.40	21.00
254	2	14	t	3.80	2.10
255	2	14	t	0.00	0.00
256	2	14	t	0.00	0.00
257	2	14	f	-1.50	9.90
258	2	14	t	2.80	0.90
259	2	1	f	-15.70	27.90
260	2	1	f	-11.60	26.70
261	2	1	f	-19.60	17.40
262	2	1	f	-10.30	15.50
263	2	1	f	3.40	0.90
264	2	1	f	-15.90	20.70
265	2	1	f	-18.90	19.20
266	2	1	f	16.80	22.50
267	2	1	t	-3.60	5.40
268	2	1	f	-1.10	25.70
269	2	1	f	22.20	12.90
270	2	1	t	-2.60	1.30
271	2	1	t	11.40	26.60
272	2	1	f	-16.70	27.60
273	2	1	t	-7.00	2.40
274	2	1	t	0.50	28.50
275	2	1	t	5.50	1.20
276	2	1	f	-3.80	9.50
277	2	1	f	-4.20	2.70
278	2	3	t	-16.30	20.80
279	2	3	f	-9.30	24.50
280	2	3	t	12.30	7.10
281	2	3	t	-2.80	6.20
282	2	3	t	0.00	0.00
283	2	3	f	-2.30	2.40
284	2	3	t	0.90	4.10
285	2	4	f	-23.70	1.70
286	2	4	f	-23.20	2.00
287	2	4	f	-4.50	1.50
288	2	4	t	-21.60	12.40
289	2	4	f	2.90	1.40
290	2	6	t	-2.50	1.60
291	2	6	f	-22.70	-1.20
292	2	6	t	1.10	1.50
293	2	6	t	1.80	3.60
294	2	6	t	-19.60	16.40
295	2	6	t	1.80	1.20
296	2	6	f	-23.00	1.40
297	2	8	t	-15.90	20.90
298	2	8	t	-23.00	1.20
299	2	8	f	4.20	3.40
300	2	8	f	-17.60	20.60
301	2	8	f	23.00	3.50
302	2	8	f	-17.40	18.30
303	2	8	t	13.60	23.10
304	2	8	t	-23.70	8.80
305	2	8	f	-6.40	8.70
306	2	8	f	-2.10	26.70
307	2	8	f	-24.10	7.90
308	2	9	t	1.20	2.10
309	2	9	f	-2.50	3.80
310	2	9	f	9.30	-0.20
311	2	9	t	1.00	2.00
312	2	9	t	2.20	1.50
313	2	13	t	9.90	24.50
314	2	15	t	-2.50	1.90
315	2	15	f	-15.20	22.30
316	2	15	f	-14.80	14.60
317	2	15	t	22.90	0.00
318	2	15	t	-23.30	8.20
319	2	2	t	2.20	1.20
320	2	2	t	-1.60	2.00
321	2	2	t	18.40	21.30
322	2	2	f	-16.50	5.50
323	2	2	t	-3.10	2.80
324	2	2	f	1.80	2.80
325	2	2	t	1.70	2.40
326	2	2	f	9.30	24.90
327	2	2	f	0.70	5.50
328	2	2	f	0.00	40.30
329	2	2	t	-3.80	4.20
330	2	2	t	23.00	0.10
331	2	2	f	-4.70	2.60
332	2	2	f	11.80	4.70
333	3	14	t	2.10	0.70
334	3	14	t	-0.10	1.00
335	3	10	f	21.60	11.10
336	3	10	f	-22.80	1.50
337	3	10	t	-6.60	2.00
338	3	10	t	16.30	20.30
339	3	10	t	-21.10	16.70
340	3	10	f	22.40	5.10
341	3	10	t	-1.10	-0.50
342	3	11	f	11.20	24.70
343	3	11	t	12.00	24.60
344	3	11	f	14.30	22.60
345	3	11	t	16.30	21.00
346	3	1	t	11.80	14.30
347	3	1	t	-0.10	29.30
348	3	1	f	16.10	22.40
349	3	1	t	10.50	25.20
350	3	1	f	2.50	1.90
351	3	1	f	-9.30	25.40
352	3	1	t	-0.50	-0.20
353	3	1	t	-0.70	0.20
354	3	1	f	14.30	27.50
355	3	1	t	7.80	25.60
356	3	1	t	-5.80	26.10
357	3	1	f	-14.60	24.40
358	3	1	t	-18.10	23.60
359	3	1	f	-11.30	26.00
360	3	1	f	23.30	1.20
361	3	1	t	-14.80	22.70
362	3	1	f	14.70	23.90
363	3	1	t	0.00	0.40
364	3	16	t	0.70	0.30
365	3	16	t	-8.80	13.50
366	3	16	t	-9.90	-1.00
367	3	16	t	0.20	-0.20
368	3	16	f	-23.30	-0.70
369	3	16	f	-0.70	0.30
370	3	16	t	0.20	-0.70
371	3	15	f	1.20	1.40
372	3	15	t	-0.70	1.00
373	3	15	t	-18.30	17.30
374	3	15	t	23.80	2.50
375	3	15	t	-17.50	19.40
376	3	15	t	-0.20	0.30
377	3	15	f	-15.40	2.60
378	3	15	f	-17.20	19.90
379	3	2	t	11.60	3.30
380	3	2	f	22.40	4.20
381	3	2	f	17.60	17.50
382	3	2	t	21.40	1.40
383	3	2	t	0.20	-0.20
384	3	2	t	20.80	16.60
385	3	2	t	0.90	0.60
386	3	2	f	1.00	-0.10
387	3	2	f	-23.30	2.40
388	3	2	t	-22.70	6.20
389	3	2	t	0.10	-1.70
390	3	2	t	0.50	12.90
391	3	2	f	-13.10	4.60
392	3	9	t	5.90	3.00
393	3	9	t	1.00	0.90
394	3	8	f	18.60	21.20
395	3	8	f	-23.00	-0.10
396	3	8	f	-22.70	11.40
397	3	8	f	11.90	24.10
398	3	8	t	1.10	29.70
399	3	8	f	6.20	6.30
400	3	8	t	0.20	1.50
401	3	8	f	2.00	1.20
402	3	8	f	-15.80	23.30
403	3	8	f	-2.00	6.40
404	3	8	f	-15.70	22.70
405	3	8	f	-0.10	9.40
406	3	8	f	18.40	16.70
407	3	8	t	-1.10	0.80
408	3	13	t	1.30	0.50
409	3	22	t	8.30	25.30
410	3	22	t	22.80	0.50
411	3	22	f	1.60	0.00
412	3	22	t	-16.70	24.60
413	3	22	t	-22.50	1.80
414	3	30	t	0.60	-0.50
415	3	30	f	-0.20	25.00
416	3	30	t	1.10	0.90
417	3	30	t	-23.20	7.00
418	3	30	t	-6.10	12.50
419	3	25	f	15.30	20.40
420	3	25	f	1.70	0.30
421	3	25	f	-5.60	3.90
422	3	25	t	0.40	-0.20
423	3	25	f	0.00	0.00
424	3	25	f	-15.60	27.10
425	3	25	t	17.50	23.60
426	3	25	t	-22.90	10.20
427	3	27	f	0.70	0.50
428	3	27	t	-0.60	1.10
429	3	27	f	13.50	25.10
430	3	27	f	0.00	0.00
431	3	27	f	2.50	1.30
432	3	23	f	-13.70	24.30
433	3	23	f	-20.70	16.70
434	3	18	t	1.00	0.70
435	3	18	f	-21.70	11.20
436	3	18	t	2.70	0.90
437	3	18	t	-8.00	8.90
438	3	18	t	-0.40	1.00
439	3	18	f	13.10	-1.10
440	3	18	t	0.90	1.20
441	3	18	t	-1.00	0.00
442	3	18	t	-0.60	0.30
443	3	18	t	-0.70	-1.20
444	3	18	t	0.10	0.80
445	3	18	f	2.30	0.90
446	3	18	t	0.20	1.30
447	3	18	t	-1.30	-0.20
448	3	18	t	-2.80	0.50
449	3	18	t	0.50	0.70
450	3	28	t	-1.10	1.30
451	3	28	f	0.00	0.00
452	3	26	f	5.80	2.60
453	3	26	t	-18.80	16.10
454	3	26	t	-6.90	11.10
455	3	26	t	-16.80	22.70
456	3	26	t	-0.50	2.40
457	3	26	f	-4.50	7.10
458	3	26	f	-1.60	4.40
459	3	26	f	-15.60	22.50
460	3	26	t	-2.30	-0.50
461	3	26	t	1.00	6.20
462	3	26	f	3.80	3.10
463	3	26	f	-8.90	4.00
464	3	26	t	-0.40	1.40
465	3	26	f	0.00	0.00
466	3	26	f	-1.00	0.80
467	3	29	f	-5.10	4.20
468	3	29	t	-0.20	1.20
469	3	29	t	1.80	0.60
470	3	29	f	1.20	0.60
471	3	29	f	22.90	5.20
472	3	29	f	-1.20	-0.40
473	3	29	f	4.40	21.30
474	3	29	t	1.10	1.70
475	3	29	t	0.20	0.80
476	3	29	f	1.80	0.80
477	3	20	t	-0.50	1.90
478	3	20	t	-23.00	4.10
479	3	20	t	-0.90	-0.10
480	3	20	t	-15.40	27.30
481	3	20	t	-0.40	0.80
482	3	20	t	-10.20	26.70
483	3	19	f	-23.50	4.60
484	3	19	t	-1.50	-1.10
485	3	19	f	-3.40	27.60
486	3	19	f	2.80	13.40
487	3	19	t	-1.10	-0.40
488	3	19	t	0.50	1.20
489	3	19	t	2.60	1.30
490	3	19	f	9.70	26.50
491	3	19	f	1.80	0.50
492	4	14	f	21.00	13.40
493	4	14	t	-2.10	0.30
494	4	14	t	7.10	0.40
495	4	14	t	0.20	4.60
496	4	16	f	22.30	0.60
497	4	16	f	1.20	0.80
498	4	11	f	-2.30	1.90
499	4	11	t	0.00	0.00
500	4	11	f	-0.50	1.50
501	4	11	f	19.50	44.00
502	4	11	t	12.90	24.00
503	4	11	f	16.90	22.40
504	4	11	f	11.00	18.20
505	4	11	f	3.90	16.90
506	4	11	t	7.70	14.70
507	4	11	f	-7.80	19.60
508	4	11	t	-17.40	22.90
509	4	11	f	-16.70	18.90
510	4	11	t	-20.60	14.40
511	4	11	t	2.00	-0.10
512	4	11	t	0.00	3.60
513	4	11	t	1.20	1.70
514	4	11	f	-3.70	1.30
515	4	11	t	-0.60	0.90
516	4	11	t	0.10	0.40
517	4	11	t	-0.70	5.90
518	4	11	f	-2.30	5.00
519	4	13	t	12.50	23.60
520	4	13	t	-10.80	25.10
521	4	13	f	-1.30	0.70
522	4	13	t	-1.20	-0.60
523	4	13	t	1.70	0.20
524	4	13	f	2.70	6.30
525	4	13	f	5.40	2.80
526	4	13	f	-23.40	1.50
527	4	13	f	-23.00	0.50
528	4	7	f	12.10	26.10
529	4	7	t	-6.90	20.40
530	4	7	t	-18.80	18.30
531	4	7	t	-17.50	19.00
532	4	7	t	23.30	-0.10
533	4	7	f	22.40	1.90
534	4	7	f	23.20	3.40
535	4	7	f	-1.30	0.50
536	4	7	f	3.60	2.40
537	4	5	f	-3.80	25.80
538	4	5	f	9.70	23.40
539	4	5	f	16.90	20.40
540	4	5	f	1.00	21.00
541	4	5	f	-17.20	19.70
542	4	5	t	-17.20	19.20
543	4	9	f	1.80	0.30
544	4	9	t	0.00	0.00
545	4	9	t	-0.40	1.90
546	4	9	f	-1.60	1.50
547	4	9	f	-1.30	1.20
548	4	9	t	1.60	1.20
549	4	10	f	-7.20	10.50
550	4	10	f	10.20	1.10
551	4	10	t	-0.70	0.20
552	4	10	f	-7.40	3.40
553	4	15	t	16.50	23.90
554	4	15	f	12.90	9.40
555	4	15	t	-3.60	14.30
556	4	15	t	0.50	21.50
557	4	15	t	-23.50	9.50
558	4	15	f	-22.60	7.90
559	4	15	t	-22.70	12.40
560	4	15	f	-21.90	13.00
561	4	15	t	1.70	0.00
562	4	15	t	0.60	1.50
563	4	15	f	1.10	0.50
564	4	15	t	5.00	4.10
565	4	15	t	-6.10	3.40
566	4	12	f	18.30	15.80
567	4	12	t	16.50	22.90
568	4	12	t	-16.80	19.00
569	4	12	f	22.80	2.50
570	4	12	t	1.60	0.60
571	4	12	f	-1.60	1.20
572	4	12	f	-1.80	0.40
573	4	12	f	6.90	0.60
574	4	31	f	2.00	0.50
575	4	31	f	-0.40	26.10
576	4	31	f	-20.50	15.70
577	4	31	t	1.00	0.30
578	4	31	t	-0.70	0.30
579	4	24	f	2.70	16.70
580	4	24	t	-21.90	10.80
581	4	24	f	-1.20	0.40
582	4	24	t	1.70	0.60
583	4	25	f	-17.00	21.50
584	4	25	f	-12.60	22.50
585	4	25	f	-21.20	14.50
586	4	25	f	-1.80	1.00
587	4	25	t	1.70	0.50
588	4	25	t	-22.30	0.40
589	4	27	f	2.60	1.20
590	4	27	f	-22.10	-0.20
591	4	22	f	1.00	1.20
592	4	22	f	-6.70	26.10
593	4	22	t	21.30	13.60
594	4	22	f	-20.20	16.20
595	4	22	t	-20.60	17.30
596	4	22	t	-19.00	16.50
597	4	22	t	-18.40	19.80
598	4	22	f	-15.40	23.60
599	4	22	f	-22.90	8.00
600	4	22	f	-19.50	17.80
601	4	22	t	23.70	2.10
602	4	22	f	1.60	0.70
603	4	18	f	-1.80	0.60
604	4	18	t	7.20	5.90
605	4	18	f	-3.60	26.80
606	4	18	f	-2.70	15.90
607	4	18	f	15.90	2.10
608	4	18	t	0.70	1.20
609	4	18	t	-0.40	1.40
610	4	18	f	1.30	1.00
611	4	18	t	-0.20	0.20
612	4	18	f	1.70	0.80
613	4	18	t	-0.50	0.10
614	4	18	t	-1.10	1.20
615	4	18	f	-1.20	1.20
616	4	18	t	-1.70	1.20
617	4	18	t	-0.90	1.20
618	4	18	f	0.90	2.80
619	4	18	t	-1.10	7.70
620	4	26	f	-0.40	8.30
621	4	26	f	18.50	16.80
622	4	26	t	19.00	18.90
623	4	26	t	-23.20	9.90
624	4	26	f	-21.80	11.90
625	4	26	t	-16.30	21.90
626	4	26	t	0.40	1.00
627	4	26	t	0.60	0.20
628	4	26	f	-0.70	2.90
629	4	26	f	-2.00	0.10
630	4	26	t	4.80	5.00
631	4	26	t	7.40	5.70
632	4	29	f	0.90	-0.20
633	4	29	f	0.00	1.00
634	4	29	f	8.00	12.40
635	4	29	t	-16.20	20.10
636	4	29	t	-14.70	23.90
637	4	29	t	-0.50	0.80
638	4	29	t	0.40	1.50
639	4	29	t	0.60	0.40
640	4	29	t	0.00	1.20
641	4	29	f	-0.20	2.20
642	4	29	t	-0.60	0.90
643	4	29	t	-1.20	5.40
644	4	29	f	-1.70	5.90
645	4	29	t	-19.90	-2.20
646	4	30	t	0.00	0.00
647	4	30	f	12.10	22.20
648	4	30	f	20.20	15.80
649	4	30	f	14.50	21.00
650	4	30	t	-7.10	8.80
651	4	30	f	2.20	0.10
652	4	30	f	0.70	1.40
653	4	30	t	-0.20	0.60
654	4	20	f	0.00	0.00
655	4	20	f	-2.70	1.00
656	4	20	t	-0.10	0.10
657	4	20	f	12.30	25.90
658	4	20	f	10.40	26.00
659	4	20	f	9.90	24.10
660	4	20	f	1.30	8.90
661	4	20	f	0.10	8.70
662	4	20	f	-16.30	21.50
663	4	20	f	23.40	5.10
664	4	20	t	-1.30	-0.10
665	4	20	f	2.30	4.00
666	4	20	f	-4.00	0.10
667	4	20	f	-22.80	0.40
\.


--
-- Data for Name: app_team; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.app_team (id, name) FROM stdin;
1	Tune Squad
2	Monstars
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add games	7	add_games
26	Can change games	7	change_games
27	Can delete games	7	delete_games
28	Can view games	7	view_games
29	Can add shots	8	add_shots
30	Can change shots	8	change_shots
31	Can delete shots	8	delete_shots
32	Can view shots	8	view_shots
33	Can add player_stat	9	add_player_stat
34	Can change player_stat	9	change_player_stat
35	Can delete player_stat	9	delete_player_stat
36	Can view player_stat	9	view_player_stat
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	app	games
8	app	shots
9	app	player_stat
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
43	app	0001_initial	2024-10-09 01:55:44.489102+05:30
44	app	0002_player	2024-10-09 02:20:33.77109+05:30
45	app	0003_team	2024-10-09 02:32:51.147131+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: okcapplicant
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: app_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.app_games_id_seq', 4, true);


--
-- Name: app_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.app_player_id_seq', 31, true);


--
-- Name: app_player_stat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.app_player_stat_id_seq', 81, true);


--
-- Name: app_shots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.app_shots_id_seq', 667, true);


--
-- Name: app_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.app_team_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: okcapplicant
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);


--
-- Name: app_games app_games_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_games
    ADD CONSTRAINT app_games_pkey PRIMARY KEY (id);


--
-- Name: app_player app_player_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_player
    ADD CONSTRAINT app_player_pkey PRIMARY KEY (id);


--
-- Name: app_player_stat app_player_stat_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_player_stat
    ADD CONSTRAINT app_player_stat_pkey PRIMARY KEY (id);


--
-- Name: app_shots app_shots_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_shots
    ADD CONSTRAINT app_shots_pkey PRIMARY KEY (id);


--
-- Name: app_team app_team_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.app_team
    ADD CONSTRAINT app_team_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: okcapplicant
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: okcapplicant
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

