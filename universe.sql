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
    name character varying(30) NOT NULL,
    shape character varying(30) NOT NULL,
    dist numeric NOT NULL,
    galaxy_type character varying(10)
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
    description text,
    planet_id integer,
    age numeric NOT NULL
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
-- Name: newtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.newtable (
    newtable_id integer NOT NULL,
    name character varying NOT NULL,
    something integer
);


ALTER TABLE public.newtable OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    water_present boolean,
    star_id integer,
    no_of_moons integer NOT NULL,
    age integer NOT NULL
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
    name character varying(30),
    description text NOT NULL,
    redstar boolean,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'sphere', 50000, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'sphere', 50001, 'active');
INSERT INTO public.galaxy VALUES (3, 'Triangulam', 'sphere', 50002, 'dwarf');
INSERT INTO public.galaxy VALUES (4, 'Somberero', 'ellipse', 50003, 'elliptical');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'ellipse', 50004, 'Blazar');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'ellipse', 50005, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'No water or life, ', 1, 300);
INSERT INTO public.moon VALUES (2, 'Io', 'nice', 2, 400);
INSERT INTO public.moon VALUES (3, 'Titan', 'AOT', 3, 300);
INSERT INTO public.moon VALUES (4, 'Eren', 'AOT', 4, 450);
INSERT INTO public.moon VALUES (5, 'Mikasa', 'AOT', 5, 500);
INSERT INTO public.moon VALUES (6, 'Dazai', 'BSD', 6, 550);
INSERT INTO public.moon VALUES (7, 'Chuuya', 'BSD', 6, 400);
INSERT INTO public.moon VALUES (8, 'Hina', 'TR', 7, 500);
INSERT INTO public.moon VALUES (9, 'Draken', 'TR', 8, 550);
INSERT INTO public.moon VALUES (10, 'Chifuyu', 'TR', 9, 600);
INSERT INTO public.moon VALUES (11, 'Mitsuya', 'TR', 10, 400);
INSERT INTO public.moon VALUES (12, 'Saiki', 'Saiki', 11, 500);
INSERT INTO public.moon VALUES (13, 'Shun', 'Kaido', 12, 400);
INSERT INTO public.moon VALUES (14, 'Aren', 'Saiki', 13, 450);
INSERT INTO public.moon VALUES (15, 'Noe', 'VNC', 12, 500);
INSERT INTO public.moon VALUES (16, 'Jean', 'VNC', 12, 600);
INSERT INTO public.moon VALUES (17, 'Will', 'TID', 12, 400);
INSERT INTO public.moon VALUES (18, 'James', 'TID', 12, 500);
INSERT INTO public.moon VALUES (19, 'Tessa', 'TID', 12, 550);
INSERT INTO public.moon VALUES (20, 'Matthias', 'SOC', 13, 700);


--
-- Data for Name: newtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.newtable VALUES (1, 'Haha', 10);
INSERT INTO public.newtable VALUES (2, 'Meow', 20);
INSERT INTO public.newtable VALUES (3, 'Meh', 30);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Our world, is green and blue in color', true, 1, 1, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', '4th planet in solar system', true, 1, 4, 5000);
INSERT INTO public.planet VALUES (3, 'Teegardern', 'Planets are called star a and star b', false, 2, 6, 20000);
INSERT INTO public.planet VALUES (4, 'planet 4', 'Some', true, 3, 20, 3000);
INSERT INTO public.planet VALUES (5, 'planet 5', 'OOOooo', false, 4, 16, 400);
INSERT INTO public.planet VALUES (6, 'planet 6', 'Yeehaw', true, 5, 22, 700);
INSERT INTO public.planet VALUES (7, 'Mercury', NULL, NULL, 1, 0, 4500);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, 1, 2, 4000);
INSERT INTO public.planet VALUES (9, 'Mars', NULL, NULL, 1, 4, 3000);
INSERT INTO public.planet VALUES (10, 'Jupiter', NULL, NULL, 1, 63, 4000);
INSERT INTO public.planet VALUES (11, 'Saturn', NULL, NULL, 1, 81, 4500);
INSERT INTO public.planet VALUES (12, 'Uranus', NULL, NULL, 1, 22, 4000);
INSERT INTO public.planet VALUES (13, 'Neptune', NULL, NULL, 1, 44, 4000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'The brightest star in the night sky, located in the constellation Canis Major.', false, 1);
INSERT INTO public.star VALUES (2, 'S Andromedea', 'A famous supernova that appeared in 1885, one of the brightest ever observed in the Andromeda Galaxy.', false, 2);
INSERT INTO public.star VALUES (3, 'M33 Variable Star', 'A luminous blue variable star, one of the brightest stars in the Triangulum Galaxy.', false, 3);
INSERT INTO public.star VALUES (4, NULL, 'The Sombrero Galaxy is too far (28 million light-years) for individual stars to be distinctly identified with names from Earth.', NULL, 4);
INSERT INTO public.star VALUES (5, NULL, 'Too far away', false, 5);
INSERT INTO public.star VALUES (6, NULL, 'Too far away', false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonunique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonunique_id UNIQUE (moon_id);


--
-- Name: newtable newtable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.newtable
    ADD CONSTRAINT newtable_name_key UNIQUE (name);


--
-- Name: newtable newtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.newtable
    ADD CONSTRAINT newtable_pkey PRIMARY KEY (newtable_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planetunique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetunique_id UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id UNIQUE (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

