CREATE TABLE public."Movie" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    title text NOT NULL,
    director text NOT NULL,
    genre text NOT NULL,
    released text NOT NULL
);


ALTER TABLE public."Movie" OWNER TO postgres;


CREATE TABLE public."User" (
    id text NOT NULL,
    email text NOT NULL,
    "hashedPassword" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "isPremium" boolean NOT NULL,
    "limit" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;


CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;


COPY public."Movie" (id, "createdAt", "updatedAt", title, director, genre, released) FROM stdin;
979c8c84-0b62-4920-b0f1-1be906c7ee4f	2023-02-06 13:29:20.336	2023-02-06 13:29:20.336	Superman	Richard Donner	Action, Adventure, Sci-Fi	15 Dec 1978
5f01ed21-526d-47fd-98e4-0ac28cd92305	2023-02-06 13:47:40.311	2023-02-06 13:47:40.311	Titanic	James Cameron	Drama, Romance	19 Dec 1997
2614c58e-fa08-4b5b-bc47-d9a0edbfaf04	2023-02-06 13:53:58.516	2023-02-06 13:53:58.516	Red Notice	Rawson Marshall Thurber	Action, Comedy, Thriller	12 Nov 2021
0a88d521-483a-4cc8-9e87-550d8d3ee86c	2023-02-06 13:57:19.482	2023-02-06 13:57:19.482	Jumanji	Joe Johnston	Adventure, Comedy, Family	15 Dec 1995
3344c90d-3fac-4efd-a2dd-b76d058f9ca5	2023-02-06 14:08:13.396	2023-02-06 14:08:13.396	Zoo	N/A	Drama, Mystery, Sci-Fi	30 Jun 2015
e5f400b9-1d18-44de-b8d9-fcd4a2c0b34a	2023-02-06 14:08:23.947	2023-02-06 14:08:23.947	Test	Chris Mason Johnson	Drama, History, Romance	04 Apr 2014
173708ec-0acd-4902-820d-47d66100045d	2023-02-06 14:10:53.144	2023-02-06 14:10:53.144	Titanic	James Cameron	Drama, Romance	19 Dec 1997
27c3160c-6aa2-4edb-9c3c-b8d25f1f6935	2023-02-06 14:11:00.055	2023-02-06 14:11:00.055	Titanic	James Cameron	Drama, Romance	19 Dec 1997
f9759c59-0047-49b6-88d4-b065b9cc4a45	2023-02-06 14:11:16.193	2023-02-06 14:11:16.193	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
5264dc3b-daf1-47ca-b93f-0414898d7b2d	2023-02-06 14:12:47.242	2023-02-06 14:12:47.242	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
8ba032c6-53fc-47c7-ab95-20147b571490	2023-02-06 14:12:53.753	2023-02-06 14:12:53.753	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
0181033a-4543-443f-970b-f36b86e5818d	2023-02-06 14:13:55.28	2023-02-06 14:13:55.28	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
cfb45893-2f08-42e6-97b5-323701e46153	2023-02-06 14:14:00.031	2023-02-06 14:14:00.031	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
a20cd175-37cb-442f-af8f-300451542a17	2023-02-06 14:14:06.03	2023-02-06 14:14:06.03	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
27cdd00f-7a1d-44d6-ab0f-0815f0871bbf	2023-02-06 14:15:38.009	2023-02-06 14:15:38.009	Titanic 2	Myles Byrne-Dunhill	Short, Comedy	04 Apr 2017
1cf6e7c6-26e4-480b-aaab-4c74929b6c05	2023-02-06 14:15:51.837	2023-02-06 14:15:51.837	Avatar	James Cameron	Action, Adventure, Fantasy	18 Dec 2009
70509862-f2e0-4a05-abdd-b1363549b7ef	2023-02-06 14:19:39.75	2023-02-06 14:19:39.75	Avatar	James Cameron	Action, Adventure, Fantasy	18 Dec 2009
e1f6b4c4-abb4-49bd-b0b3-2a43a2a23f35	2023-02-06 14:24:18.229	2023-02-06 14:24:18.229	Avatar	James Cameron	Action, Adventure, Fantasy	18 Dec 2009
2539d376-0b33-4035-b4d0-241dbf612107	2023-02-06 14:24:19.309	2023-02-06 14:24:19.309	Avatar	James Cameron	Action, Adventure, Fantasy	18 Dec 2009
384d1aad-2699-41c4-8664-819e82bee0b5	2023-02-06 14:24:20.484	2023-02-06 14:24:20.484	Avatar	James Cameron	Action, Adventure, Fantasy	18 Dec 2009
e3b01388-8402-4d72-bf2c-f9427f285993	2023-02-06 14:37:05.104	2023-02-06 14:37:05.104	Black	Sanjay Leela Bhansali	Drama	04 Feb 2005
300daaac-84da-42f2-98eb-b69cb21a45a9	2023-02-06 14:37:54.481	2023-02-06 14:37:54.481	Black	Sanjay Leela Bhansali	Drama	04 Feb 2005
0af5d74f-044f-4b71-8f4c-c76f5d649378	2023-02-06 14:37:55.834	2023-02-06 14:37:55.834	Black	Sanjay Leela Bhansali	Drama	04 Feb 2005
ac65f107-bb1e-4e62-9340-b06f65750323	2023-02-06 15:02:36.326	2023-02-06 15:02:36.326	Taxi	Gérard Pirès	Action, Comedy, Crime	20 Nov 1998
f25aeb58-8824-4500-b76c-2bfef4427376	2023-02-06 15:02:37.545	2023-02-06 15:02:37.545	Taxi	Gérard Pirès	Action, Comedy, Crime	20 Nov 1998
4ea64c7b-5341-435e-a6b7-c5596332afbe	2023-02-06 15:02:38.464	2023-02-06 15:02:38.464	Taxi	Gérard Pirès	Action, Comedy, Crime	20 Nov 1998
9028d423-693c-4266-87f8-619b066e9c62	2023-02-06 15:02:39.351	2023-02-06 15:02:39.351	Taxi	Gérard Pirès	Action, Comedy, Crime	20 Nov 1998
fa52d212-d567-4df5-ae3a-302ef48bdca1	2023-02-06 15:14:22.087	2023-02-06 15:14:22.087	Karate Kid	Abraham Cruz	Action, Sport	06 May 1967
4b182cc7-8b82-4170-acf6-ad4bf995b403	2023-02-06 15:15:55.6	2023-02-06 15:15:55.6	Karate Kid	Abraham Cruz	Action, Sport	06 May 1967
3aca478e-1be9-49cc-980f-a247387d38c6	2023-02-06 15:16:16.626	2023-02-06 15:16:16.626	Karate Kid	Abraham Cruz	Action, Sport	06 May 1967
077394f1-f700-4cfd-a858-665274b31d0a	2023-02-06 15:16:31.515	2023-02-06 15:16:31.515	Karate Kid	Abraham Cruz	Action, Sport	06 May 1967
fbaf18fb-c283-4e54-af82-03c56104e2e3	2023-02-06 15:17:21.524	2023-02-06 15:17:21.524	Son of the Musk	Ollie Kremer	Animation, Short	22 Jun 2020
0270fbf0-d00f-47e8-8106-f15ecb16a061	2023-02-06 15:21:39.463	2023-02-06 15:21:39.463	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
28d5562c-f274-4b1a-834f-dd5f4e34c1c9	2023-02-06 15:21:43.003	2023-02-06 15:21:43.003	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
38b6ea70-b821-450c-837f-c7efe8875587	2023-02-06 15:21:57.437	2023-02-06 15:21:57.437	Home Alone	Chris Columbus	Comedy, Family	16 Nov 1990
55378476-0fe8-4319-b3f3-de0bb28d10f3	2023-02-06 15:22:19.068	2023-02-06 15:22:19.068	Home Alone	Chris Columbus	Comedy, Family	16 Nov 1990
9d40b86f-b0a8-4478-ab25-bc946caccfb1	2023-02-06 15:22:20.12	2023-02-06 15:22:20.12	Home Alone	Chris Columbus	Comedy, Family	16 Nov 1990
7371026a-b22f-48ae-b37f-b719923e2ed1	2023-02-06 15:22:21.1	2023-02-06 15:22:21.1	Home Alone	Chris Columbus	Comedy, Family	16 Nov 1990
4a7d7d78-8d8d-4dd3-be2d-d3b098fedbc5	2023-02-06 15:23:53.796	2023-02-06 15:23:53.796	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
b0764c00-8d6f-47ed-bc34-276a16370e21	2023-02-06 15:23:55.903	2023-02-06 15:23:55.903	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
15be5efa-b637-4534-ba1c-dadf75d29888	2023-02-06 15:23:56.799	2023-02-06 15:23:56.799	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
113308e8-f4a9-4d1d-b786-95a381a82d6c	2023-02-06 15:23:57.598	2023-02-06 15:23:57.598	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
6b161ea9-1e45-4530-b60f-f207a6f2776f	2023-02-06 15:23:58.341	2023-02-06 15:23:58.341	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
22c802a7-07b6-4778-9d0f-b66cf8a94388	2023-02-06 15:23:59.154	2023-02-06 15:23:59.154	Uncharted	Ruben Fleischer	Action, Adventure	18 Feb 2022
\.



COPY public."User" (id, email, "hashedPassword", "createdAt", "updatedAt", "isPremium", "limit") FROM stdin;
9c82ea11-2b43-4690-8253-91635d48f6c1	user1@email.com	$2b$10$59Z1DDTwK7ZGz4j.J47PlOZ1cCbJRE6KJFWne6VTyCgdubQ9KYxSy	2023-02-06 13:10:22.801	2023-02-06 14:41:59.95	t	18
7f083f1e-0434-4274-9f34-6dba0d04ba87	user3@email.com	$2b$10$5OKEyW9MDadIZ1Mv9e3Vxe7LIL95SOF4gzkRzSQvb3CM/pG1P24YO	2023-02-06 14:34:50.099	2023-02-06 14:45:57.066	f	13
51e1b0fb-2cb2-4028-a09d-c46a38fb4403	user4@email.com	$2b$10$ByeNu4qcQHQ5v6N6webEdu3n.zC92Uhon1ENQsqks0Oes/U6u45/O	2023-02-06 14:55:47.953	2023-02-06 14:55:47.953	t	0
27fae320-824a-4607-b22c-23a0e7dbb53a	user5@email.com	$2b$10$s7GFvoqmO.1vjyhEGfaDeO72b5P6j4AnZAMde09MeHxFrSA4WH7xu	2023-02-06 14:59:32.987	2023-02-06 15:00:28.747	f	5
dd18562e-77f1-4cb6-a3fa-c7a02c57248c	user2@email.com	$2b$10$vHWFG2jNFA5.0IfVyyGxOuh65Cww/3xiZkpaUObwyVjoNEFrofQBK	2023-02-06 13:37:44.215	2023-02-06 14:25:33.246	f	7
e0c62b1e-adc0-49ee-8e60-e4ecbe0a5120	user6@email.com	$2b$10$9f0bS4R0WjB7wM7Zqn/Ll.m0d0EZxUh5D6fiGv5NHtjHy77fJeSTu	2023-02-06 15:02:01.865	2023-02-06 15:02:40.312	f	5
7aad94f7-fe2d-419b-9fba-b284120c62d7	user7@email.com	$2b$10$i3IAnsfM7W4oiu1jAN948O4cvryDpTR5d1su2zxHLkEeQYa1k3fku	2023-02-06 15:20:46.141	2023-02-06 15:22:21.092	f	6
\.



COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
7729544f-9c84-425a-98d7-a482d1a4a9bd	0678bc028e9899bd00c7c53216c074ae7877b73e39c66f54c87dce62ea58158c	2023-02-06 15:03:57.206717+02	20230204130229_init	\N	\N	2023-02-06 15:03:57.19089+02	1
d9a4ad73-6181-4443-b86a-a32c72b414da	d2d2510ae3fa6b79f83a575612b16dd3e259c78667e0e492a6cc0a57a025a0b9	2023-02-06 15:03:57.255168+02	20230204160218_init	\N	\N	2023-02-06 15:03:57.207435+02	1
9f4722b5-1918-4db6-b78f-3f95e5759976	c0ff2713f6e3bf744ba90f436ccba318c751d6a7d8eabe272f84a37cdce45183	2023-02-06 15:03:57.258291+02	20230205191106_init	\N	\N	2023-02-06 15:03:57.255807+02	1
a5622d97-f396-445c-aa4b-f6a95687ea34	f0aa5d6e4d346b932216bdf258d6e13ee915b5ce0dd4412eece71c8a13d4c280	2023-02-06 15:03:57.291469+02	20230205193254_init	\N	\N	2023-02-06 15:03:57.258917+02	1
d29af8b4-8c6d-48da-b080-6a4db6284b1f	1d33ef7d3c66cf004da20b8495c1f35c600152e87a93426c7dc225db91e12c4d	2023-02-06 15:03:57.29668+02	20230205205305_init	\N	\N	2023-02-06 15:03:57.292148+02	1
7eb1c324-d945-4772-b347-b07a6b624e2f	f2639a38b96b95be99c85ef729dbb88cd740bb9d2d815132b70e1f1a66ec408a	2023-02-06 15:03:57.300052+02	20230206103707_limit	\N	\N	2023-02-06 15:03:57.297687+02	1
1764b627-7111-4f83-b18a-7ec8ac293f10	9ff838727312fa57dbd5d65932d9e40e3c217c42b4665efaba02b18499efbc61	2023-02-06 15:03:59.700259+02	20230206130359_init	\N	\N	2023-02-06 15:03:59.692523+02	1
82a50301-4fab-45ba-ac80-05482d3088ed	6910ba76cd37eeef6028eb7731d353aa2a8dbc9d4b12877a9efde86f323e1ee4	2023-02-06 15:26:53.553482+02	20230206132653_init	\N	\N	2023-02-06 15:26:53.547928+02	1
c15d1f0e-1891-42a8-b6f7-7c76a90288b6	978bf686800ec25ad85d74779f1862104d95d0475ecdc62ff1ea8f661bf09909	2023-02-06 15:29:00.48443+02	20230206132900_init	\N	\N	2023-02-06 15:29:00.480469+02	1
7612f0e1-ee60-4c85-89e8-fe8f7b11749c	ead4780985f73e9c9879f4dbfcaf3093d2b4ff7c9ee47a3e4112cf2ca2c9d462	2023-02-06 16:30:00.837676+02	20230206143000_init	\N	\N	2023-02-06 16:30:00.821857+02	1
\.



ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);



CREATE UNIQUE INDEX "Movie_id_key" ON public."Movie" USING btree (id);



CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


CREATE UNIQUE INDEX "User_id_key" ON public."User" USING btree (id);



REVOKE USAGE ON SCHEMA public FROM PUBLIC;



