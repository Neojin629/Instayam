--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-03-15 23:35:16 UTC

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
-- TOC entry 209 (class 1259 OID 19318)
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 19344)
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comments (
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp without time zone
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 19359)
-- Name: likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.likes (
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 19333)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    content character varying(280) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 19332)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 212
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 216 (class 1259 OID 19374)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    user_id integer NOT NULL,
    post_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 19324)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(128) NOT NULL,
    password character varying(128) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 19323)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 210
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3188 (class 2604 OID 19336)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 3187 (class 2604 OID 19327)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3352 (class 0 OID 19318)
-- Dependencies: 209
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
34f391c9241b
\.


--
-- TOC entry 3357 (class 0 OID 19344)
-- Dependencies: 214
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comments (user_id, post_id, created_at) FROM stdin;
\.


--
-- TOC entry 3358 (class 0 OID 19359)
-- Dependencies: 215
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.likes (user_id, post_id, created_at) FROM stdin;
42	11	2022-03-13 23:07:15.773965
47	89	2022-03-13 23:07:15.773974
21	37	2022-03-13 23:07:15.773976
50	91	2022-03-13 23:07:15.773978
44	20	2022-03-13 23:07:15.773979
33	20	2022-03-13 23:07:15.773981
44	29	2022-03-13 23:07:15.773983
6	75	2022-03-13 23:07:15.773984
6	84	2022-03-13 23:07:15.773986
14	15	2022-03-13 23:07:15.773988
39	99	2022-03-13 23:07:15.773989
2	59	2022-03-13 23:07:15.773991
43	69	2022-03-13 23:07:15.773993
1	72	2022-03-13 23:07:15.773996
15	16	2022-03-13 23:07:15.773998
15	25	2022-03-13 23:07:15.773999
28	62	2022-03-13 23:07:15.774001
17	62	2022-03-13 23:07:15.774003
47	75	2022-03-13 23:07:15.774004
29	54	2022-03-13 23:07:15.774006
40	54	2022-03-13 23:07:15.774008
21	59	2022-03-13 23:07:15.774009
42	100	2022-03-13 23:07:15.774011
2	54	2022-03-13 23:07:15.774014
43	55	2022-03-13 23:07:15.774016
24	60	2022-03-13 23:07:15.774017
43	73	2022-03-13 23:07:15.774019
47	34	2022-03-13 23:07:15.77402
36	34	2022-03-13 23:07:15.774022
35	78	2022-03-13 23:07:15.774024
16	74	2022-03-13 23:07:15.774025
35	87	2022-03-13 23:07:15.774027
9	62	2022-03-13 23:07:15.774028
41	14	2022-03-13 23:07:15.77403
25	6	2022-03-13 23:07:15.774032
10	17	2022-03-13 23:07:15.774033
19	93	2022-03-13 23:07:15.774035
43	41	2022-03-13 23:07:15.774036
13	55	2022-03-13 23:07:15.774038
16	51	2022-03-13 23:07:15.77404
24	64	2022-03-13 23:07:15.774041
17	52	2022-03-13 23:07:15.774043
40	17	2022-03-13 23:07:15.774044
29	26	2022-03-13 23:07:15.774046
6	42	2022-03-13 23:07:15.774048
30	88	2022-03-13 23:07:15.774049
20	53	2022-03-13 23:07:15.774051
31	62	2022-03-13 23:07:15.774052
25	28	2022-03-13 23:07:15.774054
39	75	2022-03-13 23:07:15.774056
2	35	2022-03-13 23:07:15.774057
13	32	2022-03-13 23:07:15.774059
4	63	2022-03-13 23:07:15.774061
16	37	2022-03-13 23:07:15.774062
43	63	2022-03-13 23:07:15.774064
4	90	2022-03-13 23:07:15.774065
26	1	2022-03-13 23:07:15.774067
36	42	2022-03-13 23:07:15.774069
17	38	2022-03-13 23:07:15.77407
47	51	2022-03-13 23:07:15.774072
48	16	2022-03-13 23:07:15.774073
6	10	2022-03-13 23:07:15.774075
48	25	2022-03-13 23:07:15.774077
21	8	2022-03-13 23:07:15.774078
26	95	2022-03-13 23:07:15.77408
25	5	2022-03-13 23:07:15.774081
31	66	2022-03-13 23:07:15.774083
24	27	2022-03-13 23:07:15.774085
1	34	2022-03-13 23:07:15.774086
12	80	2022-03-13 23:07:15.774088
35	45	2022-03-13 23:07:15.774089
13	45	2022-03-13 23:07:15.774091
16	41	2022-03-13 23:07:15.774093
1	52	2022-03-13 23:07:15.774094
35	63	2022-03-13 23:07:15.774096
9	11	2022-03-13 23:07:15.774097
1	70	2022-03-13 23:07:15.774099
48	2	2022-03-13 23:07:15.774101
28	42	2022-03-13 23:07:15.774102
26	81	2022-03-13 23:07:15.774104
7	77	2022-03-13 23:07:15.774106
6	32	2022-03-13 23:07:15.774107
27	64	2022-03-13 23:07:15.774109
18	95	2022-03-13 23:07:15.77411
27	82	2022-03-13 23:07:15.774114
31	52	2022-03-13 23:07:15.774115
39	65	2022-03-13 23:07:15.774117
11	92	2022-03-13 23:07:15.774118
43	53	2022-03-13 23:07:15.77412
28	1	2022-03-13 23:07:15.774121
1	47	2022-03-13 23:07:15.774123
28	10	2022-03-13 23:07:15.774125
16	54	2022-03-13 23:07:15.774126
46	64	2022-03-13 23:07:15.77413
38	69	2022-03-13 23:07:15.774131
6	18	2022-03-13 23:07:15.774133
39	24	2022-03-13 23:07:15.774134
18	90	2022-03-13 23:07:15.774136
19	55	2022-03-13 23:07:15.774138
42	57	2022-03-13 23:07:15.774139
12	43	2022-03-13 23:07:15.774141
13	8	2022-03-13 23:07:15.774143
11	87	2022-03-13 23:07:15.774144
33	84	2022-03-13 23:07:15.774146
33	93	2022-03-13 23:07:15.774147
22	83	2022-03-13 23:07:15.774149
14	88	2022-03-13 23:07:15.77415
42	34	2022-03-13 23:07:15.774155
19	41	2022-03-13 23:07:15.774157
40	100	2022-03-13 23:07:15.774158
13	3	2022-03-13 23:07:15.77416
35	3	2022-03-13 23:07:15.774162
43	16	2022-03-13 23:07:15.774163
24	79	2022-03-13 23:07:15.774165
24	30	2022-03-13 23:07:15.774167
10	95	2022-03-13 23:07:15.774168
22	69	2022-03-13 23:07:15.77417
14	92	2022-03-13 23:07:15.774171
26	57	2022-03-13 23:07:15.774173
38	68	2022-03-13 23:07:15.774175
19	27	2022-03-13 23:07:15.774176
7	71	2022-03-13 23:07:15.774178
11	41	2022-03-13 23:07:15.774179
48	90	2022-03-13 23:07:15.774181
39	32	2022-03-13 23:07:15.774183
20	37	2022-03-13 23:07:15.774184
4	20	2022-03-13 23:07:15.774186
4	29	2022-03-13 23:07:15.774187
41	78	2022-03-13 23:07:15.774189
4	38	2022-03-13 23:07:15.774191
44	83	2022-03-13 23:07:15.774192
34	48	2022-03-13 23:07:15.774194
14	60	2022-03-13 23:07:15.774195
22	73	2022-03-13 23:07:15.774197
15	34	2022-03-13 23:07:15.7742
15	52	2022-03-13 23:07:15.774202
48	85	2022-03-13 23:07:15.774204
11	45	2022-03-13 23:07:15.774205
20	23	2022-03-13 23:07:15.774207
40	90	2022-03-13 23:07:15.774209
23	28	2022-03-13 23:07:15.77421
33	78	2022-03-13 23:07:15.774212
44	87	2022-03-13 23:07:15.774213
10	85	2022-03-13 23:07:15.774215
22	50	2022-03-13 23:07:15.774216
3	55	2022-03-13 23:07:15.774218
3	73	2022-03-13 23:07:15.77422
7	43	2022-03-13 23:07:15.774221
28	84	2022-03-13 23:07:15.774223
48	62	2022-03-13 23:07:15.774225
19	26	2022-03-13 23:07:15.774226
21	63	2022-03-13 23:07:15.774228
6	74	2022-03-13 23:07:15.774229
10	53	2022-03-13 23:07:15.774231
34	20	2022-03-13 23:07:15.774232
10	89	2022-03-13 23:07:15.774234
14	59	2022-03-13 23:07:15.774236
7	29	2022-03-13 23:07:15.774237
30	3	2022-03-13 23:07:15.774239
7	47	2022-03-13 23:07:15.774241
17	79	2022-03-13 23:07:15.774242
42	23	2022-03-13 23:07:15.774244
8	21	2022-03-13 23:07:15.774245
19	21	2022-03-13 23:07:15.774247
39	8	2022-03-13 23:07:15.774249
6	96	2022-03-13 23:07:15.77425
39	93	2022-03-13 23:07:15.774252
34	33	2022-03-13 23:07:15.774253
46	16	2022-03-13 23:07:15.774257
49	30	2022-03-13 23:07:15.774282
47	60	2022-03-13 23:07:15.774287
36	78	2022-03-13 23:07:15.77429
29	39	2022-03-13 23:07:15.774294
40	39	2022-03-13 23:07:15.774297
11	21	2022-03-13 23:07:15.7743
14	13	2022-03-13 23:07:15.774303
31	93	2022-03-13 23:07:15.774306
22	35	2022-03-13 23:07:15.77431
46	2	2022-03-13 23:07:15.774313
46	11	2022-03-13 23:07:15.774316
2	75	2022-03-13 23:07:15.774319
3	49	2022-03-13 23:07:15.774325
32	85	2022-03-13 23:07:15.774328
36	46	2022-03-13 23:07:15.774331
43	94	2022-03-13 23:07:15.774334
48	38	2022-03-13 23:07:15.77434
29	61	2022-03-13 23:07:15.774343
33	31	2022-03-13 23:07:15.774346
10	38	2022-03-13 23:07:15.77435
22	3	2022-03-13 23:07:15.774353
33	49	2022-03-13 23:07:15.774356
22	12	2022-03-13 23:07:15.774359
25	45	2022-03-13 23:07:15.774362
20	88	2022-03-13 23:07:15.774365
3	26	2022-03-13 23:07:15.774368
24	58	2022-03-13 23:07:15.774371
3	35	2022-03-13 23:07:15.774374
43	80	2022-03-13 23:07:15.7744
43	89	2022-03-13 23:07:15.77441
13	85	2022-03-13 23:07:15.774413
47	50	2022-03-13 23:07:15.774416
27	1	2022-03-13 23:07:15.774419
40	20	2022-03-13 23:07:15.774421
17	55	2022-03-13 23:07:15.774423
47	77	2022-03-13 23:07:15.774425
49	96	2022-03-13 23:07:15.774426
41	12	2022-03-13 23:07:15.774428
50	79	2022-03-13 23:07:15.77443
29	56	2022-03-13 23:07:15.774431
27	86	2022-03-13 23:07:15.774434
39	78	2022-03-13 23:07:15.774436
10	42	2022-03-13 23:07:15.774438
33	44	2022-03-13 23:07:15.774439
20	74	2022-03-13 23:07:15.774441
12	79	2022-03-13 23:07:15.774443
16	67	2022-03-13 23:07:15.774444
36	45	2022-03-13 23:07:15.774446
1	87	2022-03-13 23:07:15.774447
47	54	2022-03-13 23:07:15.774449
48	19	2022-03-13 23:07:15.774451
17	59	2022-03-13 23:07:15.774452
47	72	2022-03-13 23:07:15.774454
21	29	2022-03-13 23:07:15.774456
33	3	2022-03-13 23:07:15.774457
42	70	2022-03-13 23:07:15.774459
27	81	2022-03-13 23:07:15.774461
42	79	2022-03-13 23:07:15.774462
2	6	2022-03-13 23:07:15.774464
27	90	2022-03-13 23:07:15.774465
12	65	2022-03-13 23:07:15.774469
43	52	2022-03-13 23:07:15.77447
1	64	2022-03-13 23:07:15.774472
47	31	2022-03-13 23:07:15.774474
1	73	2022-03-13 23:07:15.774475
35	75	2022-03-13 23:07:15.774477
40	1	2022-03-13 23:07:15.774478
36	49	2022-03-13 23:07:15.77448
29	10	2022-03-13 23:07:15.774482
40	37	2022-03-13 23:07:15.774485
50	96	2022-03-13 23:07:15.774487
10	23	2022-03-13 23:07:15.774488
11	77	2022-03-13 23:07:15.77449
10	32	2022-03-13 23:07:15.774491
39	68	2022-03-13 23:07:15.774493
11	95	2022-03-13 23:07:15.774495
23	69	2022-03-13 23:07:15.774496
43	47	2022-03-13 23:07:15.774498
12	87	2022-03-13 23:07:15.774499
32	65	2022-03-13 23:07:15.774501
34	93	2022-03-13 23:07:15.774503
47	35	2022-03-13 23:07:15.774504
9	18	2022-03-13 23:07:15.774506
37	98	2022-03-13 23:07:15.774508
17	40	2022-03-13 23:07:15.774509
29	5	2022-03-13 23:07:15.774511
15	79	2022-03-13 23:07:15.774514
50	46	2022-03-13 23:07:15.774516
40	32	2022-03-13 23:07:15.774518
7	93	2022-03-13 23:07:15.774519
12	46	2022-03-13 23:07:15.774521
30	94	2022-03-13 23:07:15.774522
23	55	2022-03-13 23:07:15.774524
13	20	2022-03-13 23:07:15.774526
12	64	2022-03-13 23:07:15.774527
20	77	2022-03-13 23:07:15.774529
16	61	2022-03-13 23:07:15.774531
3	100	2022-03-13 23:07:15.774532
9	31	2022-03-13 23:07:15.774534
50	50	2022-03-13 23:07:15.774537
7	79	2022-03-13 23:07:15.774539
30	89	2022-03-13 23:07:15.77454
12	50	2022-03-13 23:07:15.774542
25	96	2022-03-13 23:07:15.774544
16	38	2022-03-13 23:07:15.774545
28	3	2022-03-13 23:07:15.774547
34	74	2022-03-13 23:07:15.774549
46	66	2022-03-13 23:07:15.77455
49	62	2022-03-13 23:07:15.774552
40	13	2022-03-13 23:07:15.774553
6	11	2022-03-13 23:07:15.774555
18	74	2022-03-13 23:07:15.774557
30	48	2022-03-13 23:07:15.774558
7	92	2022-03-13 23:07:15.77456
48	93	2022-03-13 23:07:15.774561
39	35	2022-03-13 23:07:15.774563
29	98	2022-03-13 23:07:15.774565
20	40	2022-03-13 23:07:15.774566
35	1	2022-03-13 23:07:15.774568
31	58	2022-03-13 23:07:15.77457
12	54	2022-03-13 23:07:15.774571
1	17	2022-03-13 23:07:15.774573
23	54	2022-03-13 23:07:15.774574
44	86	2022-03-13 23:07:15.774576
47	2	2022-03-13 23:07:15.774578
34	69	2022-03-13 23:07:15.774579
46	34	2022-03-13 23:07:15.774581
3	81	2022-03-13 23:07:15.774583
9	12	2022-03-13 23:07:15.774584
49	57	2022-03-13 23:07:15.774586
50	31	2022-03-13 23:07:15.774587
50	49	2022-03-13 23:07:15.774589
7	78	2022-03-13 23:07:15.774591
19	43	2022-03-13 23:07:15.774592
31	8	2022-03-13 23:07:15.774594
31	17	2022-03-13 23:07:15.774596
40	93	2022-03-13 23:07:15.774597
31	35	2022-03-13 23:07:15.774599
23	31	2022-03-13 23:07:15.774601
41	76	2022-03-13 23:07:15.774602
35	5	2022-03-13 23:07:15.774604
16	28	2022-03-13 23:07:15.774607
47	6	2022-03-13 23:07:15.774609
37	69	2022-03-13 23:07:15.77461
38	34	2022-03-13 23:07:15.774612
3	76	2022-03-13 23:07:15.774614
50	8	2022-03-13 23:07:15.774615
27	15	2022-03-13 23:07:15.774617
46	65	2022-03-13 23:07:15.774618
42	13	2022-03-13 23:07:15.77462
38	61	2022-03-13 23:07:15.774622
18	55	2022-03-13 23:07:15.774623
42	22	2022-03-13 23:07:15.774625
8	29	2022-03-13 23:07:15.774627
42	40	2022-03-13 23:07:15.774628
11	43	2022-03-13 23:07:15.77463
6	95	2022-03-13 23:07:15.774633
24	9	2022-03-13 23:07:15.774635
10	74	2022-03-13 23:07:15.774636
2	79	2022-03-13 23:07:15.774638
14	53	2022-03-13 23:07:15.77464
45	68	2022-03-13 23:07:15.774641
15	27	2022-03-13 23:07:15.774643
14	89	2022-03-13 23:07:15.774645
26	54	2022-03-13 23:07:15.774646
27	28	2022-03-13 23:07:15.774648
17	91	2022-03-13 23:07:15.77465
28	91	2022-03-13 23:07:15.774651
7	68	2022-03-13 23:07:15.774653
23	3	2022-03-13 23:07:15.774655
21	79	2022-03-13 23:07:15.774656
41	75	2022-03-13 23:07:15.774658
4	35	2022-03-13 23:07:15.77466
37	32	2022-03-13 23:07:15.774663
16	9	2022-03-13 23:07:15.774665
1	20	2022-03-13 23:07:15.774666
33	89	2022-03-13 23:07:15.774668
32	93	2022-03-13 23:07:15.774669
3	66	2022-03-13 23:07:15.774671
13	98	2022-03-13 23:07:15.774673
35	98	2022-03-13 23:07:15.774674
19	28	2022-03-13 23:07:15.774676
30	37	2022-03-13 23:07:15.774678
6	67	2022-03-13 23:07:15.774679
33	66	2022-03-13 23:07:15.774682
34	31	2022-03-13 23:07:15.774684
10	82	2022-03-13 23:07:15.774687
3	43	2022-03-13 23:07:15.774689
46	23	2022-03-13 23:07:15.774691
3	52	2022-03-13 23:07:15.774692
24	93	2022-03-13 23:07:15.774694
50	11	2022-03-13 23:07:15.774696
48	50	2022-03-13 23:07:15.774697
9	77	2022-03-13 23:07:15.774699
30	32	2022-03-13 23:07:15.774701
29	64	2022-03-13 23:07:15.774704
48	77	2022-03-13 23:07:15.774706
40	73	2022-03-13 23:07:15.774707
12	2	2022-03-13 23:07:15.774709
29	73	2022-03-13 23:07:15.77471
29	82	2022-03-13 23:07:15.774712
23	11	2022-03-13 23:07:15.774714
33	52	2022-03-13 23:07:15.774715
3	20	2022-03-13 23:07:15.774717
2	64	2022-03-13 23:07:15.774719
37	40	2022-03-13 23:07:15.77472
22	51	2022-03-13 23:07:15.774722
43	83	2022-03-13 23:07:15.774724
49	14	2022-03-13 23:07:15.774725
35	79	2022-03-13 23:07:15.774727
\.


