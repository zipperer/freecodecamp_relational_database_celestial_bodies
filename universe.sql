--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(40),
    age_in_billions_of_earth_years numeric(5,3),
    year_discovered_by_humans_on_earth integer NOT NULL,
    mass_to_light_ratio real NOT NULL
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
    name character varying(40),
    planet_id integer NOT NULL,
    age_in_billions_of_earth_years numeric(5,3),
    year_discovered_by_humans_on_earth integer NOT NULL
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
    name character varying(40),
    star_id integer NOT NULL,
    age_in_billions_of_earth_years numeric(5,3),
    year_discovered_by_humans_on_earth integer NOT NULL,
    has_life boolean NOT NULL
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
-- Name: space_telescope; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_telescope (
    space_telescope_id integer NOT NULL,
    name character varying(40) NOT NULL,
    organization_that_controls_telescope text
);


ALTER TABLE public.space_telescope OWNER TO freecodecamp;

--
-- Name: space_telescope_space_telescope_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_telescope_space_telescope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_telescope_space_telescope_id_seq OWNER TO freecodecamp;

--
-- Name: space_telescope_space_telescope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_telescope_space_telescope_id_seq OWNED BY public.space_telescope.space_telescope_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    galaxy_id integer NOT NULL,
    age_in_billions_of_earth_years numeric(5,3),
    year_discovered_by_humans_on_earth integer NOT NULL,
    ancient_humans_wrote_about_it boolean NOT NULL
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
-- Name: space_telescope space_telescope_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_telescope ALTER COLUMN space_telescope_id SET DEFAULT nextval('public.space_telescope_space_telescope_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 12.600, -10000, 1.2);
INSERT INTO public.galaxy VALUES (2, 'Sombrero', 10.200, 1781, 1.4);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 11.300, 1773, 0.8);
INSERT INTO public.galaxy VALUES (4, 'Hoag''s Object', 8.200, 1950, 0.4);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 9.500, 1770, 0.6);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 8.300, 1779, 0.9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 2, 4.510, -10000);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, 4.500, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, 4.500, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 6, 4.500, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 6, 4.500, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 6, 4.500, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 6, 4.500, 1610);
INSERT INTO public.moon VALUES (8, 'Amalthea', 6, 4.500, 1892);
INSERT INTO public.moon VALUES (9, 'Himalia', 6, 4.500, 1904);
INSERT INTO public.moon VALUES (10, 'Elara', 6, 4.500, 1905);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 6, 4.500, 1908);
INSERT INTO public.moon VALUES (12, 'Sinope', 6, 4.500, 1914);
INSERT INTO public.moon VALUES (13, 'Lysithea', 6, 4.500, 1938);
INSERT INTO public.moon VALUES (14, 'Carme', 6, 4.500, 1938);
INSERT INTO public.moon VALUES (15, 'Ananke', 6, 4.500, 1951);
INSERT INTO public.moon VALUES (16, 'Leda', 6, 4.500, 1974);
INSERT INTO public.moon VALUES (17, 'Thebe', 6, 4.500, 1979);
INSERT INTO public.moon VALUES (18, 'Adrastea', 6, 4.500, 1979);
INSERT INTO public.moon VALUES (19, 'Metis', 6, 4.500, 1979);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 6, 4.500, 1999);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 2, 4.543, -10000, true);
INSERT INTO public.planet VALUES (3, 'Mercury', 2, 4.503, -10000, false);
INSERT INTO public.planet VALUES (4, 'Venus', 2, 4.503, -10000, false);
INSERT INTO public.planet VALUES (5, 'Mars', 2, 4.603, -10000, true);
INSERT INTO public.planet VALUES (6, 'Jupiter', 2, 4.603, -10000, false);
INSERT INTO public.planet VALUES (7, 'Saturn', 2, 4.503, -10000, false);
INSERT INTO public.planet VALUES (8, 'Uranus', 2, 4.503, -10000, false);
INSERT INTO public.planet VALUES (9, 'Neptune', 2, 4.503, -10000, false);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', 4, 5.000, 2020, false);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 4, 5.000, 2016, true);
INSERT INTO public.planet VALUES (12, 'Tau Ceti g', 6, 9.000, 2012, true);
INSERT INTO public.planet VALUES (13, 'Tau Ceti h', 6, 9.000, 2012, false);


--
-- Data for Name: space_telescope; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_telescope VALUES (1, 'Hubble Space Telescope', 'NASA');
INSERT INTO public.space_telescope VALUES (2, 'Orbiting Astronomical Observatory', 'NASA');
INSERT INTO public.space_telescope VALUES (3, 'Orion 1 ultraviolet', 'USSR');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'The Sun', 1, 13.200, -10000, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 13.200, -10000, true);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 13.300, -10000, true);
INSERT INTO public.star VALUES (6, 'Barnard''s Star', 1, 13.000, -10000, true);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 1, 13.300, -10000, true);
INSERT INTO public.star VALUES (8, 'Alpha Centauri B', 1, 13.300, -10000, true);


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
-- Name: space_telescope_space_telescope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_telescope_space_telescope_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: space_telescope space_telescope_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_telescope
    ADD CONSTRAINT space_telescope_name_key UNIQUE (name);


--
-- Name: space_telescope space_telescope_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_telescope
    ADD CONSTRAINT space_telescope_pkey PRIMARY KEY (space_telescope_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

