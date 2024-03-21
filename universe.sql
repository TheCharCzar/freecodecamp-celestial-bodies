--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    has_life boolean NOT NULL,
    age_in_millions_of_years numeric(10,1) NOT NULL,
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
-- Name: life_forms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life_forms (
    life_forms_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.life_forms OWNER TO freecodecamp;

--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_forms_life_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_forms_life_forms_id_seq OWNER TO freecodecamp;

--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_forms_life_forms_id_seq OWNED BY public.life_forms.life_forms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    planet_id integer NOT NULL,
    is_moon boolean,
    population integer
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
    name character varying(60) NOT NULL,
    description text,
    star_id integer,
    is_planet boolean
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
    name character varying(60),
    description text,
    galaxy_id integer NOT NULL,
    is_star boolean,
    distance_from_earth integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life_forms life_forms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms ALTER COLUMN life_forms_id SET DEFAULT nextval('public.life_forms_life_forms_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'First Galaxy', true, 10.0, 'Description');
INSERT INTO public.galaxy VALUES (2, 'Second Galaxy', false, 20.0, 'Description');
INSERT INTO public.galaxy VALUES (3, 'Third Galaxy', true, 30.0, 'Description');
INSERT INTO public.galaxy VALUES (4, 'Fourth Galaxy', true, 40.0, 'Description');
INSERT INTO public.galaxy VALUES (5, 'Fifth Galaxy', true, 50.0, 'Description');
INSERT INTO public.galaxy VALUES (6, 'Sixth Galaxy', true, 60.0, 'Description');


--
-- Data for Name: life_forms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life_forms VALUES (1, 'Humans', 3);
INSERT INTO public.life_forms VALUES (2, 'Dogs', 3);
INSERT INTO public.life_forms VALUES (3, 'Cats', 3);
INSERT INTO public.life_forms VALUES (4, 'Birds', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Metis 2', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Metis 3', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Metis 4', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Metis 5', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Metis 6', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Metis 7', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Metis 8', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Metis 9', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Metis 10', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Metis 11', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Metis 12', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Metis 13', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Metis 14', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Metis 15', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Metis 16', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Metis 17', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Metis 18', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Metis 19', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Metis 20', NULL, 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Tenth Planet', NULL, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Eleventh Planet', NULL, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Twelfth Planet', NULL, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'First Star', NULL, 1, true, NULL);
INSERT INTO public.star VALUES (2, 'Second Star', NULL, 1, true, NULL);
INSERT INTO public.star VALUES (3, 'Third Star', NULL, 2, true, NULL);
INSERT INTO public.star VALUES (4, 'Fourth Star', NULL, 2, true, NULL);
INSERT INTO public.star VALUES (5, 'Fifth Star', NULL, 3, true, NULL);
INSERT INTO public.star VALUES (6, 'Sixth Star', NULL, 3, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_forms_life_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_forms_life_forms_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: life_forms life_forms_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_name_key UNIQUE (name);


--
-- Name: life_forms life_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT life_forms_pkey PRIMARY KEY (life_forms_id);


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
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: life_forms fk_life_forms_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life_forms
    ADD CONSTRAINT fk_life_forms_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