--
-- TOC entry 3356 (class 0 OID 19333)
-- Dependencies: 213
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (id, content, created_at, user_id) FROM stdin;
1	Stock indicate manage.	2022-03-13 23:07:15.678913	7
2	Tell buy tend budget.	2022-03-13 23:07:15.67892	46
3	System stage few our could.	2022-03-13 23:07:15.678922	17
5	Style against ball myself myself partner.	2022-03-13 23:07:15.678925	14
6	Hear will city describe.	2022-03-13 23:07:15.678927	43
8	Media protect early claim.	2022-03-13 23:07:15.67893	39
9	Teach type girl.	2022-03-13 23:07:15.678931	11
10	Cup able house.	2022-03-13 23:07:15.678933	6
11	Marriage today list strong another.	2022-03-13 23:07:15.678934	35
12	Vote treatment event chair remember.	2022-03-13 23:07:15.678936	32
13	Something nation others parent hundred painting tax.	2022-03-13 23:07:15.67894	15
14	Shake affect to.	2022-03-13 23:07:15.678942	28
15	Main loss call stand her.	2022-03-13 23:07:15.678943	40
16	Bad others experience girl stand environment series several.	2022-03-13 23:07:15.678945	30
17	Future through bit prepare herself other.	2022-03-13 23:07:15.678946	31
18	Election organization certainly thus late value during.	2022-03-13 23:07:15.678948	44
19	Per choice available environmental sing their.	2022-03-13 23:07:15.67895	38
20	Individual subject item wall probably professional center.	2022-03-13 23:07:15.678951	16
21	Month everyone data model.	2022-03-13 23:07:15.678953	30
22	Feel according strategy whose kind.	2022-03-13 23:07:15.678954	40
23	Whom old trouble mention.	2022-03-13 23:07:15.678956	41
24	Allow great sing cost.	2022-03-13 23:07:15.678958	44
25	Parent particular why else office behavior.	2022-03-13 23:07:15.678959	9
26	Show project top house.	2022-03-13 23:07:15.678961	27
27	Prevent often race.	2022-03-13 23:07:15.678962	41
28	Better her clear professor happen.	2022-03-13 23:07:15.678964	29
29	Among than according environmental by serve happen.	2022-03-13 23:07:15.678965	23
30	Reveal arrive give finish director weight every economy.	2022-03-13 23:07:15.678967	28
31	Get though defense management single she.	2022-03-13 23:07:15.678969	42
32	Hold Mr bank race.	2022-03-13 23:07:15.67897	43
33	Believe summer including garden.	2022-03-13 23:07:15.678972	42
34	Themselves cell how discussion last political example.	2022-03-13 23:07:15.678973	24
35	Southern thought east board rate nation hear.	2022-03-13 23:07:15.678975	18
37	Past machine camera suggest officer surface.	2022-03-13 23:07:15.678978	14
38	Movie garden above capital pressure phone.	2022-03-13 23:07:15.67898	12
39	Conference staff scientist program.	2022-03-13 23:07:15.678981	39
40	Stay for wind involve you research because.	2022-03-13 23:07:15.678983	7
41	Any everything color reason life respond.	2022-03-13 23:07:15.678984	7
42	Especially series keep seek people director certainly industry.	2022-03-13 23:07:15.678986	44
43	In material best feeling.	2022-03-13 23:07:15.678988	24
44	Improve ok month simple and finish woman.	2022-03-13 23:07:15.678989	29
45	He through public word space.	2022-03-13 23:07:15.678991	32
46	Across series art trade.	2022-03-13 23:07:15.678992	38
47	Choose method instead number.	2022-03-13 23:07:15.678994	17
48	Each vote meeting large.	2022-03-13 23:07:15.678995	27
49	After send technology.	2022-03-13 23:07:15.678997	35
50	Score easy act over relate century.	2022-03-13 23:07:15.678999	9
51	Commercial consider cause whatever if.	2022-03-13 23:07:15.679	37
52	Personal world here model land protect.	2022-03-13 23:07:15.679002	34
53	Crime cultural which vote between camera.	2022-03-13 23:07:15.679003	32
54	Base religious growth church turn.	2022-03-13 23:07:15.679005	32
55	Dog science speak behavior.	2022-03-13 23:07:15.679006	38
56	Song water I city month purpose after.	2022-03-13 23:07:15.679008	43
57	Yes worker prove quality art part war do.	2022-03-13 23:07:15.67901	33
58	White camera its knowledge.	2022-03-13 23:07:15.679011	49
59	Drug late forward late according often itself.	2022-03-13 23:07:15.679013	15
60	Him gun drug subject five official.	2022-03-13 23:07:15.679014	9
61	Sure purpose four knowledge.	2022-03-13 23:07:15.679016	25
62	His policy write subject may know radio.	2022-03-13 23:07:15.679017	3
63	Collection country growth play magazine.	2022-03-13 23:07:15.679019	23
64	Federal hold understand everybody meet.	2022-03-13 23:07:15.679021	41
65	Name woman order thing eye.	2022-03-13 23:07:15.679022	23
66	Floor middle identify anyone.	2022-03-13 23:07:15.679024	43
67	Increase whom recent attack head buy believe.	2022-03-13 23:07:15.679025	6
68	Main letter available travel ok part thus.	2022-03-13 23:07:15.679027	28
69	Identify maybe quite like fear.	2022-03-13 23:07:15.679028	30
70	Test including country example.	2022-03-13 23:07:15.679043	18
71	Investment pass spend able.	2022-03-13 23:07:15.679045	23
72	Statement player indicate approach.	2022-03-13 23:07:15.679046	18
73	Choose return amount mouth theory what.	2022-03-13 23:07:15.679048	50
74	Job water pattern say note.	2022-03-13 23:07:15.679049	12
75	Mrs environmental machine record born indeed add of.	2022-03-13 23:07:15.679051	41
76	Large risk any model enter want life.	2022-03-13 23:07:15.679052	23
77	Event top perform either.	2022-03-13 23:07:15.679054	16
78	Any whatever watch about information skin.	2022-03-13 23:07:15.679055	45
79	Financial know western machine between much.	2022-03-13 23:07:15.679057	7
80	Sometimes environmental part air something trade.	2022-03-13 23:07:15.679058	43
81	Company smile color decision.	2022-03-13 23:07:15.67906	13
82	Upon last edge parent station star.	2022-03-13 23:07:15.679061	18
83	Area college story film despite far police.	2022-03-13 23:07:15.679063	25
84	Analysis see half base easy traditional offer about.	2022-03-13 23:07:15.679064	10
85	Next daughter share school.	2022-03-13 23:07:15.679066	8
86	Chair pattern fly bill establish.	2022-03-13 23:07:15.679067	7
87	Represent father your.	2022-03-13 23:07:15.679069	37
88	Trip remain protect red floor share American.	2022-03-13 23:07:15.67907	17
89	Tax painting understand.	2022-03-13 23:07:15.679072	16
90	Change wall hot maintain around since.	2022-03-13 23:07:15.679073	10
91	Itself nation although price.	2022-03-13 23:07:15.679075	17
92	Call other program thank whether sister manage blue.	2022-03-13 23:07:15.679076	35
93	Wide about hot story nor radio between light.	2022-03-13 23:07:15.679078	50
94	Republican sea number sing.	2022-03-13 23:07:15.679079	48
95	Anyone meet politics member certainly reduce Democrat.	2022-03-13 23:07:15.679081	35
96	Hair bill word camera future.	2022-03-13 23:07:15.679082	37
97	Need center wife news hold about operation.	2022-03-13 23:07:15.679085	46
98	Tend compare learn dark.	2022-03-13 23:07:15.679087	11
99	Speak I professional executive.	2022-03-13 23:07:15.679088	1
100	Stock everyone attention training then.	2022-03-13 23:07:15.67909	46
\.


