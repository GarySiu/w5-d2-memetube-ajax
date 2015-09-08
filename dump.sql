--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: videos; Type: TABLE; Schema: public; Owner: Gary; Tablespace: 
--

CREATE TABLE videos (
    id bigint NOT NULL,
    title character varying(140),
    video_id character varying(15),
    description character varying(500),
    genre character varying(30),
    views integer
);


ALTER TABLE videos OWNER TO "Gary";

--
-- Name: videos_id_seq; Type: SEQUENCE; Schema: public; Owner: Gary
--

CREATE SEQUENCE videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE videos_id_seq OWNER TO "Gary";

--
-- Name: videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Gary
--

ALTER SEQUENCE videos_id_seq OWNED BY videos.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: Gary
--

ALTER TABLE ONLY videos ALTER COLUMN id SET DEFAULT nextval('videos_id_seq'::regclass);


--
-- Data for Name: videos; Type: TABLE DATA; Schema: public; Owner: Gary
--

COPY videos (id, title, video_id, description, genre, views) FROM stdin;
4	Programming is terrible—Lessons learned from a life wasted. EMF2012	csyL9EC0S0c	http://programmingisterrible.com/ http://twitter.com/tef_ebooks/\r\n\r\nA bad programmer talks about bad programming, from EMF 2012 (http://twitter.com/emfcamp/)\r\n\r\nSlides (PDF) — https://github.com/tef/emfcamp2012/ra...\r\nSlides (keynote format) — https://github.com/tef/emfcamp2012/bl...\r\nDraft script — https://github.com/tef/emfcamp2012/bl...	\N	1
5	Best of Nauts #2 - Special jukes	B5yAJ4dPzls	Why ? Why ? Hey, why ? Why ?\r\n\r\nMusic : Slide Theme - Super Mario 64	\N	1
6	Best of Nauts #1	qAPrdHirwBo	I'm so confident i'm not even mad :3\r\n\r\nMusic : Goal & Score - Super Mario World 2: Yoshi's Island	\N	1
7	Best of Nauts #3	tiSqAcql9Do	I'm Ted Mcpain ! One feed army. (⌐■_■)\r\n\r\nMusic : Flower Garden - Super Mario World 2: Yoshi's Island	\N	1
1	Civ 5 - Hey Ash Whatcha Playin'?	aLcHJN1soY4	Ash makes a penetrating power play for World Leader in Civ 5.	comedy	1
3	Don't Hug Me I'm Scared	9C_HReR_McQ	Buy the official DHMIS poster and DHMIS t-shirts here!! http://beckyandjoes.com/kickstarter/\r\n\r\nDownload the song here! \r\nhttps://itunes.apple.com/album/the-cr...\r\n\r\nDirected by Becky Sloan and Joseph Pelling\r\nwww.beckyandjoes.com\r\n\r\nJoin the Official Facebook group!!!!	\N	1
2	How To Delete Facebook Messenger	7rhK38fzWi0	Today I show you how to delete the Facebook Messenger App. Recently Facebook has been encouraging everyone to install Facebook Messenger on their Smartphones. It even got to the stage where you had no choice but to install the App. Not everyone agreed with this; some people strongly dislike the App, so I decided to see if there was a way to permanently delete the Facebook Messenger App from your phone. Within minutes I discovered this incredibly easy method. You're welcome!	comedy	1
16	The Excellent Adventures of Gootecks & Mike Ross Season 2 Ep. 13: PANIC ROOM w/ FlashMetroid	pm13sikOlI4	Season 2, Episode 13: PANIC ROOM\r\n\r\nIn this super-sized episode with special guest FlashMetroid, our three heroes face off against someone who may possibly be THE GREATEST DAN PLAYER ALIVE!!! This may very well be the saltiest of all salty episodes... which is saying something!\r\n\r\n1. hWnd (Dan) vs. gootecks (Balrog)\r\n2. hWnd (Dan) vs. FlashMetroid \r\n3. hWnd (Dan) vs. Mike Ross \r\n4. MBN Rogue (Vega) vs. FlashMetroid (RANDOM)\r\n5. MBN Rogue (Vega) vs. gootecks (Rose)	\N	1
\.


--
-- Name: videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Gary
--

SELECT pg_catalog.setval('videos_id_seq', 19, true);


--
-- Name: public; Type: ACL; Schema: -; Owner: Gary
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "Gary";
GRANT ALL ON SCHEMA public TO "Gary";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

