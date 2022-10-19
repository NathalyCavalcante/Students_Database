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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (168, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (169, 'Web Programming');
INSERT INTO public.courses VALUES (170, 'Database Systems');
INSERT INTO public.courses VALUES (171, 'Computer Networks');
INSERT INTO public.courses VALUES (172, 'SQL');
INSERT INTO public.courses VALUES (173, 'Machine Learning');
INSERT INTO public.courses VALUES (174, 'Computer Systems');
INSERT INTO public.courses VALUES (175, 'Web Applications');
INSERT INTO public.courses VALUES (176, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (177, 'Python');
INSERT INTO public.courses VALUES (178, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (179, 'Calculus');
INSERT INTO public.courses VALUES (180, 'Game Architecture');
INSERT INTO public.courses VALUES (181, 'Algorithms');
INSERT INTO public.courses VALUES (182, 'UNIX');
INSERT INTO public.courses VALUES (183, 'Server Administration');
INSERT INTO public.courses VALUES (184, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (104, 'Database Administration');
INSERT INTO public.majors VALUES (105, 'Web Development');
INSERT INTO public.majors VALUES (106, 'Data Science');
INSERT INTO public.majors VALUES (107, 'Network Engineering');
INSERT INTO public.majors VALUES (108, 'Computer Programming');
INSERT INTO public.majors VALUES (109, 'Game Design');
INSERT INTO public.majors VALUES (110, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (104, 168);
INSERT INTO public.majors_courses VALUES (105, 169);
INSERT INTO public.majors_courses VALUES (104, 170);
INSERT INTO public.majors_courses VALUES (106, 168);
INSERT INTO public.majors_courses VALUES (107, 171);
INSERT INTO public.majors_courses VALUES (104, 172);
INSERT INTO public.majors_courses VALUES (106, 173);
INSERT INTO public.majors_courses VALUES (107, 174);
INSERT INTO public.majors_courses VALUES (108, 171);
INSERT INTO public.majors_courses VALUES (104, 175);
INSERT INTO public.majors_courses VALUES (109, 176);
INSERT INTO public.majors_courses VALUES (106, 177);
INSERT INTO public.majors_courses VALUES (108, 178);
INSERT INTO public.majors_courses VALUES (110, 174);
INSERT INTO public.majors_courses VALUES (109, 179);
INSERT INTO public.majors_courses VALUES (105, 168);
INSERT INTO public.majors_courses VALUES (106, 179);
INSERT INTO public.majors_courses VALUES (105, 178);
INSERT INTO public.majors_courses VALUES (109, 180);
INSERT INTO public.majors_courses VALUES (110, 171);
INSERT INTO public.majors_courses VALUES (109, 181);
INSERT INTO public.majors_courses VALUES (110, 182);
INSERT INTO public.majors_courses VALUES (110, 183);
INSERT INTO public.majors_courses VALUES (108, 174);
INSERT INTO public.majors_courses VALUES (108, 177);
INSERT INTO public.majors_courses VALUES (107, 184);
INSERT INTO public.majors_courses VALUES (105, 175);
INSERT INTO public.majors_courses VALUES (107, 181);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (184, 'Rhea', 'Kellems', 104, 2.5);
INSERT INTO public.students VALUES (185, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (186, 'Kimberly', 'Whitley', 105, 3.8);
INSERT INTO public.students VALUES (187, 'Jimmy', 'Felipe', 104, 3.7);
INSERT INTO public.students VALUES (188, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (189, 'Casares', 'Hijo', 109, 4.0);
INSERT INTO public.students VALUES (190, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (191, 'Sterling', 'Boss', 109, 3.9);
INSERT INTO public.students VALUES (192, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (193, 'Kaija', 'Uronen', 109, 3.7);
INSERT INTO public.students VALUES (194, 'Faye', 'Conn', 109, 2.1);
INSERT INTO public.students VALUES (195, 'Efren', 'Reilly', 105, 3.9);
INSERT INTO public.students VALUES (196, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (197, 'Maxine', 'Hagenes', 104, 2.9);
INSERT INTO public.students VALUES (198, 'Larry', 'Saunders', 106, 2.2);
INSERT INTO public.students VALUES (199, 'Karl', 'Kuhar', 105, NULL);
INSERT INTO public.students VALUES (200, 'Lieke', 'Hazenveld', 109, 3.5);
INSERT INTO public.students VALUES (201, 'Obie', 'Hilpert', 105, NULL);
INSERT INTO public.students VALUES (202, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (203, 'Nathan', 'Turner', 104, 3.3);
INSERT INTO public.students VALUES (204, 'Gerald', 'Osiki', 106, 2.2);
INSERT INTO public.students VALUES (205, 'Vanya', 'Hassanah', 109, 4.0);
INSERT INTO public.students VALUES (206, 'Roxelana', 'Florescu', 104, 3.2);
INSERT INTO public.students VALUES (207, 'Helene', 'Parker', 106, 3.4);
INSERT INTO public.students VALUES (208, 'Mariana', 'Russel', 105, 1.8);
INSERT INTO public.students VALUES (209, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (210, 'Mehdi', 'Vandenberghe', 104, 1.9);
INSERT INTO public.students VALUES (211, 'Dejon', 'Howell', 105, 4.0);
INSERT INTO public.students VALUES (212, 'Aliya', 'Gulgowski', 110, 2.6);
INSERT INTO public.students VALUES (213, 'Ana', 'Tupajic', 106, 3.1);
INSERT INTO public.students VALUES (214, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 184, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 110, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 214, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

