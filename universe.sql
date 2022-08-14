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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    meaning text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    ngc_number integer,
    diameter_in_ly integer,
    distance_from_earth_in_ly numeric(7,3),
    naked_eye_visible boolean,
    apparent_magnitude numeric(5,2),
    galaxy_type_id integer,
    constellation_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(40) NOT NULL,
    more_info text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    designation character varying(20),
    radius_km numeric(6,2),
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
    name character varying(20) NOT NULL,
    distance_from_sun_au numeric(6,2),
    planet_type_id integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_more_info (
    planet_more_info_id integer NOT NULL,
    planet_id integer NOT NULL,
    diameter_earth_relative numeric(10,5),
    mass_earth_relative numeric(7,4),
    orbital_period_years numeric(9,3),
    rotation_period_days numeric(6,2),
    has_moons boolean,
    name character varying(30)
);


ALTER TABLE public.planet_more_info OWNER TO freecodecamp;

--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_more_info_planet_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_more_info_planet_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_more_info_planet_more_info_id_seq OWNED BY public.planet_more_info.planet_more_info_id;


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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    more_info text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    distance_ly numeric(10,7),
    solar_mass numeric(7,3),
    constellation_id integer,
    star_system_id integer,
    stella_class character varying(10),
    apparent_magnitude numeric(5,2),
    naked_eye_visible boolean
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
-- Name: star_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_system (
    star_system_id integer NOT NULL,
    name character varying(60) NOT NULL,
    more_info text
);


ALTER TABLE public.star_system OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_system_star_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_system_star_system_id_seq OWNER TO freecodecamp;

--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_system_star_system_id_seq OWNED BY public.star_system.star_system_id;


