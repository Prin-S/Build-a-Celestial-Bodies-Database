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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    star_id integer,
    nos_of_moons integer
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type text,
    distance_from_earth_mly numeric(7,4),
    age_in_millions_of_years numeric(7,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    radius numeric(7,2),
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    star_id integer,
    nos_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance_from_earth_ly numeric(7,2),
    age_in_millions_of_years numeric(7,2),
    galaxy_id integer,
    nos_of_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', false, 1, 5);
INSERT INTO public.dwarf_planet VALUES (2, 'Orcus', false, 1, 1);
INSERT INTO public.dwarf_planet VALUES (3, 'Ceres', false, 1, 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Barred spiral galaxy', 0.0265, 13610.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Barred spiral galaxy', 2.5380, 10010.00);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 'Satellite galaxy', 0.1630, 1101.00);
INSERT INTO public.galaxy VALUES (4, 'Messier 49', 'Elliptical galaxy', 56.0000, 13250.00);
INSERT INTO public.galaxy VALUES (5, 'IC 4710', 'Irregular galaxy', 34.0000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Spindle Galaxy', 'Lenticular galaxy', 44.0000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1737.40, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 11.27, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.20, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1821.60, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1560.80, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634.10, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410.30, true, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 198.20, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 252.10, true, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 531.10, true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 561.40, true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 763.80, true, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 2574.73, true, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 734.50, true, 6);
INSERT INTO public.moon VALUES (15, 'Hyperion', 135.00, false, 6);
INSERT INTO public.moon VALUES (16, 'Phoebe', 106.50, false, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 235.80, true, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 578.90, true, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 584.70, true, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 788.40, true, 7);
INSERT INTO public.moon VALUES (21, 'Oberon', 761.40, true, 7);
INSERT INTO public.moon VALUES (22, 'Margaret', 10.00, false, 7);
INSERT INTO public.moon VALUES (23, 'Triton', 1353.40, true, 8);
INSERT INTO public.moon VALUES (24, 'Nereid', 178.50, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 1, 0);
INSERT INTO public.planet VALUES (2, 'Venus', false, 1, 0);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 80);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 83);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1, 14);
INSERT INTO public.planet VALUES (9, 'Proxima d', false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'Proxima b', false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'Proxima c', false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Pi Mensae c', false, 6, NULL);
INSERT INTO public.planet VALUES (13, 'Pi Mensae d', false, 6, NULL);
INSERT INTO public.planet VALUES (14, 'Pi Mensae b', false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.00, 4600.00, 1, 8);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.25, 4853.00, 1, 3);
INSERT INTO public.star VALUES (3, 'Sirius', 8.71, 230.00, 1, 0);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 548.00, 10.01, 1, 0);
INSERT INTO public.star VALUES (5, 'Alpha Andromedae', 97.00, 60.00, 2, 0);
INSERT INTO public.star VALUES (6, 'Pi Mensae', 59.62, 3400.00, 3, 3);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: dwarf_planet dwarf_planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

