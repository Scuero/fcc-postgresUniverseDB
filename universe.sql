--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(30) NOT NULL,
    population integer NOT NULL,
    planet_id integer NOT NULL,
    smart boolean NOT NULL
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civilization_civilization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civilization_civilization_id_seq OWNER TO freecodecamp;

--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civilization_civilization_id_seq OWNED BY public.civilization.civilization_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    distance_from_earth integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    radius_in_km numeric NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    radius_in_km numeric NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer NOT NULL,
    radius_in_km numeric NOT NULL,
    lives boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: civilization civilization_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization ALTER COLUMN civilization_id SET DEFAULT nextval('public.civilization_civilization_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (1, 'civ1', 994563, 2, true);
INSERT INTO public.civilization VALUES (2, 'civ2', 114563, 4, true);
INSERT INTO public.civilization VALUES (3, 'civ3', 114563, 1, false);
INSERT INTO public.civilization VALUES (4, 'civ4', 114563, 12, false);
INSERT INTO public.civilization VALUES (5, 'civ5', 114563, 10, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxia1', 54645, 98126326, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxia2', 14645, 8126326, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxia3', 1435645, 34526326, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxia4', 9645, 192526326, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxia5', 569645, 432526326, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxia6', 9645, 437251226, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 11563, 1356, 3);
INSERT INTO public.moon VALUES (2, 'moon2', 22563, 22356, 12);
INSERT INTO public.moon VALUES (3, 'moon3', 33563, 3356, 6);
INSERT INTO public.moon VALUES (4, 'moon4', 44563, 44356, 2);
INSERT INTO public.moon VALUES (5, 'moon5', 54563, 554356, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 664563, 664356, 2);
INSERT INTO public.moon VALUES (7, 'moon7', 774563, 774356, 1);
INSERT INTO public.moon VALUES (8, 'moon8', 774563, 774356, 3);
INSERT INTO public.moon VALUES (9, 'moon9', 774563, 774356, 4);
INSERT INTO public.moon VALUES (10, 'moon10', 774563, 774356, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 774563, 774356, 9);
INSERT INTO public.moon VALUES (12, 'moon12', 774563, 774356, 8);
INSERT INTO public.moon VALUES (13, 'moon13', 774563, 774356, 11);
INSERT INTO public.moon VALUES (15, 'moon14', 774563, 774356, 7);
INSERT INTO public.moon VALUES (16, 'moon15', 774563, 774356, 5);
INSERT INTO public.moon VALUES (17, 'moon16', 774563, 774356, 5);
INSERT INTO public.moon VALUES (18, 'moon17', 774563, 774356, 12);
INSERT INTO public.moon VALUES (19, 'moon18', 774563, 774356, 10);
INSERT INTO public.moon VALUES (20, 'moon19', 774563, 774356, 11);
INSERT INTO public.moon VALUES (21, 'moon20', 774563, 774356, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'asd1', 4563, 7673456, 3);
INSERT INTO public.planet VALUES (2, 'asd2', 34563, 31173456, 3);
INSERT INTO public.planet VALUES (3, 'asd3', 98563, 11173456, 1);
INSERT INTO public.planet VALUES (4, 'asd4', 88563, 88173456, 2);
INSERT INTO public.planet VALUES (5, 'asd5', 77563, 77173456, 7);
INSERT INTO public.planet VALUES (6, 'asd6', 66563, 66173456, 5);
INSERT INTO public.planet VALUES (7, 'asd7', 878563, 878173456, 8);
INSERT INTO public.planet VALUES (8, 'asd8', 1118563, 11173456, 9);
INSERT INTO public.planet VALUES (9, 'asd9', 2228563, 22273456, 10);
INSERT INTO public.planet VALUES (10, 'asd10', 44428563, 44427356, 4);
INSERT INTO public.planet VALUES (11, 'asd11', 55528563, 5527356, 4);
INSERT INTO public.planet VALUES (12, 'asd12', 6628563, 627356, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun1', 4522, 4231226, true, 1);
INSERT INTO public.star VALUES (2, 'sun2', 9822, 21231226, false, 4);
INSERT INTO public.star VALUES (3, 'sun3', 87822, 81231226, false, 1);
INSERT INTO public.star VALUES (4, 'sun4', 743822, 99231226, false, 2);
INSERT INTO public.star VALUES (5, 'sun5', 3822, 33231226, true, 3);
INSERT INTO public.star VALUES (7, 'sun6', 1822, 11231226, true, 3);
INSERT INTO public.star VALUES (8, 'sun7', 5622, 66231226, true, 5);
INSERT INTO public.star VALUES (9, 'sun8', 5622, 66231226, true, 6);
INSERT INTO public.star VALUES (10, 'sun9', 22222, 661231226, true, 6);


--
-- Name: civilization_civilization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civilization_civilization_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: civilization civilization_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_name_key UNIQUE (name);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: civilization civilization_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