--
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_more_info planet_more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info ALTER COLUMN planet_more_info_id SET DEFAULT nextval('public.planet_more_info_planet_more_info_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_system star_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system ALTER COLUMN star_system_id SET DEFAULT nextval('public.star_system_star_system_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Andromeda', 'Andromeda (The chained maiden or princess)');
INSERT INTO public.constellation VALUES (2, 'Antlia', 'Air pump');
INSERT INTO public.constellation VALUES (3, 'Apus', 'Bird-of-paradise/Exotic Bird/Extraordinary Bird');
INSERT INTO public.constellation VALUES (4, 'Aquarius', 'Water-bearer');
INSERT INTO public.constellation VALUES (5, 'Aquila', 'Eagle');
INSERT INTO public.constellation VALUES (6, 'Ara', 'Altar');
INSERT INTO public.constellation VALUES (7, 'Aries', 'Ram');
INSERT INTO public.constellation VALUES (8, 'Auriga', 'Charioteer');
INSERT INTO public.constellation VALUES (9, 'Boötes', 'Herdsman');
INSERT INTO public.constellation VALUES (10, 'Caelum', 'Chisel or engraving tool');
INSERT INTO public.constellation VALUES (11, 'Camelopardalis', 'Giraffe');
INSERT INTO public.constellation VALUES (12, 'Cancer', 'Crab');
INSERT INTO public.constellation VALUES (13, 'Canes Venatici', 'Hunting dogs');
INSERT INTO public.constellation VALUES (14, 'Canis Major', 'Greater dog');
INSERT INTO public.constellation VALUES (15, 'Canis Minor', 'Lesser dog');
INSERT INTO public.constellation VALUES (16, 'Capricornus', 'Sea goat');
INSERT INTO public.constellation VALUES (17, 'Carina', 'Keel');
INSERT INTO public.constellation VALUES (18, 'Cassiopeia', 'Cassiopeia (mythological character)');
INSERT INTO public.constellation VALUES (19, 'Centaurus', 'Centaur');
INSERT INTO public.constellation VALUES (20, 'Cepheus', 'Cepheus (mythological character)');
INSERT INTO public.constellation VALUES (21, 'Cetus', 'Sea monster (later interpreted as a whale)');
INSERT INTO public.constellation VALUES (22, 'Chamaeleon', 'Chameleon');
INSERT INTO public.constellation VALUES (23, 'Circinus', 'Compasses');
INSERT INTO public.constellation VALUES (24, 'Columba', 'Dove');
INSERT INTO public.constellation VALUES (25, 'Coma Berenices', 'Berenice''s hair');
INSERT INTO public.constellation VALUES (26, 'Corona Australis', 'Southern crown');
INSERT INTO public.constellation VALUES (27, 'Corona Borealis', 'Northern crown');
INSERT INTO public.constellation VALUES (28, 'Corvus', 'Crow');
INSERT INTO public.constellation VALUES (29, 'Crater', 'Cup');
INSERT INTO public.constellation VALUES (30, 'Crux', 'Southern cross');
INSERT INTO public.constellation VALUES (31, 'Cygnus', 'Swan or Northern Cross');
INSERT INTO public.constellation VALUES (32, 'Delphinus', 'Dolphin');
INSERT INTO public.constellation VALUES (33, 'Dorado', 'Dolphinfish');
INSERT INTO public.constellation VALUES (34, 'Draco', 'Dragon');
INSERT INTO public.constellation VALUES (35, 'Equuleus', 'Pony');
INSERT INTO public.constellation VALUES (36, 'Eridanus', 'River Eridanus (mythology)');
INSERT INTO public.constellation VALUES (37, 'Fornax', 'Chemical furnace');
INSERT INTO public.constellation VALUES (38, 'Gemini', 'Twins');
INSERT INTO public.constellation VALUES (39, 'Grus', 'Crane');
INSERT INTO public.constellation VALUES (40, 'Hercules', 'Hercules (mythological character)');
INSERT INTO public.constellation VALUES (41, 'Horologium', 'Pendulum clock');
INSERT INTO public.constellation VALUES (42, 'Hydra', 'Hydra (mythological creature)');
INSERT INTO public.constellation VALUES (43, 'Hydrus', 'Lesser water snake');
INSERT INTO public.constellation VALUES (44, 'Indus', 'Indian (of unspecified type)');
INSERT INTO public.constellation VALUES (45, 'Lacerta', 'Lizard');
INSERT INTO public.constellation VALUES (46, 'Leo Minor', 'Lesser lion');
INSERT INTO public.constellation VALUES (47, 'Leo', 'Lion');
INSERT INTO public.constellation VALUES (48, 'Lepus', 'Hare');
INSERT INTO public.constellation VALUES (49, 'Libra', 'Balance');
INSERT INTO public.constellation VALUES (50, 'Lupus', 'Wolf');
INSERT INTO public.constellation VALUES (51, 'Lynx', 'Lynx');
INSERT INTO public.constellation VALUES (52, 'Lyra', 'Lyre / harp');
INSERT INTO public.constellation VALUES (53, 'Mensa', 'Table Mountain (South Africa)');
INSERT INTO public.constellation VALUES (54, 'Microscopium', 'Microscope');
INSERT INTO public.constellation VALUES (55, 'Monoceros', 'Unicorn');
INSERT INTO public.constellation VALUES (56, 'Musca', 'Fly');
INSERT INTO public.constellation VALUES (57, 'Norma', 'Carpenter''s level');
INSERT INTO public.constellation VALUES (58, 'Octans', 'Octant (instrument)');
INSERT INTO public.constellation VALUES (59, 'Ophiuchus', 'Serpent-bearer');
INSERT INTO public.constellation VALUES (60, 'Orion', 'Orion (mythological character)');
INSERT INTO public.constellation VALUES (61, 'Pavo', 'Peacock');
INSERT INTO public.constellation VALUES (62, 'Pegasus', 'Pegasus (mythological winged horse)');
INSERT INTO public.constellation VALUES (63, 'Perseus', 'Perseus (mythological character)');
INSERT INTO public.constellation VALUES (64, 'Phoenix', 'Phoenix');
INSERT INTO public.constellation VALUES (65, 'Pictor', 'Easel');
INSERT INTO public.constellation VALUES (66, 'Pisces', 'Fishes');
INSERT INTO public.constellation VALUES (67, 'Piscis Austrinus', 'Southern fish');
INSERT INTO public.constellation VALUES (68, 'Puppis', 'Poop deck');
INSERT INTO public.constellation VALUES (69, 'Pyxis', 'Mariner''s compass');
INSERT INTO public.constellation VALUES (70, 'Reticulum', 'Eyepiece graticule');
INSERT INTO public.constellation VALUES (71, 'Sagitta', 'Arrow');
INSERT INTO public.constellation VALUES (72, 'Sagittarius', 'Archer');
INSERT INTO public.constellation VALUES (73, 'Scorpius', 'Scorpion');
INSERT INTO public.constellation VALUES (74, 'Sculptor', 'Sculptor');
INSERT INTO public.constellation VALUES (75, 'Scutum', 'Shield (of Sobieski)');
INSERT INTO public.constellation VALUES (76, 'Serpens', 'Snake');
INSERT INTO public.constellation VALUES (77, 'Sextans', 'Sextant');
INSERT INTO public.constellation VALUES (78, 'Taurus', 'Bull');
INSERT INTO public.constellation VALUES (79, 'Telescopium', 'Telescope');
INSERT INTO public.constellation VALUES (80, 'Triangulum Australe', 'Southern triangle');
INSERT INTO public.constellation VALUES (81, 'Triangulum', 'Triangle');
INSERT INTO public.constellation VALUES (82, 'Tucana', 'Toucan');
INSERT INTO public.constellation VALUES (83, 'Ursa Major', 'Great bear');
INSERT INTO public.constellation VALUES (84, 'Ursa Minor', 'Lesser bear');
INSERT INTO public.constellation VALUES (85, 'Vela', 'Sails');
INSERT INTO public.constellation VALUES (86, 'Virgo', 'Virgin or maiden');
INSERT INTO public.constellation VALUES (87, 'Volans', 'Flying fish');
INSERT INTO public.constellation VALUES (88, 'Vulpecula', 'Fox');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 224, 152000, 2.500, true, 3.44, 2, NULL);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 4826, 54000, 17.300, false, 8.52, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 'Bode''s Galaxy', 3031, 90000, 12.000, true, 6.94, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 3034, 37000, 12.000, false, 8.41, 3, NULL);
INSERT INTO public.galaxy VALUES (5, 'Condor Galaxy', 6872, 522000, 212.000, false, 10.69, 2, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fireworks Galaxy', 6946, 40000, 25.200, false, 9.60, 1, NULL);
INSERT INTO public.galaxy VALUES (7, 'Malin 1', NULL, 650000, 1190.000, false, 15.80, 1, NULL);
INSERT INTO public.galaxy VALUES (8, 'Medusa Merger', 4194, 500, 128.800, false, 16.30, 4, NULL);
INSERT INTO public.galaxy VALUES (9, 'Mice Galaxies', 4676, 760000, 290.000, false, 14.70, 1, NULL);
INSERT INTO public.galaxy VALUES (10, 'Milky Way', NULL, 200000, 0.256, true, -6.50, 2, NULL);
INSERT INTO public.galaxy VALUES (11, 'Pinwheel Galaxy', 5457, 170000, 21.000, false, 7.90, 1, NULL);
INSERT INTO public.galaxy VALUES (12, 'Sombrero Galaxy', 4594, 49000, 31.100, false, 8.00, 5, NULL);
INSERT INTO public.galaxy VALUES (13, 'Triangulum Galaxy', 598, 60000, 3.200, true, 5.72, 1, NULL);
INSERT INTO public.galaxy VALUES (14, 'Whirlpool Galaxy', 5194, 76000, 31.000, false, 8.40, 1, NULL);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Spiral galaxy', NULL);
INSERT INTO public.galaxy_type VALUES (2, 'Barred spiral galaxy', NULL);
INSERT INTO public.galaxy_type VALUES (3, 'Starburst galaxy', NULL);
INSERT INTO public.galaxy_type VALUES (4, 'Interacting galaxies', NULL);
INSERT INTO public.galaxy_type VALUES (5, 'Peculiar galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 'Jupiter III', 2634.10, 5);
INSERT INTO public.moon VALUES (2, 'Titan', 'Saturn VI', 2574.70, 6);
INSERT INTO public.moon VALUES (3, 'Callisto', 'Jupiter IV', 2410.30, 5);
INSERT INTO public.moon VALUES (4, 'Io', 'Jupiter I', 1821.60, 5);
INSERT INTO public.moon VALUES (5, 'Luna', 'Earth I', 1737.05, 3);
INSERT INTO public.moon VALUES (6, 'Europa', 'Jupiter II', 1560.80, 5);
INSERT INTO public.moon VALUES (7, 'Triton', 'Neptune I', 1353.40, 8);
INSERT INTO public.moon VALUES (8, 'Titania', 'Uranus III', 788.90, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturn V', 764.30, 6);
INSERT INTO public.moon VALUES (10, 'Oberon', 'Uranus IV', 761.40, 7);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Saturn VIII', 735.60, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 'Pluto I', 603.60, 11);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Uranus II', 584.70, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Uranus I', 578.90, 7);
INSERT INTO public.moon VALUES (15, 'Dione', 'Saturn IV', 561.40, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Saturn III', 533.00, 6);
INSERT INTO public.moon VALUES (17, 'Enceladus', 'Saturn II', 252.10, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Uranus V', 235.80, 7);
INSERT INTO public.moon VALUES (19, 'Mimas', 'Saturn I', 198.20, 6);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Neptune VIII', 210.00, 8);
INSERT INTO public.moon VALUES (21, 'Hyperion', 'Saturn VII', 135.00, 6);
INSERT INTO public.moon VALUES (22, 'Phoebe', 'Saturn IX', 106.50, 6);
INSERT INTO public.moon VALUES (23, 'Larissa', 'Neptune VII', 97.00, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.39, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.72, 1, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1.52, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5.20, 2, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 9.54, 2, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 19.19, 3, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 30.07, 3, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 2.77, 4, 1);
INSERT INTO public.planet VALUES (10, 'Orcus', 39.42, 4, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 39.48, 4, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 43.34, 4, 1);
INSERT INTO public.planet VALUES (13, 'Quaoar', 43.69, 4, 1);
INSERT INTO public.planet VALUES (14, 'Makemake', 45.79, 4, 1);
INSERT INTO public.planet VALUES (15, 'Gonggong', 67.33, 4, 1);
INSERT INTO public.planet VALUES (16, 'Eris', 67.67, 4, 1);
INSERT INTO public.planet VALUES (17, 'Sedna', 525.86, 4, 1);


--
-- Data for Name: planet_more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_more_info VALUES (1, 1, 0.38300, 0.0600, 0.240, 58.65, false, NULL);
INSERT INTO public.planet_more_info VALUES (2, 2, 0.94900, 0.8100, 0.620, 243.02, false, NULL);
INSERT INTO public.planet_more_info VALUES (3, 3, 1.00000, 1.0000, 1.000, 1.00, true, NULL);
INSERT INTO public.planet_more_info VALUES (4, 4, 0.53200, 0.1100, 1.880, 1.03, true, NULL);
INSERT INTO public.planet_more_info VALUES (5, 5, 11.20900, 317.8300, 11.860, 0.41, true, NULL);
INSERT INTO public.planet_more_info VALUES (6, 6, 9.44900, 95.1600, 29.450, 0.44, true, NULL);
INSERT INTO public.planet_more_info VALUES (7, 7, 4.00700, 14.5400, 84.020, 0.72, true, NULL);
INSERT INTO public.planet_more_info VALUES (8, 8, 3.88300, 17.1500, 164.790, 0.67, true, NULL);
INSERT INTO public.planet_more_info VALUES (9, 9, 0.07420, 0.0002, 4.600, 0.38, true, NULL);
INSERT INTO public.planet_more_info VALUES (10, 10, 0.07200, 0.0001, 247.500, NULL, true, NULL);
INSERT INTO public.planet_more_info VALUES (11, 11, 0.18600, 0.0022, 247.900, 6.39, true, NULL);
INSERT INTO public.planet_more_info VALUES (12, 12, 0.13000, 0.0007, 283.800, 0.16, true, NULL);
INSERT INTO public.planet_more_info VALUES (13, 13, 0.08700, 0.0003, 288.000, 0.37, true, NULL);
INSERT INTO public.planet_more_info VALUES (14, 14, 0.11000, 0.0005, 306.200, 0.95, true, NULL);
INSERT INTO public.planet_more_info VALUES (15, 15, 0.10000, 0.0003, 552.500, 0.93, true, NULL);
INSERT INTO public.planet_more_info VALUES (16, 16, 0.18000, 0.0028, 559.000, 14.56, false, NULL);
INSERT INTO public.planet_more_info VALUES (17, 17, 0.07800, NULL, 12059.000, 0.43, false, NULL);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', NULL);
INSERT INTO public.planet_type VALUES (2, 'Gas giant', NULL);
INSERT INTO public.planet_type VALUES (3, 'Ice giant', NULL);
INSERT INTO public.planet_type VALUES (4, 'Dwarf', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 10, 0.0000158, 1.000, NULL, 1, 'G2V', -26.70, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri (C, V645 Centauri)', NULL, 4.2465000, 0.122, 19, 2, 'M5.5Ve', 11.09, false);
INSERT INTO public.star VALUES (3, 'Rigil Kentaurus (A)', NULL, 4.3441000, 1.079, 19, 2, 'G2V', 0.01, true);
INSERT INTO public.star VALUES (4, 'Toliman (B)', NULL, 4.3441000, 0.909, 19, 2, 'K1V', 1.34, true);
INSERT INTO public.star VALUES (5, 'Barnard''s Star (BD+04°3561a) ', NULL, 5.9629000, 0.144, 59, 3, 'M4.0Ve', 9.53, false);
INSERT INTO public.star VALUES (6, 'Wolf 359 (CN Leonis)', NULL, 7.8558000, 0.090, 47, 4, 'M6.0V', 13.44, false);
INSERT INTO public.star VALUES (7, 'Lalande 21185 (BD+36°2147) ', NULL, 8.3044000, 0.390, 83, 5, 'M2.0V', 7.47, false);
INSERT INTO public.star VALUES (8, 'SiriusA', NULL, 8.7094000, 2.063, 14, 6, 'A1V', -1.46, true);
INSERT INTO public.star VALUES (9, 'SiriusB', NULL, 8.7094000, 1.018, 14, 6, 'DA2', 8.44, false);
INSERT INTO public.star VALUES (10, 'Luyten 726-8 A (BL Ceti)', NULL, 8.7240000, 0.102, 21, 7, 'M5.5Ve', 12.54, false);
INSERT INTO public.star VALUES (11, 'Luyten 726-8 B (UV Ceti) ', NULL, 8.7240000, 0.100, 21, 7, 'M6.0Ve', 12.99, false);
INSERT INTO public.star VALUES (12, 'Ross 154 (V1216 Sagittarii)', NULL, 9.7063000, 0.170, 72, 8, 'M3.5Ve', 10.43, false);
INSERT INTO public.star VALUES (13, 'Ross 248 (HH Andromedae)', NULL, 10.3057000, 0.136, 1, 9, 'M5.5Ve', 12.29, false);
INSERT INTO public.star VALUES (14, 'Ran (Epsilon Eridani)', NULL, 10.4749000, 0.820, 36, 10, 'K2V', 3.73, true);
INSERT INTO public.star VALUES (15, 'Lacaille 9352 (Gliese 887) ', NULL, 10.7241000, 0.486, 67, 11, 'M0.5V', 7.34, false);
INSERT INTO public.star VALUES (16, 'Ross 128 (FI Virginis) ', NULL, 11.0074000, 0.168, 86, 12, 'M4.0Vn', 11.13, false);
INSERT INTO public.star VALUES (17, 'EZ Aquarii A', NULL, 11.1090000, 0.110, 4, 13, 'M5.0Ve ', 13.33, false);
INSERT INTO public.star VALUES (18, 'EZ Aquarii B', NULL, 11.1090000, 0.110, 4, 13, 'M? ', 13.27, false);
INSERT INTO public.star VALUES (19, 'EZ Aquarii C', NULL, 11.1090000, 0.100, 4, 13, 'M? ', 14.03, false);
INSERT INTO public.star VALUES (20, 'Procyon (A)', NULL, 11.4020000, 1.499, 15, 14, 'F5IV–V', 0.38, true);
INSERT INTO public.star VALUES (21, 'Alpha Canis Minoris B', NULL, 11.4020000, 0.602, 15, 14, 'DQZ', 10.70, false);
INSERT INTO public.star VALUES (22, '61 Cygni A (BD+38°4343)', NULL, 11.4039000, 0.700, 31, 15, 'K5.0V', 5.21, true);
INSERT INTO public.star VALUES (23, '61 Cygni B (BD+38°4344)', NULL, 11.4039000, 0.630, 31, 15, 'K7.0V', 6.03, true);


--
-- Data for Name: star_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_system VALUES (1, 'Solar System', NULL);
INSERT INTO public.star_system VALUES (2, 'Alpha Centauri', NULL);
INSERT INTO public.star_system VALUES (3, 'Barnard''s Star (BD+04°3561a)', NULL);
INSERT INTO public.star_system VALUES (4, 'Wolf 359 (CN Leonis)', NULL);
INSERT INTO public.star_system VALUES (5, 'Lalande 21185 (BD+36°2147)', NULL);
INSERT INTO public.star_system VALUES (6, 'Alpha Canis Majoris', NULL);
INSERT INTO public.star_system VALUES (7, 'Luyten 726-8', NULL);
INSERT INTO public.star_system VALUES (8, 'Ross 154 (V1216 Sagittarii)', NULL);
INSERT INTO public.star_system VALUES (9, 'Ross 248 (HH Andromedae)', NULL);
INSERT INTO public.star_system VALUES (10, 'Ran (Epsilon Eridani)', NULL);
INSERT INTO public.star_system VALUES (11, 'Lacaille 9352 (Gliese 887)', NULL);
INSERT INTO public.star_system VALUES (12, 'Ross 128 (FI Virginis)', NULL);
INSERT INTO public.star_system VALUES (13, 'EZ Aquarii (Gliese 866, Luyten 789-6)', NULL);
INSERT INTO public.star_system VALUES (14, 'Alpha Canis Minoris', NULL);
INSERT INTO public.star_system VALUES (15, '61 Cygni', NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 88, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_more_info_planet_more_info_id_seq', 17, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: star_system_star_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_system_star_system_id_seq', 15, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: planet_more_info planet_more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_name_key UNIQUE (name);


--
-- Name: planet_more_info planet_more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_pkey PRIMARY KEY (planet_more_info_id);


--
-- Name: planet_more_info planet_more_info_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_planet_id_key UNIQUE (planet_id);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: star_system star_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_name_key UNIQUE (name);


--
-- Name: star_system star_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_system
    ADD CONSTRAINT star_system_pkey PRIMARY KEY (star_system_id);


--
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet_more_info planet_more_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_star_system_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_system_id_fkey FOREIGN KEY (star_system_id) REFERENCES public.star_system(star_system_id);


--
-- PostgreSQL database dump complete
--

