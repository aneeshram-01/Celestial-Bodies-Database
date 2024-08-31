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
    name character varying(30),
    size integer,
    mass integer,
    length integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    color character varying(10),
    dist_from_planet integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: person; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.person (
    person_id integer NOT NULL,
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    age integer,
    iq integer
);


ALTER TABLE public.person OWNER TO freecodecamp;

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.person_id_seq OWNER TO freecodecamp;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.person_id_seq OWNED BY public.person.person_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    special_feature text,
    has_moon boolean,
    population integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    mass integer,
    area numeric(5,2),
    is_sun boolean,
    size integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 1000000000, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 80000, 800000000, 80000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 30000, 300000000, 30000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 50000, 500000000, 50000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 60000, 600000000, 60000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 70000, 700000000, 70000);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 40000, 400000000, 40000);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 35000, 350000000, 35000);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel Galaxy', 45000, 450000000, 45000);
INSERT INTO public.galaxy VALUES (10, 'Sunflower Galaxy', 55000, 550000000, 55000);
INSERT INTO public.galaxy VALUES (11, 'Cigar Galaxy', 65000, 650000000, 65000);
INSERT INTO public.galaxy VALUES (12, 'Tuscana Galaxy', 70000, 700000000, 70000);
INSERT INTO public.galaxy VALUES (13, 'Virgo A', 75000, 750000000, 75000);
INSERT INTO public.galaxy VALUES (14, 'Hercules A', 80000, 800000000, 80000);
INSERT INTO public.galaxy VALUES (15, 'NGC 1300', 85000, 850000000, 85000);
INSERT INTO public.galaxy VALUES (16, 'NGC 6744', 90000, 900000000, 90000);
INSERT INTO public.galaxy VALUES (17, 'NGC 6946', 95000, 950000000, 95000);
INSERT INTO public.galaxy VALUES (18, 'NGC 7331', 100000, 1000000000, 100000);
INSERT INTO public.galaxy VALUES (19, 'NGC 752', 55000, 550000000, 55000);
INSERT INTO public.galaxy VALUES (20, 'NGC 300', 60000, 600000000, 60000);
INSERT INTO public.galaxy VALUES (21, 'NGC 5457', 65000, 650000000, 65000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, 'Luna', 1737, 'Gray', 384400, 1);
INSERT INTO public.moon VALUES (23, 'Europa', 1560, 'White', 670900, 2);
INSERT INTO public.moon VALUES (24, 'Ganymede', 2631, 'Gray', 1070400, 3);
INSERT INTO public.moon VALUES (25, 'Callisto', 2410, 'Gray', 1882700, 4);
INSERT INTO public.moon VALUES (26, 'Io', 1821, 'Yellow', 421700, 5);
INSERT INTO public.moon VALUES (27, 'Titan', 2575, 'Orange', 1221870, 6);
INSERT INTO public.moon VALUES (28, 'Rhea', 765, 'Gray', 527400, 7);
INSERT INTO public.moon VALUES (29, 'Iapetus', 735, 'Gray', 3561300, 8);
INSERT INTO public.moon VALUES (30, 'Enceladus', 504, 'White', 238000, 9);
INSERT INTO public.moon VALUES (31, 'Mimas', 396, 'Gray', 1855390, 10);
INSERT INTO public.moon VALUES (32, 'Miranda', 235, 'Gray', 129000, 11);
INSERT INTO public.moon VALUES (33, 'Ariel', 579, 'Gray', 191000, 1);
INSERT INTO public.moon VALUES (34, 'Umbriel', 584, 'Gray', 266000, 2);
INSERT INTO public.moon VALUES (35, 'Titania', 788, 'Gray', 436000, 3);
INSERT INTO public.moon VALUES (36, 'Oberon', 761, 'Gray', 583000, 4);
INSERT INTO public.moon VALUES (37, 'Tethys', 534, 'Gray', 294660, 5);
INSERT INTO public.moon VALUES (38, 'Dione', 561, 'Gray', 377400, 6);
INSERT INTO public.moon VALUES (39, 'Hyperion', 270, 'Gray', 1482000, 7);
INSERT INTO public.moon VALUES (40, 'Phoebe', 213, 'Gray', 1272500, 8);
INSERT INTO public.moon VALUES (41, 'Chiron', 197, 'Gray', 1668000, 9);
INSERT INTO public.moon VALUES (42, 'Charon', 603, 'Gray', 19500, 10);


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.person VALUES (1, 'Alice Johnson', 165, 68, 30, 120);
INSERT INTO public.person VALUES (2, 'Bob Smith', 175, 75, 45, 110);
INSERT INTO public.person VALUES (3, 'Charlie Brown', 180, 85, 50, 100);
INSERT INTO public.person VALUES (4, 'Diana Prince', 160, 60, 35, 130);
INSERT INTO public.person VALUES (5, 'Edward Snowden', 170, 80, 40, 140);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 'Rich in water', true, 7000000, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red surface', false, 0, 2);
INSERT INTO public.planet VALUES (3, 'Venus', 'Thick atmosphere', false, 0, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Largest planet', true, 0, 4);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Ring system', true, 0, 5);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Tilted axis', false, 0, 6);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Strong winds', false, 0, 7);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Closest to the sun', false, 0, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet', true, 0, 9);
INSERT INTO public.planet VALUES (10, 'Eris', 'Distant object', false, 0, 10);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Largest asteroid', false, 0, 11);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Elliptical shape', false, 0, 12);
INSERT INTO public.planet VALUES (13, 'Makemake', 'Brightest dwarf planet', false, 0, 13);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 200000, 123.45, true, 10000, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 150000, 98.76, true, 8000, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 300000, 234.56, false, 15000, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 250000, 345.67, false, 12000, 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 180000, 87.65, true, 9500, 2);
INSERT INTO public.star VALUES (6, 'Vega', 220000, 456.78, false, 11000, 4);
INSERT INTO public.star VALUES (7, 'Altair', 190000, 54.32, false, 10500, 5);
INSERT INTO public.star VALUES (8, 'Arcturus', 280000, 678.90, true, 14000, 1);
INSERT INTO public.star VALUES (9, 'Antares', 260000, 789.01, false, 13000, 6);
INSERT INTO public.star VALUES (10, 'Spica', 210000, 890.12, true, 11500, 7);
INSERT INTO public.star VALUES (11, 'Fomalhaut', 170000, 901.23, false, 9000, 8);
INSERT INTO public.star VALUES (12, 'Deneb', 230000, 123.45, true, 12500, 9);
INSERT INTO public.star VALUES (13, 'Aldebaran', 240000, 234.56, false, 13500, 10);
INSERT INTO public.star VALUES (14, 'Polaris', 200000, 345.67, true, 10000, 1);
INSERT INTO public.star VALUES (15, 'Castor', 220000, 456.78, false, 11000, 2);
INSERT INTO public.star VALUES (16, 'Pollux', 230000, 567.89, true, 11500, 3);
INSERT INTO public.star VALUES (17, 'Sirius B', 190000, 678.90, false, 9500, 4);
INSERT INTO public.star VALUES (18, 'Sirius A', 250000, 789.01, true, 12000, 5);
INSERT INTO public.star VALUES (19, 'Altair B', 180000, 890.12, false, 9000, 6);
INSERT INTO public.star VALUES (20, 'Vega B', 170000, 901.23, true, 8500, 7);
INSERT INTO public.star VALUES (21, 'Aldebaran B', 260000, 123.45, false, 14000, 8);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 21, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 42, true);


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.person_id_seq', 5, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 21, true);


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
-- Name: person person_iq_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_iq_key UNIQUE (iq);


--
-- Name: person pk_person; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT pk_person PRIMARY KEY (person_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

