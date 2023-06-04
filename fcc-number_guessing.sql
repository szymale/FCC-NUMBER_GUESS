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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_history (
    guesses integer,
    user_id integer NOT NULL
);


ALTER TABLE public.game_history OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game_history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_history VALUES (276, 53);
INSERT INTO public.game_history VALUES (822, 54);
INSERT INTO public.game_history VALUES (800, 54);
INSERT INTO public.game_history VALUES (738, 53);
INSERT INTO public.game_history VALUES (74, 53);
INSERT INTO public.game_history VALUES (473, 53);
INSERT INTO public.game_history VALUES (107, 55);
INSERT INTO public.game_history VALUES (741, 55);
INSERT INTO public.game_history VALUES (719, 56);
INSERT INTO public.game_history VALUES (219, 56);
INSERT INTO public.game_history VALUES (358, 55);
INSERT INTO public.game_history VALUES (954, 55);
INSERT INTO public.game_history VALUES (663, 55);
INSERT INTO public.game_history VALUES (209, 58);
INSERT INTO public.game_history VALUES (435, 59);
INSERT INTO public.game_history VALUES (138, 59);
INSERT INTO public.game_history VALUES (751, 58);
INSERT INTO public.game_history VALUES (398, 58);
INSERT INTO public.game_history VALUES (88, 58);
INSERT INTO public.game_history VALUES (322, 60);
INSERT INTO public.game_history VALUES (834, 60);
INSERT INTO public.game_history VALUES (46, 61);
INSERT INTO public.game_history VALUES (378, 61);
INSERT INTO public.game_history VALUES (677, 60);
INSERT INTO public.game_history VALUES (210, 60);
INSERT INTO public.game_history VALUES (397, 60);
INSERT INTO public.game_history VALUES (854, 62);
INSERT INTO public.game_history VALUES (140, 62);
INSERT INTO public.game_history VALUES (864, 63);
INSERT INTO public.game_history VALUES (274, 63);
INSERT INTO public.game_history VALUES (537, 62);
INSERT INTO public.game_history VALUES (968, 62);
INSERT INTO public.game_history VALUES (129, 62);
INSERT INTO public.game_history VALUES (499, 64);
INSERT INTO public.game_history VALUES (946, 64);
INSERT INTO public.game_history VALUES (231, 65);
INSERT INTO public.game_history VALUES (613, 65);
INSERT INTO public.game_history VALUES (1, 64);
INSERT INTO public.game_history VALUES (162, 64);
INSERT INTO public.game_history VALUES (227, 64);
INSERT INTO public.game_history VALUES (803, 66);
INSERT INTO public.game_history VALUES (118, 66);
INSERT INTO public.game_history VALUES (932, 67);
INSERT INTO public.game_history VALUES (233, 67);
INSERT INTO public.game_history VALUES (631, 66);
INSERT INTO public.game_history VALUES (940, 66);
INSERT INTO public.game_history VALUES (336, 66);
INSERT INTO public.game_history VALUES (639, 68);
INSERT INTO public.game_history VALUES (810, 68);
INSERT INTO public.game_history VALUES (4, 69);
INSERT INTO public.game_history VALUES (554, 69);
INSERT INTO public.game_history VALUES (179, 68);
INSERT INTO public.game_history VALUES (494, 68);
INSERT INTO public.game_history VALUES (450, 68);
INSERT INTO public.game_history VALUES (561, 70);
INSERT INTO public.game_history VALUES (544, 70);
INSERT INTO public.game_history VALUES (742, 71);
INSERT INTO public.game_history VALUES (343, 71);
INSERT INTO public.game_history VALUES (914, 70);
INSERT INTO public.game_history VALUES (767, 70);
INSERT INTO public.game_history VALUES (941, 70);
INSERT INTO public.game_history VALUES (513, 72);
INSERT INTO public.game_history VALUES (317, 72);
INSERT INTO public.game_history VALUES (883, 73);
INSERT INTO public.game_history VALUES (181, 73);
INSERT INTO public.game_history VALUES (929, 72);
INSERT INTO public.game_history VALUES (790, 72);
INSERT INTO public.game_history VALUES (738, 72);
INSERT INTO public.game_history VALUES (476, 74);
INSERT INTO public.game_history VALUES (358, 74);
INSERT INTO public.game_history VALUES (25, 75);
INSERT INTO public.game_history VALUES (130, 75);
INSERT INTO public.game_history VALUES (725, 74);
INSERT INTO public.game_history VALUES (789, 74);
INSERT INTO public.game_history VALUES (280, 74);
INSERT INTO public.game_history VALUES (910, 76);
INSERT INTO public.game_history VALUES (654, 76);
INSERT INTO public.game_history VALUES (502, 77);
INSERT INTO public.game_history VALUES (694, 77);
INSERT INTO public.game_history VALUES (226, 76);
INSERT INTO public.game_history VALUES (621, 76);
INSERT INTO public.game_history VALUES (93, 76);
INSERT INTO public.game_history VALUES (558, 78);
INSERT INTO public.game_history VALUES (728, 78);
INSERT INTO public.game_history VALUES (659, 79);
INSERT INTO public.game_history VALUES (654, 79);
INSERT INTO public.game_history VALUES (267, 78);
INSERT INTO public.game_history VALUES (835, 78);
INSERT INTO public.game_history VALUES (383, 78);
INSERT INTO public.game_history VALUES (420, 80);
INSERT INTO public.game_history VALUES (323, 80);
INSERT INTO public.game_history VALUES (323, 81);
INSERT INTO public.game_history VALUES (54, 81);
INSERT INTO public.game_history VALUES (889, 80);
INSERT INTO public.game_history VALUES (345, 80);
INSERT INTO public.game_history VALUES (508, 80);
INSERT INTO public.game_history VALUES (811, 82);
INSERT INTO public.game_history VALUES (611, 82);
INSERT INTO public.game_history VALUES (860, 83);
INSERT INTO public.game_history VALUES (595, 83);
INSERT INTO public.game_history VALUES (986, 82);
INSERT INTO public.game_history VALUES (879, 82);
INSERT INTO public.game_history VALUES (43, 82);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (60, 'user_1685903932139');
INSERT INTO public.users VALUES (61, 'user_1685903932138');
INSERT INTO public.users VALUES (62, 'user_1685903947461');
INSERT INTO public.users VALUES (63, 'user_1685903947460');
INSERT INTO public.users VALUES (64, 'user_1685903953970');
INSERT INTO public.users VALUES (65, 'user_1685903953969');
INSERT INTO public.users VALUES (66, 'user_1685903963410');
INSERT INTO public.users VALUES (67, 'user_1685903963409');
INSERT INTO public.users VALUES (68, 'user_1685903968753');
INSERT INTO public.users VALUES (69, 'user_1685903968752');
INSERT INTO public.users VALUES (70, 'user_1685904296318');
INSERT INTO public.users VALUES (71, 'user_1685904296317');
INSERT INTO public.users VALUES (72, 'user_1685904316794');
INSERT INTO public.users VALUES (73, 'user_1685904316793');
INSERT INTO public.users VALUES (74, 'user_1685904324481');
INSERT INTO public.users VALUES (75, 'user_1685904324480');
INSERT INTO public.users VALUES (76, 'user_1685904330028');
INSERT INTO public.users VALUES (77, 'user_1685904330027');
INSERT INTO public.users VALUES (78, 'user_1685904349559');
INSERT INTO public.users VALUES (79, 'user_1685904349558');
INSERT INTO public.users VALUES (80, 'user_1685904388561');
INSERT INTO public.users VALUES (81, 'user_1685904388560');
INSERT INTO public.users VALUES (82, 'user_1685904400267');
INSERT INTO public.users VALUES (83, 'user_1685904400266');
INSERT INTO public.users VALUES (53, 'user_1685903805208');
INSERT INTO public.users VALUES (54, 'user_1685903805207');
INSERT INTO public.users VALUES (55, 'user_1685903833454');
INSERT INTO public.users VALUES (56, 'user_1685903833453');
INSERT INTO public.users VALUES (57, 'Sajmon');
INSERT INTO public.users VALUES (58, 'user_1685903909373');
INSERT INTO public.users VALUES (59, 'user_1685903909372');


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 83, true);


--
-- Name: users users_uq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_uq UNIQUE (user_id);


--
-- Name: game_history users_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_history
    ADD CONSTRAINT users_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