--
-- TOC entry 3359 (class 0 OID 19374)
-- Dependencies: 216
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (user_id, post_id, created_at) FROM stdin;
\.


--
-- TOC entry 3354 (class 0 OID 19324)
-- Dependencies: 211
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password) FROM stdin;
1	james73	b8809999635e75c7b18d5cdbe5cc24447f47d5f19b8410823b6da356db10e229e48c449efba98f268b147914c9f28d701b8b65fcf416e37b83d3e426fa74ca14
3	danielle49	e17dd6301d3c00d1a070be17fb2365a4825b575093552414f3eb7ad3ddfeac2088c7fb0afc1c724e57e605bd07f487d96c96c8c9a4ae9fe3ba6654daf408a960
4	erica103	c6ee4d1d3e1df6833e68ad1f9a483430ba7816773b5587239abdcabfed562b2cfb576adc7d4d275f8e074befe93e5979af37d281b5e30d5180d325b08934196f
6	craig57	c435b397a2107ea1c7f0f04e55538389f14cfb2eae366a8fe2e701314c1d77b113dc3db217cad85a0fcbdd938b8e7eeea65bcf37ef94604421abc23ade778223
7	shane47	3eacc2a59c420f1e6f8d6f01c9d350cac778a6212b51f0d0de98b508465d7a55a8dfce1823084ec204646abdd6c84db5cd908f38a51f7c29da193f945420eb0e
8	kaitlin54	cac804c4accc81c27eeb6895fdff5f6468806f40b22d92ce6027062576bf27ea6b605b58acc8055411726a369256d2223a58d57ab902bc9dedb891b69d21a7fe
9	kristin6	4219a1b7014d9fe02020d166bd4ae7fad8489205dd37a9d37d57924a0f5081a0a528ae566fa1ba28c5bdc677fcf2ea0a6e860cf0e2471e0cc70a5f53834e79c4
10	miranda111	844bdaba4d8f8744b865e9cd90dcbcf6a2240edb539a44a4591952362f7dd9ba4ba5a6de1f0530d5eaa0a1368b26deceecedd9f520df845ad45f3461ae60ad6d
11	cynthia15	339e6f346064f4c50457000c66b423fbd03c31911b266e21647333f9cfabb947272f3dd22fcac14a5e5cff4db18d29916aa4d80cfdf594fa00df830510b70792
12	jason93	f0dfc9254aee1af99a35504e9c637fb0d9a2cbaf432515f60f3075809b7d38c170f5b032758840cb487e61beb99e01851cff3609237bef8348ac66865f9a56e2
13	ricardo68	1cda78d1f73d70e89c69bce1463c64eb0544ed91bc7f60ac76d5f633aec240a405b5a8db1521aa9f16dc564a489d36363dffdd7e0bd749e980a1bdc229ba5b3a
14	scott57	360c8130b7d2226faa3ba17998ba5aef0ce98fe9e85e8108e5917fc2764ef30ec57bf16f9d2c556e3e13e0adce8ef4c6907598cb13dc179f0f067c8c6ae9739d
15	frances31	c40db5f7ca8af7d64509aab5a3bbb97917990b5a1e209591d30c1a7a390f265b5a9035d25779fe2cc696cfc06a40bb06394ba6352677e5c6e7d1f63a428c7937
16	jessica101	bcd7293961e74ea0d9594978184084c7982deea45cc812d4a239ed7906df1493529d573fe5949343b8ff37dea6ad29d2ae42548dd2e349cf776a728ee193f118
17	kevin9	9da9cb05a8925b83668790b4445872fce8fd0cba97c6d2cb315d0dad9335c56c6bd63f5aa56cf4e0cdc6eaa3b0c9d3c8519115ffb79a2f18803c22406bafa1b5
18	mark41	60e19685e60987cd67bf528a6a97b9db629834f03bd926b22de3d688115cf9d470893fb635a61400aa5cdf593f79a99029fd30414d338bb6edd7d0a5ee4ad9ec
19	victoria33	14019af1cf7969dfa990afce576413326cb5bea9dc653c76ee3d860dc912aec53332049a4c7f225f9faabebf59c343f45d3ae4662e39fe403176ba99cdf6877a
20	katherine58	ef393dfb0091169ffb122a2ed8c5021c12ddabc3020a0b51e07c8f02fad87b6846071b5ad289f076172eec3f1007c790cd6a62044a1e8b37cd984bcbd1be69bf
21	kathy73	deb092a3192b1c8e6d6f166b0926f5ef1c8e29d359d9f1e23932d0659f34e1a4ed716715f41434726ba6eef6b0c0abb3932d8b5f610940ccec6a38dfe5e51db0
22	allison108	453d197eaec8b9270be6694effea65ed787b2d81e158ef3a6c210e0158744168a8708f99a222686983a089977deb3802666fcb35cc59a82e5287c88a3d2f11dd
23	christian14	f4b3f06e8efb86524fe71d442a87d2450763333b22545d142a475b45a0b5b1975c259603351793736cf4e52ec9b424f0afbbf52eca93babc2705687e17d3a07c
24	jeffery126	cf55ca03c1e43dcf2f39bf8c2e5cbd411b418ec44c1a34622b08831dd82ffb1a1e92469d306e7a51f2be096c9116d891e544cb37eceadc956d714c4edf04ebc0
25	veronica51	78d52624b9d231ce02edb1d54add9866bad1b502d716a08878c6200fb39efa0d189e394b5608822511c2cb3f2bf5e87a7188fd4880e67beeff85e244045f9c22
26	justin61	7664022bdddc8cbcecb4a1eb2a9d48b355a3e1ffd4a3d100c8280989bc367998b0ce027789959bbf87f0aaa00d7d2c266d3776ccd8caccff556c68c5ee2919bd
27	michele95	85f0693190edd0fe9a2d6c83e59097a3db33caf1564c1019471fe48bfacc084744b26ee4cf893c858a031152621a5a2eac53d59ed9fb78d268d1c049dd4ac0ec
28	alexander135	2c56ee50ec346cbdf593512fa8063eeb9b94231a852bb72a073b6306a606af25b71d29fa268bbbce241bbf1f40b2129f7e76d5790ca68962c81918ae3d3a90e1
29	eric58	16c80b1a3d48b1bc14bd1de493c3269bed8744dfa26edadfc64bf968836896594516d3e506bfc1dcd1f3b253b5504fe99accb099dbb230e319e91a971f30e501
30	christine56	2b8b08a8abbd8df9b84088194ef584fc6814e52475ffb3454a1430098cbb8adcf2562e6c4c585a5347132ec4e904530f20182fefddf1780ad50f3a49fe57e6d1
31	hannah16	c6b990604237975e498bf098145430667ba0e22bdf10bb1382c2232a420c48a48999cf1f76a265a04a413345a9b4e5d00f08d1e35f705895c4ee0d7594102190
32	keith121	dd905415b388c0e551b9fb4bc8b8e594527995b9d57cfa8788599a37618dcf3a838bcc1867daec87f6f5b63d16cfce7b4134c3ed2dac3d61c9a57981e3fbbfa7
33	sean32	7c8d8ca9320bea3a97dc2e683fb1df6f1324b1497297310f4de3c7a3cbd3034e83db593a8d18b1a7392c22e8bc870ff4213d0e0574382970e96fe352be316dd7
34	julia74	72bc66037b8f25441b2df1e9039e54b12354c716b12958be8907af6576e1a5ffbb7a2976771fce938705f2fc26429fb6ffb4a1c6fac7708dd90a429d2eb72573
35	richard41	7398b6ac349eaf6630234251f6ea21063e0fb6333378c953838e74d0bc6e0b12ccb2b67667911a64a92bfb16cfeb2b060b46b7a0933e769cb5fb345f0fc91d2b
36	michael99	25f6f7746788acffaf7184aeb388cf62a26e4f2f1fea74ee2d0773d96183db16316d3e814dcca0c868e3d87320b7e17ea1f67bc6328267621d1b7736ec360bc7
37	melissa49	12b65362a5a36b997a1c425a39f6c2fb1c8b803aae6a501681ee060745e4981d409d363365d98ed17f86823617a56581c2d1b6634d8049aae6272f34b9b9d942
38	sarah45	c02ee592113f290c4d4fae199d725b938916e038edd1098b1e46d2b7f71e5367dfc663446672f598f3cc1e0b37c215963e80cc6c55e91232dcb911a14ce63e17
39	latasha62	12b95212715e8b749ce1e13abf52b89b716b762f8f9fe47e97d485a8ab793002ca0a0ae7fe8e4f1599155e391367d07530999327e8eb93d40e0adc58391b3ab3
40	adam127	150dfe7e2e740e6aab5c590f92c3681cff502ad99be71a3e7ea28bb0a4bf2a13b1cb79a2366b0fce0374d099d5e5d749742a28e66f324a4c32896e0daf296174
41	david119	523ee469b6112bd4b4408bdf9d779888db76f2a4fc0b93213c2f586cf7383d71787c3cd5341a50a127c5178057132d7d504002e8fbef7fe95cdb444948679674
42	amy36	7885946bb68dec9a85da12b5a0aeb1f7876e7dbd69efd9d98496da97587f2b30e2d23cd7fe4ebfeaf8c272f3f7dc044e1569063ca5a966bc521d4fda1a1b2c0f
43	susan70	68115417844908ff605c9b34cf27ee5a60dbbf598808c6e96394cfc4eec181a461f6f262090919306070e45d609dd08fb00f80a766b08fba691118726f61a1e4
44	ricky133	bcf8a14ecfe31e4ff53aec17959da6013a8ca5f66340d399cac1f7b673b78426da8688cc2f287929c141d47acbbf7d97e22a2afa25e71842768495a4faa2fefc
45	ronald79	822e288bd5eef83a85d1f8261409414f72bab2396a9f5405175c0b1c5634295edc4aaa19def6b3d490f019e4be0e3650ca54271f6226d24e44fa4d9c8bcdbf07
46	elizabeth49	ad0a1b521e4a228523df475dea74972dea07ae7dfdf3c3c12220c62f457cafa108bbd463f7d3b41d4ecd0fc7458f91f2cd51937718a0972bd777a56046618453
2	megan118	8326031e189fcbfc54542679dd0694852354709d7e86a4984bc3a7298d9edb49b8965bab5452426932c37d6297b01d3f3dd2e02b46f446f53b61d6bdd8773da1
47	ann61	a069e1b270d6f958b274cd83beb261162db27f7ad10662777551a5d7ec2de76c96b0d2c4bdd4409f8811fc1165d0ec1ea7e82145cfe0eb77cee258fc94bc1f98
48	kyle123	cba7cac609b7cd97c8c433ee2a6eb56fb9e0c3e45c612c0618c58c2a7f25b2918406a6c8f0410db6ce69f864b9b30ba23aaade8d805772bd5ababe699b74ed3c
49	nicholas88	fb56295d7139074eddc9b3a7fcf9f23a0c83194ab3bee340440d9c84b28b2c484378270a974a4842789e725a1cea3fb5869963eb663110ebab91f06857f4ebfa
50	stacy5	48778c6c0c1bb24ebb84c1a3de2bd98cadb4d82994cd5fbbfe3c792ba67255fca00f62db3b3a4375a59aba3c401473e9499a7aaa52987d74385d3a7895ab6ea6
51	Bababooey	3d3964469485dee16ec852d47792f95185c1d44e6598927e1e84a564e0e27612578801d1a21a1a7de740d0278277751defee444ce289c1cce8ac29767f951930
\.


