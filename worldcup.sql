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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (74, 2018, 'Final', 246, 247, 4, 2);
INSERT INTO public.games VALUES (75, 2018, 'Third Place', 248, 249, 2, 0);
INSERT INTO public.games VALUES (76, 2018, 'Semi-Final', 247, 249, 2, 1);
INSERT INTO public.games VALUES (77, 2018, 'Semi-Final', 246, 248, 1, 0);
INSERT INTO public.games VALUES (78, 2018, 'Quarter-Final', 247, 250, 3, 2);
INSERT INTO public.games VALUES (79, 2018, 'Quarter-Final', 249, 251, 2, 0);
INSERT INTO public.games VALUES (80, 2018, 'Quarter-Final', 248, 252, 2, 1);
INSERT INTO public.games VALUES (81, 2018, 'Quarter-Final', 246, 253, 2, 0);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 249, 254, 2, 1);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 251, 255, 1, 0);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 248, 256, 3, 2);
INSERT INTO public.games VALUES (85, 2018, 'Eighth-Final', 252, 257, 2, 0);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 247, 258, 2, 1);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 250, 259, 2, 1);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 253, 260, 2, 1);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 246, 261, 4, 3);
INSERT INTO public.games VALUES (90, 2014, 'Final', 262, 261, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Third Place', 263, 252, 3, 0);
INSERT INTO public.games VALUES (92, 2014, 'Semi-Final', 261, 263, 1, 0);
INSERT INTO public.games VALUES (93, 2014, 'Semi-Final', 262, 252, 7, 1);
INSERT INTO public.games VALUES (94, 2014, 'Quarter-Final', 263, 264, 1, 0);
INSERT INTO public.games VALUES (95, 2014, 'Quarter-Final', 261, 248, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Quarter-Final', 252, 254, 2, 1);
INSERT INTO public.games VALUES (97, 2014, 'Quarter-Final', 262, 246, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 252, 265, 2, 1);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 254, 253, 2, 0);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 246, 266, 2, 0);
INSERT INTO public.games VALUES (101, 2014, 'Eighth-Final', 262, 267, 2, 1);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 263, 257, 2, 1);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 264, 268, 2, 1);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 261, 255, 1, 0);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 248, 269, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (246, 'France');
INSERT INTO public.teams VALUES (247, 'Croatia');
INSERT INTO public.teams VALUES (248, 'Belgium');
INSERT INTO public.teams VALUES (249, 'England');
INSERT INTO public.teams VALUES (250, 'Russia');
INSERT INTO public.teams VALUES (251, 'Sweden');
INSERT INTO public.teams VALUES (252, 'Brazil');
INSERT INTO public.teams VALUES (253, 'Uruguay');
INSERT INTO public.teams VALUES (254, 'Colombia');
INSERT INTO public.teams VALUES (255, 'Switzerland');
INSERT INTO public.teams VALUES (256, 'Japan');
INSERT INTO public.teams VALUES (257, 'Mexico');
INSERT INTO public.teams VALUES (258, 'Denmark');
INSERT INTO public.teams VALUES (259, 'Spain');
INSERT INTO public.teams VALUES (260, 'Portugal');
INSERT INTO public.teams VALUES (261, 'Argentina');
INSERT INTO public.teams VALUES (262, 'Germany');
INSERT INTO public.teams VALUES (263, 'Netherlands');
INSERT INTO public.teams VALUES (264, 'Costa Rica');
INSERT INTO public.teams VALUES (265, 'Chile');
INSERT INTO public.teams VALUES (266, 'Nigeria');
INSERT INTO public.teams VALUES (267, 'Algeria');
INSERT INTO public.teams VALUES (268, 'Greece');
INSERT INTO public.teams VALUES (269, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 269, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