--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 212
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 101, true);


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 210
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 51, true);


--
-- TOC entry 3190 (class 2606 OID 19322)
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- TOC entry 3200 (class 2606 OID 19348)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (user_id, post_id);


--
-- TOC entry 3202 (class 2606 OID 19363)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (user_id, post_id);


--
-- TOC entry 3198 (class 2606 OID 19338)
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 19378)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (user_id, post_id);


--
-- TOC entry 3193 (class 2606 OID 19329)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 19331)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- TOC entry 3196 (class 1259 OID 19392)
-- Name: posts_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX posts_index ON public.posts USING btree (user_id);


--
-- TOC entry 3203 (class 1259 OID 19393)
-- Name: tags_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX tags_index ON public.tags USING btree (post_id);


--
-- TOC entry 3191 (class 1259 OID 19391)
-- Name: users_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_index ON public.users USING hash (username);


--
-- TOC entry 3207 (class 2606 OID 19349)
-- Name: comments comments_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- TOC entry 3208 (class 2606 OID 19354)
-- Name: comments comments_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3209 (class 2606 OID 19364)
-- Name: likes likes_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- TOC entry 3210 (class 2606 OID 19369)
-- Name: likes likes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3206 (class 2606 OID 19339)
-- Name: posts posts_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3211 (class 2606 OID 19379)
-- Name: tags tags_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id);


--
-- TOC entry 3212 (class 2606 OID 19384)
-- Name: tags tags_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2022-03-15 23:35:16 UTC

--
-- PostgreSQL database dump complete
--

