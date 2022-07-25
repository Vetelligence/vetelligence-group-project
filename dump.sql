--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public."user" (id, username, password, state, city, user_type, first_name, last_name, email, phone_number) FROM stdin;
\.


--
-- Data for Name: employer; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.employer (id, user_id, company, status) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.jobs (id, job_name, employer_id) FROM stdin;
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.skills (id, skill_name) FROM stdin;
1	Communication
3	Language
10	Teamwork ( Collaboration + Cooperation)
11	Problem solving
12	time management (time-critical + time-sensitive)
13	time-critical
14	time-sensitive
15	Critical thinking
16	Decision-making
17	Decision making
18	Decisive
19	Organizational
20	Logistic
22	planning
23	Preparation
28	Conflict management
29	Leadership
32	management
33	coordinates activities of subordinate units
35	Creativity
37	Persuasion
38	Openness to criticism
40	Compromise
43	consultative
45	Dependability(Responsibility + Reliability)
48	Listening
49	Motivation 
50	Encourage
2	Community relations
55	analyze
27	adapt
26	adaptability
51	assessment
6	Collaboration
30	commands
8	Conduct liaison
5	cooperation
42	counseling
52	counterintelligence
44	creative thinking
21	designing
57	engineering
54	evaluate
56	formulate
34	improvise
53	intelligence
9	Liason
7	Maintains Liason
39	negotiation
47	reliability
41	resolution
36	resourcefulness
4	respond
46	responsibility
24	s
25	stress
31	1
\.


--
-- Data for Name: job_skills; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.job_skills (id, skills_id, job_id) FROM stdin;
\.


--
-- Data for Name: mos; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.mos (id, mos, name, branch) FROM stdin;
1	3M031	Services	Air Force
2	3M051	Services	Air Force
3	3M071	Services	Air Force
4	3M091	Services	Air Force
5	2T131	Vehicle Operations	Air Force
6	2T151	Vehicle Operations	Air Force
7	2T171	Vehicle Operations	Air Force
8	2T191	Vehicle Operations	Air Force
9	2T1X1	Vehicle Operations	Air Force
10	1W031	Weather	Air Force
11	1W031A	Weather  Forecaster	Air Force
12	1W031A	Weather Forecaster	Air Force
13	1W051	Weather	Air Force
14	1W051A	Weather  Forecaster	Air Force
15	1W051A	Weather Forecaster	Air Force
16	1W071	Weather	Air Force
17	1W071A	Weather  Forecaster	Air Force
18	1W071A	Weather Forecaster	Air Force
19	1W091	Weather	Air Force
20	1W091A	Weather  Forecaster	Air Force
21	1W091A	Weather Forecaster	Air Force
22	1W0X1	Weather	Air Force
23	1B135	Ground Radar Systems Apprentice	Air Force
24	1B155	Ground Radar Systems Apprentice	Air Force
25	1B175	Ground Radar Systems Apprentice	Air Force
26	1B195	Ground Radar Systems Apprentice	Air Force
27	1B1X5	Ground Radar Systems Apprentice	Air Force
28	2E031	Ground Radar Systems Apprentice	Air Force
29	2E031	Air Traffic Control Radar	Air Force
30	2E031A	Air Traffic Control Radar, GPN-20/FPN-62	Air Force
31	2E031B	Air Traffic Control Radar, GPN-20/GPN-22	Air Force
32	2E031C	Air Traffic Control Radar, GPN-12/FPN-61	Air Force
33	2E031D	Air Traffic Control Radar, GPN-12/GPN-22	Air Force
34	2E031E	Air Traffic Control Radar, MPN-14K/GPN-20/GPN-22	Air Force
35	2E032	Aircraft Control and Warning Radar	Air Force
36	2E033	Automatic Tracking Radar	Air Force
37	2E051	Air Traffic Control Radar	Air Force
38	2E051	Ground Radar Systems Apprentice	Air Force
39	2E051A	Air Traffic Control Radar, GPN-20/FPN-62	Air Force
40	2E051B	Air Traffic Control Radar, GPN-20/GPN-22	Air Force
41	2E051C	Air Traffic Control Radar, GPN-12/FPN-61	Air Force
42	2E051D	Air Traffic Control Radar, GPN-12/GPN-22	Air Force
43	2E051E	Air Traffic Control Radar, MPN-14K/GPN-20/GPN-22	Air Force
44	2E052	Aircraft Control and Warning Radar	Air Force
45	2E053	Automatic Tracking Radar	Air Force
46	2E071	Air Traffic Control Radar	Air Force
47	2E071	Ground Radar Systems Apprentice	Air Force
48	2E071A	Air Traffic Control Radar, GPN-20/FPN-62	Air Force
49	2E071B	Air Traffic Control Radar, GPN-20/GPN-22	Air Force
50	2E071C	Air Traffic Control Radar, GPN-12/FPN-61	Air Force
51	2E071D	Air Traffic Control Radar, GPN-12/GPN-22	Air Force
52	2E071E	Air Traffic Control Radar, MPN-14K/GPN-20/GPN-22	Air Force
53	2E072	Aircraft Control and Warning Radar	Air Force
54	2E073	Automatic Tracking Radar	Air Force
55	2E091	Air Traffic Control Radar	Air Force
56	2E091	Ground Radar Systems Apprentice	Air Force
57	2E091A	Air Traffic Control Radar, GPN-20/FPN-62	Air Force
58	2E091B	Air Traffic Control Radar, GPN-20/GPN-22	Air Force
59	2E091C	Air Traffic Control Radar, GPN-12/FPN-61	Air Force
60	2E091D	Air Traffic Control Radar, GPN-12/GPN-22	Air Force
61	2E091E	Air Traffic Control Radar, MPN-14K/GPN-20/GPN-22	Air Force
62	2E092	Aircraft Control and Warning Radar	Air Force
63	2E093	Automatic Tracking Radar	Air Force
64	2E0X1	Air Traffic Control Radar	Air Force
65	2E0X2	Aircraft Control And Warning Radar	Air Force
66	2E0X3	Automatic Tracking Radar	Air Force
67	3D135	Ground Radar Systems	Air Force
68	3D155	Ground Radar Systems	Air Force
69	3D175	Ground Radar Systems	Air Force
70	3D1X5	Ground Radar Systems	Air Force
71	2A351	A-10, F-15, & U-2 Avionics Systems	Air Force
72	2A371	A-10, F-15, & U-2 Avionics Systems	Air Force
73	2A391	A-10, F-15, & U-2 Avionics Systems	Air Force
74	2A3X1	A-10, F-15, & U-2 Avionics Systems	Air Force
75	1B331	Electronic Warfare Operator	Air Force
76	1B351	Electronic Warfare Operator	Air Force
77	1B371	Electronic Warfare Operator	Air Force
78	1B391	Electronic Warfare Operator	Air Force
79	1B431	Network Warfare Operator	Air Force
80	1B431	Cyberspace Defense	Air Force
81	1B451	Cyberspace Defense	Air Force
82	1B451	Network Warfare Operator	Air Force
83	1B471	Cyberspace Defense	Air Force
84	1B471	Network Warfare Operator	Air Force
85	1B491	Cyberspace Defense	Air Force
86	1B491	Network Warfare Operator	Air Force
87	1B4X1	Network Warfare Operator	Air Force
88	2W031	Munitions Systems	Air Force
89	2W031A	Munitions Systems, Material	Air Force
90	2W031B	Munitions Systems, Production	Air Force
91	2W051	Munitions Systems	Air Force
92	2W051A	Munitions Systems, Material	Air Force
93	2W051B	Munitions Systems, Production	Air Force
94	2W071	Munitions Systems	Air Force
95	2W071A	Munitions Systems, Material	Air Force
96	2W071B	Munitions Systems, Production	Air Force
97	2W091	Munitions Systems	Air Force
98	2W091A	Munitions Systems, Material	Air Force
99	2W091B	Munitions Systems, Production	Air Force
100	2W0X1	Munitions Systems	Air Force
101	1B136	Airfield Systems Apprentice	Air Force
102	1B156	Airfield Systems Apprentice	Air Force
103	1B176	Airfield Systems Apprentice	Air Force
308	12B2	Bomber Navigator	Air Force
104	1B196	Airfield Systems Apprentice	Air Force
105	1B1X6	Airfield Systems Apprentice	Air Force
106	2E132	Airfield Systems Apprentice	Air Force
107	2E152	Airfield Systems Apprentice	Air Force
108	2E172	Airfield Systems Apprentice	Air Force
109	2E192	Airfield Systems Apprentice	Air Force
110	2E1X2	Airfield Systems Apprentice	Air Force
111	30432	Meteorological and Navigation Systems Specialist	Air Force
112	30452	Meteorological and Navigation Systems Specialist	Air Force
113	30472	Meteorological and Navigation Systems Specialist	Air Force
114	30492	Meteorological and Navigation Systems Specialist	Air Force
115	3D136	Airfield Systems	Air Force
116	3D156	Airfield Systems	Air Force
117	3D176	Airfield Systems	Air Force
118	3D196	Airfield Systems	Air Force
119	3D1X6	Airfield Systems	Air Force
120	3N231	Premier Band	Air Force
121	3N251	Premier Band	Air Force
122	3N271	Premier Band	Air Force
123	3N291	Premier Band	Air Force
124	36M1	Mission Support	Air Force
125	36M2	Mission Support	Air Force
126	36M3	Mission Support	Air Force
127	36M4	Mission Support	Air Force
128	3E931	Emergency Management	Air Force
129	3E951	Emergency Management	Air Force
130	3E971	Emergency Management	Air Force
131	3E991	Emergency Management	Air Force
132	3E9X1	Emergency Management	Air Force
133	1N231	Communication Signals Intelligence	Air Force
134	1N251	Communication Signals Intelligence	Air Force
135	1N271	Communication Signals Intelligence	Air Force
136	1N291	Communication Signals Intelligence	Air Force
137	1N2X1	COMMUNICATION SIGNALS INTELLIGENCE	Air Force
138	8J000	Correctional Custody Supervisor	Air Force
139	1U031	Remotely Piloted Aircraft (RPA) Sensor Operator	Air Force
140	1U051	Remotely Piloted Aircraft (RPA) Sensor Operator	Air Force
141	1U071	Remotely Piloted Aircraft (RPA) Sensor Operator	Air Force
142	1U091	Remotely Piloted Aircraft (RPA) Sensor Operator	Air Force
143	1U0X1	Remotely Piloted Aircraft (RPA) Sensor Operator	Air Force
144	2P031	PMEL	Air Force
145	2P051	PMEL	Air Force
146	2P071	PMEL	Air Force
147	2P091	PMEL	Air Force
148	2T332	Special Vehicle Maintenance	Air Force
149	2T332B	Special Vehicle Maintenance, Refueling Vehicles	Air Force
150	2T352	Special Vehicle Maintenance	Air Force
151	2T352B	Special Vehicle Maintenance, Refueling Vehicles	Air Force
152	2T372	Special Vehicle Maintenance	Air Force
153	2T372B	Special Vehicle Maintenance, Refueling Vehicles	Air Force
154	2T392	Special Vehicle Maintenance	Air Force
155	2T392B	Special Vehicle Maintenance, Refueling Vehicles	Air Force
156	2T3X2	Special Vehicle Maintenance	Air Force
157	11E1	Experimental Test Pilot	Air Force
158	11E2	Experimental Test Pilot	Air Force
159	11E3	Experimental Test Pilot	Air Force
160	11E4	Experimental Test Pilot	Air Force
161	11EX	Experimental Test Pilot	Air Force
162	12E1	Experimental Test Navigator	Air Force
163	12E1	Experimental Test Combat Systems Officer	Air Force
164	12E13	Experimental Test Navigator	Air Force
165	12E14	Experimental Test Navigator	Air Force
166	12E2	Experimental Test Navigator	Air Force
167	12E2	Experimental Test Combat Systems Officer	Air Force
168	12E3	Experimental Test Combat Systems Officer	Air Force
169	12E4	Experimental Test Combat Systems Officer	Air Force
170	12EX	Experimental Test Combat Systems Officer	Air Force
171	44D1	Pathologist	Air Force
172	44D1H	Pathologist, Microbiology	Air Force
173	44D1J	Pathologist, Immunology	Air Force
174	44D2	Pathologist	Air Force
175	44D2H	Pathologist, Microbiology	Air Force
176	44D2J	Pathologist, Immunology	Air Force
177	44D3	Pathologist	Air Force
178	44D3H	Pathologist, Microbiology	Air Force
179	44D3J	Pathologist, Immunology	Air Force
180	44D4	Pathologist	Air Force
181	44D4H	Pathologist, Microbiology	Air Force
182	44D4J	Pathologist, Immunology	Air Force
183	44DX	PATHOLOGIST	Air Force
184	44T1	Radiotherapist	Air Force
185	44T2	Radiotherapist	Air Force
186	44T3	Radiotherapist	Air Force
187	44T4	Radiotherapist	Air Force
188	44TX	RADIOTHERAPIST	Air Force
189	81130	Security specialist	Air Force
190	81150	Security specialist	Air Force
191	81170	Security specialist	Air Force
192	81190	Security specialist	Air Force
193	4R0X1	DIAGNOSTIC IMAGING	Air Force
194	4R0X2	Nuclear Medicine	Air Force
195	8A100	Career Assistance Advisor	Air Force
196	8A130	Career Assistance Advisor	Air Force
197	8A150	Career Assistance Advisor	Air Force
198	8A170	Career Assistance Advisor	Air Force
199	8A190	Career Assistance Advisor	Air Force
200	1N331	Cryptologic Language Analyst	Air Force
201	1N331	Germanic Cryptologic Linguist Apprentice	Air Force
202	1N332	Romance Cryptologic Linguist Apprentice	Air Force
203	1N333	Slavic Cryptologic Linguist Apprentice	Air Force
204	1N334	Far East Cryptologic Linguist Apprentice	Air Force
205	1N335	Mid East Cryptologic Linguist	Air Force
206	1N336	African Cryptologic Linguist Apprentice	Air Force
207	1N337	Turkic Cryptologic Linguist Apprentice	Air Force
208	1N338	Polynesian Cryptologic Linguist Apprentice	Air Force
209	1N339	Indo-Iranian Cryptologic Linguist Apprentice	Air Force
210	1N351	Cryptologic Language Analyst	Air Force
211	1N351	Germanic Cryptologic Linguist Apprentice	Air Force
212	1N352	Romance Cryptologic Linguist Apprentice	Air Force
213	1N353	Slavic Cryptologic Linguist Apprentice	Air Force
214	1N354	Far East Cryptologic Linguist Apprentice	Air Force
215	1N355	Mid East Cryptologic Linguist	Air Force
216	1N356	African Cryptologic Linguist Apprentice	Air Force
217	1N357	Turkic Cryptologic Linguist Apprentice	Air Force
218	1N358	Polynesian Cryptologic Linguist Apprentice	Air Force
219	1N359	Indo-Iranian Cryptologic Linguist Apprentice	Air Force
220	1N371	Germanic Cryptologic Linguist Apprentice	Air Force
221	1N371	Cryptologic Language Analyst	Air Force
222	1N372	Romance Cryptologic Linguist Apprentice	Air Force
223	1N373	Slavic Cryptologic Linguist Apprentice	Air Force
224	1N374	Far East Cryptologic Linguist Apprentice	Air Force
225	1N375	Mid East Cryptologic Linguist	Air Force
226	1N376	African Cryptologic Linguist Apprentice	Air Force
227	1N377	Turkic Cryptologic Linguist Apprentice	Air Force
228	1N378	Polynesian Cryptologic Linguist Apprentice	Air Force
229	1N379	Indo-Iranian Cryptologic Linguist Apprentice	Air Force
230	1N391	Cryptologic Language Analyst	Air Force
231	1N391	Germanic Cryptologic Linguist Apprentice	Air Force
232	1N392	Romance Cryptologic Linguist Apprentice	Air Force
233	1N393	Slavic Cryptologic Linguist Apprentice	Air Force
234	1N394	Far East Cryptologic Linguist Apprentice	Air Force
235	1N395	Mid East Cryptologic Linguist	Air Force
236	1N396	African Cryptologic Linguist Apprentice	Air Force
237	1N397	Turkic Cryptologic Linguist Apprentice	Air Force
238	1N398	Polynesian Cryptologic Linguist Apprentice	Air Force
239	1N399	Indo-Iranian Cryptologic Linguist Apprentice	Air Force
240	1N3X1	Cryptologic Language Analyst	Air Force
241	1N3X2	Romance Cryptologic Linguist Apprentice	Air Force
242	1N3X3	Slavic Cryptologic Linguist Apprentice	Air Force
243	1N3X4	Far East Cryptologic Linguist Apprentice	Air Force
244	1N3X5	Mid East Cryptologic Linguist	Air Force
245	1N3X6	African Cryptologic Linguist Apprentice	Air Force
246	1N3X7	Turkic Cryptologic Linguist Apprentice	Air Force
247	1N3X8	Polynesian Cryptologic Linguist Apprentice	Air Force
248	1N3X9	Indo-Iranian Cryptologic Linguist Apprentice	Air Force
249	42E1	Optometrist	Air Force
250	42E2	Optometrist	Air Force
251	42E3	Optometrist	Air Force
252	42E4	Optometrist	Air Force
253	85G0	USAF Honor Guard	Air Force
254	23131	Visual Information Specialist	Air Force
255	23151	Visual Information Specialist	Air Force
256	23171	Visual Information Specialist	Air Force
257	23191	Visual Information Specialist	Air Force
258	3N033	Graphic Arts Apprentice	Air Force
259	3N053	Graphic Arts Apprentice	Air Force
260	3N073	Graphic Arts Apprentice	Air Force
261	3N093	Graphic Arts Apprentice	Air Force
262	3N0X3	Graphic Arts Apprentice	Air Force
263	3V031	Graphic Arts Apprentice	Air Force
264	3V032	Still Photography Apprentice	Air Force
265	3V033	Video Apprentice	Air Force
266	3V051	Graphic Arts Apprentice	Air Force
267	3V052	Still Photography Apprentice	Air Force
268	3V053	Video Apprentice	Air Force
269	3V071	Graphic Arts Apprentice	Air Force
270	3V072	Still Photography Apprentice	Air Force
271	3V073	Video Apprentice	Air Force
272	3V091	Graphic Arts Apprentice	Air Force
273	3V092	Still Photography Apprentice	Air Force
274	3V093	Video Apprentice	Air Force
275	3V0X1	Graphic Arts Apprentice	Air Force
276	3V0X2	Still Photography Apprentice	Air Force
277	3V0X3	Video Apprentice	Air Force
278	3V131	Imagery Production	Air Force
279	3V151	Imagery Production	Air Force
280	3V171	Imagery Production	Air Force
281	3V191	Imagery Production	Air Force
282	3V1X1	Imagery Production	Air Force
283	81C0	Training Commander, OTS	Air Force
284	44F1	Family Physician	Air Force
285	44F2	Family Physician	Air Force
286	44F3	Family Physician	Air Force
287	44F4	Family Physician	Air Force
288	44FX	FAMILY PHYSICIAN	Air Force
289	48F1	Family Practice Specialist	Air Force
290	48F2	Family Practice Specialist	Air Force
291	48F3	Family Practice Specialist	Air Force
292	48F4	Family Practice Specialist	Air Force
293	11U1	Remotely Piloted Aircraft (RPA) Pilot	Air Force
294	11U1D	Remotely Operated Aircraft	Air Force
295	11U2	Remotely Piloted Aircraft (RPA) Pilot	Air Force
296	11U2D	Remotely Operated Aircraft	Air Force
297	11U3	Remotely Piloted Aircraft (RPA) Pilot	Air Force
298	11U3D	Remotely Operated Aircraft	Air Force
299	11U4	Remotely Piloted Aircraft (RPA) Pilot	Air Force
300	11U4D	Remotely Operated Aircraft	Air Force
301	11UX	Remotely Piloted Aircraft (RPA) Pilot	Air Force
302	12A1	Airlift Navigator	Air Force
303	12A2	Airlift Navigator	Air Force
304	12A3	Airlift Navigator	Air Force
305	12A4	Airlift Navigator	Air Force
306	12B1	Bomber Navigator	Air Force
307	12B1	Bomber Combat Systems Officer	Air Force
309	12B2	Bomber Combat Systems Officer	Air Force
310	12B3	Bomber Navigator	Air Force
311	12B3	Bomber Combat Systems Officer	Air Force
312	12B4	Bomber Navigator	Air Force
313	12B4	Bomber Combat Systems Officer	Air Force
314	12BX	Bomber Combat Systems Officer	Air Force
315	12F1	Fighter Navigator	Air Force
316	12F1	Fighter Combat Systems Officer	Air Force
317	12F2	Fighter Combat Systems Officer	Air Force
318	12F2	Fighter Navigator	Air Force
319	12F3	Fighter Combat Systems Officer	Air Force
320	12F3	Fighter Navigator	Air Force
321	12F4	Fighter Combat Systems Officer	Air Force
322	12F4	Fighter Navigator	Air Force
323	12FX	Fighter Combat Systems Officer	Air Force
324	12M1	Mobility Navigator	Air Force
325	12M2	Mobility Navigator	Air Force
326	12M3	Mobility Navigator	Air Force
327	12M4	Mobility Navigator	Air Force
328	12R1	Reconnaissance/surveillance/electronic Warfare Navigator	Air Force
329	12R1	Recce/surv/elect Warfare Combat Systems Officer	Air Force
330	12R2	Recce/surv/elect Warfare Combat Systems Officer	Air Force
331	12R2	Reconnaissance/surveillance/electronic Warfare Navigator	Air Force
332	12R3	Reconnaissance/surveillance/electronic Warfare Navigator	Air Force
333	12R3	Recce/surv/elect Warfare Combat Systems Officer	Air Force
334	12R4	Recce/surv/elect Warfare Combat Systems Officer	Air Force
335	12R4	Reconnaissance/surveillance/electronic Warfare Navigator	Air Force
336	12RX	Recce/Surv/Elect Warfare Combat Systems Officer	Air Force
337	12S1	Special Operations Navigator	Air Force
338	12S1	Special Operations Combat Systems Officer	Air Force
339	12S2	Special Operations Combat Systems Officer	Air Force
340	12S2	Special Operations Navigator	Air Force
341	12S3	Special Operations Navigator	Air Force
342	12S3	Special Operations Combat Systems Officer	Air Force
343	12S4	Special Operations Combat Systems Officer	Air Force
344	12S4	Special Operations Navigator	Air Force
345	12SX	Special Operations Combat Systems Officer	Air Force
346	12T1	Tanker Navigator	Air Force
347	12T2	Tanker Navigator	Air Force
348	12T3	Tanker Navigator	Air Force
349	12T4	Tanker Navigator	Air Force
350	18A1	Attack Remotely Piloted Aircraft Pilot	Air Force
351	18A2	Attack Remotely Piloted Aircraft Pilot	Air Force
352	18A3	Attack Remotely Piloted Aircraft Pilot	Air Force
353	18A4	Attack Remotely Piloted Aircraft Pilot	Air Force
354	18AX	Attack Remotely Piloted Aircraft Pilot (18X established in Oct 200	Air Force
355	18R1	Reconnaissance Remotely Piloted Aircraft Pilot	Air Force
356	18R2	Reconnaissance Remotely Piloted Aircraft Pilot	Air Force
357	18R3	Reconnaissance Remotely Piloted Aircraft Pilot	Air Force
358	18R4	Reconnaissance Remotely Piloted Aircraft Pilot	Air Force
359	1N030	Intelligence Operations And Targeting	Air Force
360	1N050	Intelligence Operations And Targeting	Air Force
361	1N070	Intelligence Operations And Targeting	Air Force
362	1N090	Intelligence Operations And Targeting	Air Force
363	1N131	Signal Intelligence Analysis Specialist	Air Force
364	1N131	Imagery Analysis	Air Force
365	1N151	Signal Intelligence Analysis Specialist	Air Force
366	1N151	Imagery Analysis	Air Force
367	1N171	Imagery Analysis	Air Force
368	1N171	Signal Intelligence Analysis Specialist	Air Force
369	1N191	Imagery Analysis	Air Force
370	1N191	Signal Intelligence Analysis Specialist	Air Force
371	1N1X1	IMAGERY ANALYSIS	Air Force
372	1N200	Signals Intelligence Analysis Manager	Air Force
373	44U1	Occupational Medicine	Air Force
374	44U2	Occupational Medicine	Air Force
375	44U3	Occupational Medicine	Air Force
376	44U4	Occupational Medicine	Air Force
377	44UX	OCCUPATIONAL MEDICINE	Air Force
378	8B100	Military Training Leader	Air Force
379	99630	Military Training Manager	Air Force
380	99650	Military Training Manager	Air Force
381	99670	Military Training Manager	Air Force
382	99690	Military Training Manager	Air Force
383	1C631	Space Systems Operations	Air Force
384	1C651	Space Systems Operations	Air Force
385	1C671	Space Systems Operations	Air Force
386	1C691	Space Systems Operations	Air Force
387	44A1	Chief, Hospital/clinic Services	Air Force
388	44AX	CHIEF, HOSPITAL/CLINIC SERVICES	Air Force
389	1T031	Survival, Evasion, Resistance, and Escape (SERE)	Air Force
390	1T051	Survival, Evasion, Resistance, and Escape (SERE)	Air Force
391	1T071	Survival, Evasion, Resistance, and Escape (SERE)	Air Force
392	1T091	Survival, Evasion, Resistance, and Escape (SERE)	Air Force
393	1T0X1	Survival, Evasion, Resistance, and Escape (SERE)	Air Force
394	1A131	Flight Engineer	Air Force
395	1A131B	Flight Engineer Apprentice, Helicopter	Air Force
396	1A131B	Flight Engineer Helper, Helicopter	Air Force
397	1A131C	Flight Engineer Apprentice, Performance Qualified	Air Force
398	1A131C	Flight Engineer Helper, Performance Qualified	Air Force
399	1A151	Flight Engineer	Air Force
400	1A151B	Flight Engineer Apprentice, Helicopter	Air Force
401	1A151B	Flight Engineer Helper, Helicopter	Air Force
402	1A151C	Flight Engineer Apprentice, Performance Qualified	Air Force
403	1A151C	Flight Engineer Helper, Performance Qualified	Air Force
404	1A171	Flight Engineer	Air Force
405	1A171B	Flight Engineer Apprentice, Helicopter	Air Force
406	1A171B	Flight Engineer Helper, Helicopter	Air Force
407	1A171C	Flight Engineer Apprentice, Performance Qualified	Air Force
408	1A171C	Flight Engineer Helper, Performance Qualified	Air Force
409	1A191	Flight Engineer	Air Force
410	1A191B	Flight Engineer Helper, Helicopter	Air Force
411	1A191B	Flight Engineer Apprentice, Helicopter	Air Force
412	1A191C	Flight Engineer Helper, Performance Qualified	Air Force
413	1A191C	Flight Engineer Apprentice, Performance Qualified	Air Force
414	1A1X1	Flight Engineer	Air Force
415	8B000	Military Training Instructor	Air Force
416	2F031	Fuels	Air Force
417	2F051	Fuels	Air Force
418	2F071	Fuels	Air Force
419	2F091	Fuels	Air Force
420	63130	Fuels Specialist	Air Force
421	63150	Fuels Specialist	Air Force
422	63170	Fuels Specialist	Air Force
423	63190	Fuels Specialist	Air Force
424	3E131	Heating, Ventilation, AC, and Refrigeration	Air Force
425	3E151	Heating, Ventilation, AC, and Refrigeration	Air Force
426	3E171	Heating, Ventilation, AC, and Refrigeration	Air Force
427	3E191	Heating, Ventilation, AC, and Refrigeration	Air Force
428	3E1X1	Heating, Ventilation, AC, and Refrigeration	Air Force
429	54530	Heating, Ventilation, Air Conditioning and Refrigeration Spec	Air Force
430	54550	Heating, Ventilation, Air Conditioning and Refrigeration Spec	Air Force
431	54570	Heating, Ventilation, Air Conditioning and Refrigeration Spec	Air Force
432	54590	Heating, Ventilation, Air Conditioning and Refrigeration Spec	Air Force
433	2R031	Maintenance Management Analysis	Air Force
434	2R051	Maintenance Management Analysis	Air Force
435	2R071	Maintenance Management Analysis	Air Force
436	2R091	Maintenance Management Analysis	Air Force
437	2R0X1	Maintenance Management Analysis	Air Force
438	2T331	Vehicle and Vehicular Equipment Maintenance	Air Force
439	2T334	General Purpose Vehicle Maintenance Apprentice	Air Force
440	2T335	Vehicle Body Maintenance Apprentice	Air Force
441	2T351	Vehicle and Vehicular Equipment Maintenance	Air Force
442	2T354	General Purpose Vehicle Maintenance Apprentice	Air Force
443	2T371	Vehicle and Vehicular Equipment Maintenance	Air Force
444	2T374	General Purpose Vehicle Maintenance Apprentice	Air Force
445	2T391	Vehicle and Vehicular Equipment Maintenance	Air Force
446	2T394	General Purpose Vehicle Maintenance Apprentice	Air Force
447	2T3X1	Vehicle and Vehicular Equipment Maintenance	Air Force
448	2T3X4	General Purpose Vehicle Maintenance Apprentice	Air Force
449	2T3X5	Vehicle Body Maintenance Apprentice	Air Force
450	2T431	General Purpose Vehicle Mechanic Apprentice	Air Force
451	2T432	Vehicle Body Maintenance Apprentice	Air Force
452	2T451	General Purpose Vehicle Mechanic Apprentice	Air Force
453	2T471	General Purpose Vehicle Mechanic Apprentice	Air Force
454	2T491	General Purpose Vehicle Mechanic Apprentice	Air Force
455	2T4X1	General Purpose Vehicle Mechanic Apprentice	Air Force
456	2T4X2	Vehicle Body Maintenance Apprentice	Air Force
457	3E433	Pest Management	Air Force
458	3E453	Pest Management	Air Force
459	3E473	Pest Management	Air Force
460	3E493	Pest Management	Air Force
461	11G1	Generalist Pilot	Air Force
462	11G2	Generalist Pilot	Air Force
463	11G3	Generalist Pilot	Air Force
464	11G4	Generalist Pilot	Air Force
465	11GX	Generalist Pilot	Air Force
466	44J1	Clinical Geneticist	Air Force
467	44J2	Clinical Geneticist	Air Force
468	44J3	Clinical Geneticist	Air Force
469	44J4	Clinical Geneticist	Air Force
470	44JX	CLINICAL GENETICIST	Air Force
471	47K1	Pediatric Dentist	Air Force
472	47K2	Pediatric Dentist	Air Force
473	47K3	Pediatric Dentist	Air Force
474	47K4	Pediatric Dentist	Air Force
475	47KX	PEDIATRIC DENTIST	Air Force
476	13A1	Astronaut	Air Force
477	13A2	Astronaut	Air Force
478	13A3	Astronaut	Air Force
479	13A4	Astronaut	Air Force
480	13AX	Astronaut	Air Force
481	1A231	Aircraft Loadmaster	Air Force
482	1A251	Aircraft Loadmaster	Air Force
483	1A271	Aircraft Loadmaster	Air Force
484	1A291	Aircraft Loadmaster	Air Force
485	1A2X1	AIRCRAFT LOADMASTER	Air Force
486	2A232	Electronic Warfare Systems	Air Force
487	2A252	Electronic Warfare Systems	Air Force
488	2A272	Electronic Warfare Systems	Air Force
489	2A292	Electronic Warfare Systems	Air Force
490	42F1	Podiatrist	Air Force
491	42F2	Podiatrist	Air Force
492	42F3	Podiatrist	Air Force
493	42F4	Podiatrist	Air Force
494	42FX	PODIATRIST	Air Force
495	2T333	Vehicle Maintenance Control and Analysis Apprentice	Air Force
496	2T337	Vehicle Management and Analysis	Air Force
497	2T353	Vehicle Maintenance Control and Analysis Apprentice	Air Force
498	2T357	Vehicle Management and Analysis	Air Force
499	2T373	Vehicle Maintenance Control and Analysis Apprentice	Air Force
500	2T377	Vehicle Management and Analysis	Air Force
501	2T393	Vehicle Maintenance Control and Analysis Apprentice	Air Force
502	2T397	Vehicle Management and Analysis	Air Force
503	2T3X3	Vehicle Maintenance Control And Analysis Apprentice	Air Force
504	2T3X7	Vehicle Management and Analysis	Air Force
505	1A331	Airborne Mission Systems	Air Force
506	1A351	Airborne Mission Systems	Air Force
507	1A371	Airborne Mission Systems	Air Force
508	1A391	Airborne Mission Systems	Air Force
509	1A3X1	AIRBORNE MISSION SYSTEMS	Air Force
510	1A531	Airborne Missions Systems Apprentice	Air Force
511	1A532	Airborne Command and Control Communications Equipment	Air Force
512	1A551	Airborne Missions Systems Apprentice	Air Force
513	1A552	Airborne Command and Control Communications Equipment	Air Force
514	1A571	Airborne Missions Systems Apprentice	Air Force
515	1A572	Airborne Command and Control Communications Equipment	Air Force
516	1A591	Airborne Missions Systems Apprentice	Air Force
517	1A592	Airborne Command and Control Communications Equipment	Air Force
518	1A5X1	Airborne Missions Systems Apprentice	Air Force
519	1A5X2	Airborne Command And Control Communications Equipment	Air Force
520	2A136	Airborne Command Post Communications Equipment	Air Force
521	2A156	Airborne Command Post Communications Equipment	Air Force
522	2A176	Airborne Command Post Communications Equipment	Air Force
523	2A196	Airborne Command Post Communications Equipment	Air Force
524	2A432	Aircraft Communication and Navigation Systems Apprentice	Air Force
525	2A433	Aircraft Command Control Communications and Navigation Systems	Air Force
526	2A452	Aircraft Communication and Navigation Systems Apprentice	Air Force
527	2A453	Aircraft Command Control Communications and Navigation Systems	Air Force
528	2A472	Aircraft Communication and Navigation Systems Apprentice	Air Force
529	2A473	Aircraft Command Control Communications and Navigation Systems	Air Force
530	2A492	Aircraft Communication and Navigation Systems Apprentice	Air Force
531	2A493	Aircraft Command Control Communications and Navigation Systems	Air Force
532	2A4X2	Aircraft Communication And Navigation Systems Apprentice	Air Force
533	2A4X3	Aircraft Command Control Communications and Navigation Systems App	Air Force
534	3N032	Broadcast Journalist	Air Force
535	3N052	Broadcast Journalist	Air Force
536	3N072	Broadcast Journalist	Air Force
537	3N092	Broadcast Journalist	Air Force
538	3N0X2	Broadcast Journalist	Air Force
539	45332	Aircraft Communication and Navigation Systems Specialist	Air Force
540	45352	Aircraft Communication and Navigation Systems Specialist	Air Force
541	45372	Aircraft Communication and Navigation Systems Specialist	Air Force
542	45392	Aircraft Communication and Navigation Systems Specialist	Air Force
543	1C031	Airfield Management Apprentice	Air Force
544	1C051	Airfield Management Apprentice	Air Force
545	1C071	Airfield Management Apprentice	Air Force
546	1C091	Airfield Management Apprentice	Air Force
547	1C0X1	Airfield Management Apprentice	Air Force
548	1C731	Airfield Management	Air Force
549	1C751	Airfield Management	Air Force
550	1C771	Airfield Management	Air Force
551	1C791	Airfield Management	Air Force
552	1C7X1	Airfield Management	Air Force
553	2A631	Aerospace Propulsion, Jet Engines & Turboprop/Turboshaft Prop	Air Force
554	2A631	Aerospace Propulsion	Air Force
555	2A651	Aerospace Propulsion	Air Force
556	2A651	Aerospace Propulsion, Jet Engines & Turboprop/Turboshaft Prop	Air Force
557	2A671	Aerospace Propulsion	Air Force
558	2A671	Aerospace Propulsion, Jet Engines & Turboprop/Turboshaft Prop	Air Force
559	2A691	Aerospace Propulsion	Air Force
560	2A691	Aerospace Propulsion, Jet Engines & Turboprop/Turboshaft Prop	Air Force
561	2A6X1	Aerospace Propulsion	Air Force
562	2B671	Aerospace Propulsion, Jet Engines & Turboprop/Turboshaft Prop	Air Force
563	44E1	Emergency Services Physician	Air Force
564	44E2	Emergency Services Physician	Air Force
565	44E3	Emergency Services Physician	Air Force
566	44E4	Emergency Services Physician	Air Force
567	44EX	EMERGENCY SERVICES PHYSICIAN	Air Force
568	80C0	Commander, Cadet Squadron, USAFA	Air Force
569	1A731	Aerial Gunner	Air Force
570	1A751	Aerial Gunner	Air Force
571	1A771	Aerial Gunner	Air Force
572	1A7X1	AERIAL GUNNER	Air Force
573	1N531	Electronic Signals Intelligence Exploitation Apprentice	Air Force
574	1N551	Electronic Signals Intelligence Exploitation Apprentice	Air Force
575	1N571	Electronic Signals Intelligence Exploitation Apprentice	Air Force
576	1N591	Electronic Signals Intelligence Exploitation Apprentice	Air Force
577	1N5X1	Electronic Signals Intelligence Exploitation Apprentice	Air Force
578	2A735	Low Observable Aircraft Structural Maintenance	Air Force
579	2A755	Low Observable Aircraft Structural Maintenance	Air Force
580	2A775	Low Observable Aircraft Structural Maintenance	Air Force
581	2A795	Low Observable Aircraft Structural Maintenance	Air Force
582	2A7X5	Low Observable Aircraft Structural Maintenance	Air Force
583	47S1	Oral and Maxillofacial Surgeon	Air Force
584	47S2	Oral and Maxillofacial Surgeon	Air Force
585	47S3	Oral and Maxillofacial Surgeon	Air Force
586	47S4	Oral and Maxillofacial Surgeon	Air Force
587	3N034	Still Photography	Air Force
588	3N054	Still Photography	Air Force
589	3N074	Still Photography	Air Force
590	3N094	Still Photography	Air Force
591	3N0X4	Still Photography	Air Force
592	4R031	Diagnostic Imaging	Air Force
593	4R032	Nuclear Medicine	Air Force
594	4R051	Diagnostic Imaging	Air Force
595	4R052	Nuclear Medicine	Air Force
596	4R071	Diagnostic Imaging	Air Force
597	4R072	Nuclear Medicine	Air Force
598	4R091	Diagnostic Imaging	Air Force
599	4R092	Nuclear Medicine	Air Force
600	1A631	Flight Attendant	Air Force
601	1A651	Flight Attendant	Air Force
602	1A671	Flight Attendant	Air Force
603	1A691	Flight Attendant	Air Force
604	1A6X1	Flight Attendent	Air Force
605	43A1	Aerospace and Operational Physiologist	Air Force
606	43A2	Aerospace and Operational Physiologist	Air Force
607	43A3	Aerospace and Operational Physiologist	Air Force
608	43A4	Aerospace and Operational Physiologist	Air Force
609	43AX	AEROSPACE AND OPERATIONAL PHYSIOLOGIST	Air Force
610	8A000	Flight Attendant	Air Force
611	8A030	Flight Attendant	Air Force
612	8A050	Flight Attendant	Air Force
613	8A070	Flight Attendant	Air Force
614	8A090	Flight Attendant	Air Force
615	1C431	Tactical Air Control Party (TACP)	Air Force
616	1C451	Tactical Air Control Party (TACP)	Air Force
617	1C471	Tactical Air Control Party (TACP)	Air Force
618	1C491	Tactical Air Control Party (TACP)	Air Force
619	1C4X1	Tactical Air Control Party (TACP)	Air Force
620	12K1	Trainer Navigator	Air Force
621	12K1	Trainer Combat Systems Officer	Air Force
622	12K2	Trainer Combat Systems Officer	Air Force
623	12K2	Trainer Navigator	Air Force
624	12K3	Trainer Navigator	Air Force
625	12K3	Trainer Combat Systems Officer	Air Force
626	12K4	Trainer Combat Systems Officer	Air Force
627	12K4	Trainer Navigator	Air Force
628	12KX	Trainer Combat Systems Officer	Air Force
629	8S100	Sensor Operator	Air Force
630	46M1	Nurse Anesthetist	Air Force
631	46M2	Nurse Anesthetist	Air Force
632	46M3	Nurse Anesthetist	Air Force
633	46M4	Nurse Anesthetist	Air Force
634	46MX	Nurse Anesthetist	Air Force
635	4U031	Orthotic Apprentice	Air Force
636	4U051	Orthotic Apprentice	Air Force
637	4U071	Orthotic Apprentice	Air Force
638	4U091	Orthotic Apprentice	Air Force
639	2M032	Missile and Space Systems Maintenance	Air Force
640	2M052	Missile and Space Systems Maintenance	Air Force
641	2M072	Missile and Space Systems Maintenance	Air Force
642	2M092	Missile and Space Systems Maintenance	Air Force
643	2M0X2	Missile and Space Systems Maintenance	Air Force
644	3S131	Military Equal Opportunity	Air Force
645	3S131	Social Actions Apprentice	Air Force
646	3S151	Military Equal Opportunity	Air Force
647	3S151	Social Actions Apprentice	Air Force
648	3S171	Military Equal Opportunity	Air Force
649	3S171	Social Actions Apprentice	Air Force
650	3S191	Social Actions Apprentice	Air Force
651	3S191	Military Equal Opportunity	Air Force
652	3S1X1	Military Equal Opportunity	Air Force
653	82A0	Academic Program Manager	Air Force
654	8P100	Defense Attaché	Air Force
655	2R131	Maintenance Management Production	Air Force
656	2R151	Maintenance Management Production	Air Force
657	2R171	Maintenance Management Production	Air Force
658	2R191	Maintenance Management Production	Air Force
659	2R1X1	Maintenance Management Production	Air Force
660	2A031	Avionics Test Station and Components	Air Force
661	2A031A	Avionics Test Station And Components, Avionics Systems, F-15	Air Force
662	2A031B	Avionics Test Station And Components, Avionics Systems	Air Force
663	2A031C	Avionics Test Station And Components, Avionics Sensor Systems	Air Force
664	2A031D	Avionics Test Station And Components, Electronic Warfare Sys	Air Force
665	2A051	Avionics Test Station and Components	Air Force
666	2A051A	Avionics Test Station And Components, Avionics Systems, F-15	Air Force
667	2A051B	Avionics Test Station And Components, Avionics Systems	Air Force
668	2A051C	Avionics Test Station And Components, Avionics Sensor Systems	Air Force
669	2A051D	Avionics Test Station And Components, Electronic Warfare Sys	Air Force
670	2A071	Avionics Test Station and Components	Air Force
671	2A071A	Avionics Test Station And Components, Avionics Systems, F-15	Air Force
672	2A071B	Avionics Test Station And Components, Avionics Systems	Air Force
673	2A071C	Avionics Test Station And Components, Avionics Sensor Systems	Air Force
674	2A071D	Avionics Test Station And Components, Electronic Warfare Sys	Air Force
675	2A091	Avionics Test Station and Components	Air Force
676	2A091A	Avionics Test Station And Components, Avionics Systems, F-15	Air Force
677	2A091B	Avionics Test Station And Components, Avionics Systems	Air Force
678	2A091C	Avionics Test Station And Components, Avionics Sensor Systems	Air Force
679	2A091D	Avionics Test Station And Components, Electronic Warfare Sys	Air Force
680	2A0X1	Avionics Test Station and Components	Air Force
681	2A131	Avionic Sensors Maintenance Apprentice	Air Force
682	2A132	Avionics Guidance and Control Systems	Air Force
683	2A133	Communication and Navigation Systems	Air Force
684	2A135	Avionics Support Equipment Apprentice	Air Force
685	2A135A	Avionics Support Equipment (SE) Helper, F-4	Air Force
686	2A135B	Avionics Support Equipment (SE) Helper, C-5	Air Force
687	2A151	Avionic Sensors Maintenance Apprentice	Air Force
688	2A152	Avionics Guidance and Control Systems	Air Force
689	2A153	Communication and Navigation Systems	Air Force
690	2A155	Avionics Support Equipment Apprentice	Air Force
691	2A155A	Avionics Support Equipment (SE) Helper, F-4	Air Force
692	2A155B	Avionics Support Equipment (SE) Helper, C-5	Air Force
693	2A171	Avionic Sensors Maintenance Apprentice	Air Force
694	2A172	Avionics Guidance and Control Systems	Air Force
695	2A173	Communication and Navigation Systems	Air Force
696	2A175	Avionics Support Equipment Apprentice	Air Force
697	2A175A	Avionics Support Equipment (SE) Helper, F-4	Air Force
698	2A175B	Avionics Support Equipment (SE) Helper, C-5	Air Force
699	2A191	Avionic Sensors Maintenance Apprentice	Air Force
700	2A192	Avionics Guidance and Control Systems	Air Force
701	2A193	Communication and Navigation Systems	Air Force
702	2A195	Avionics Support Equipment Apprentice	Air Force
703	2A195A	Avionics Support Equipment (SE) Helper, F-4	Air Force
704	2A195B	Avionics Support Equipment (SE) Helper, C-5	Air Force
705	2A1X1	Avionic Sensors Maintenance Apprentice	Air Force
706	2A1X2	Avionics Guidance And Control Systems	Air Force
707	2A1X3	Communication And Navigation Systems	Air Force
708	2A1X5	Avionics Support Equipment (SE) Apprentice	Air Force
709	2A230	Electronic Warfare/offensive Avionic	Air Force
710	2A250	Electronic Warfare/offensive Avionic	Air Force
711	2A270	Electronic Warfare/offensive Avionic	Air Force
712	2A290	Electronic Warfare/offensive Avionic	Air Force
713	2A431	Aircraft Guidance and Control Systems Apprentice	Air Force
714	2A451	Aircraft Guidance and Control Systems Apprentice	Air Force
715	2A471	Aircraft Guidance and Control Systems Apprentice	Air Force
716	2A491	Aircraft Guidance and Control Systems Apprentice	Air Force
717	2A4X1	Aircraft Guidance And Control Systems Apprentice	Air Force
718	45531	Avionics Guidance and Control Systems Specialist	Air Force
719	45551	Avionics Guidance and Control Systems Specialist	Air Force
720	45571	Avionics Guidance and Control Systems Specialist	Air Force
721	45591	Avionics Guidance and Control Systems Specialist	Air Force
722	45631	Electronic Warfare Systems Specialist	Air Force
723	45651	Electronic Warfare Systems Specialist	Air Force
724	45671	Electronic Warfare Systems Specialist	Air Force
725	45691	Electronic Warfare Systems Specialist	Air Force
726	3E431	Water and Fuel Systems Maintenance	Air Force
727	3E432	Liquid Fuel Systems Maintenance Apprentice	Air Force
728	3E451	Water and Fuel Systems Maintenance	Air Force
729	3E452	Liquid Fuel Systems Maintenance Apprentice	Air Force
730	3E471	Water and Fuel Systems Maintenance	Air Force
731	3E472	Liquid Fuel Systems Maintenance Apprentice	Air Force
732	3E491	Water and Fuel Systems Maintenance	Air Force
733	3E492	Liquid Fuel Systems Maintenance Apprentice	Air Force
734	3E4X1	Water and Fuel Systems Maintenance	Air Force
735	3E4X2	Liquid Fuel Systems Maintenance Apprentice	Air Force
736	56631	Utilities Systems Specialist	Air Force
737	56632	Liquid Fuel Systems Maintenance Specialist	Air Force
738	56651	Utilities Systems Specialist	Air Force
739	56652	Liquid Fuel Systems Maintenance Specialist	Air Force
740	56671	Utilities Systems Specialist	Air Force
741	56672	Liquid Fuel Systems Maintenance Specialist	Air Force
742	56691	Utilities Systems Specialist	Air Force
743	56692	Liquid Fuel Systems Maintenance Specialist	Air Force
744	1B137	Cable and Antenna Systems Apprentice	Air Force
745	1B157	Cable and Antenna Systems Apprentice	Air Force
746	1B177	Cable and Antenna Systems Apprentice	Air Force
747	1B197	Cable and Antenna Systems Apprentice	Air Force
748	1B1X7	Cable and Antenna Systems Apprentice	Air Force
749	2A632	Aerospace Ground Equipment (age)	Air Force
750	2A652	Aerospace Ground Equipment (age)	Air Force
751	2A672	Aerospace Ground Equipment (age)	Air Force
752	2A692	Aerospace Ground Equipment (age)	Air Force
753	2A6X2	Aerospace Ground Equipment (AGE)	Air Force
754	36139	Antenna & Cable Systems Installation/Maintenance Specialist	Air Force
755	36159	Antenna & Cable Systems Installation/Maintenance Specialist	Air Force
756	36179	Antenna & Cable Systems Installation/Maintenance Specialist	Air Force
757	36199	Antenna & Cable Systems Installation/Maintenance Specialist	Air Force
758	3D137	Cable and Antenna Systems	Air Force
759	3D157	Cable and Antenna Systems	Air Force
760	3D177	Cable and Antenna Systems	Air Force
761	3D197	Cable and Antenna Systems	Air Force
762	3D1X7	Cable and Antenna Systems	Air Force
763	2W131	Aircraft Armament Systems	Air Force
764	2W131D	Aircraft Armament Systems, F-4	Air Force
765	2W131H	Aircraft Armament Systems, F-111	Air Force
766	2W151	Aircraft Armament Systems	Air Force
767	2W151D	Aircraft Armament Systems, F-4	Air Force
768	2W151H	Aircraft Armament Systems, F-111	Air Force
769	2W171	Aircraft Armament Systems	Air Force
770	2W171D	Aircraft Armament Systems, F-4	Air Force
771	2W171H	Aircraft Armament Systems, F-111	Air Force
772	2W191	Aircraft Armament Systems	Air Force
773	2W191D	Aircraft Armament Systems, F-4	Air Force
774	2W191H	Aircraft Armament Systems, F-111	Air Force
775	2W1X1	Aircraft Armament Systems	Air Force
776	3E331	Structural	Air Force
777	3E351	Structural	Air Force
778	3E371	Structural	Air Force
779	3E391	Structural	Air Force
780	3E3X1	Structural	Air Force
781	47P1	Prosthodontist	Air Force
782	47P2	Prosthodontist	Air Force
783	47P3	Prosthodontist	Air Force
784	47P4	Prosthodontist	Air Force
785	47PX	PROSTHODONTIST	Air Force
786	4J031	Occupational Therapy Apprentice	Air Force
787	4J051	Occupational Therapy Apprentice	Air Force
788	4J071	Occupational Therapy Apprentice	Air Force
789	4J091	Occupational Therapy Apprentice	Air Force
790	55230	Structural	Air Force
791	55250	Structural	Air Force
792	55270	Structural	Air Force
793	55290	Structural	Air Force
794	1A791	Aerial Gunner	Air Force
795	1C032	Aviation Resource Management	Air Force
796	1C052	Aviation Resource Management	Air Force
797	1C072	Aviation Resource Management	Air Force
798	1C092	Aviation Resource Management	Air Force
799	1C0X2	Aviation Resource Management	Air Force
800	2W231	Nuclear Weapons	Air Force
801	2W251	Nuclear Weapons	Air Force
802	2W271	Nuclear Weapons	Air Force
803	2W291	Nuclear Weapons	Air Force
804	2W2X1	Nuclear Weapons	Air Force
805	43Y1	Health Physicist	Air Force
806	43Y2	Health Physicist	Air Force
807	43Y3	Health Physicist	Air Force
808	43Y4	Health Physicist	Air Force
809	45P1	Physical Medicine Physician	Air Force
810	45P2	Physical Medicine Physician	Air Force
811	45P3	Physical Medicine Physician	Air Force
812	45P4	Physical Medicine Physician	Air Force
813	45PX	PHYSICAL MEDICINE PHYSICIAN	Air Force
814	47G1	Dentist	Air Force
815	47G2	Dentist	Air Force
816	47G3	Dentist	Air Force
817	47G4	Dentist	Air Force
818	47GX	DENTIST	Air Force
819	44Y1	Critical Care Medicine	Air Force
820	44Y2	Critical Care Medicine	Air Force
821	44Y3	Critical Care Medicine	Air Force
822	44Y4	Critical Care Medicine	Air Force
823	44YX	CRITICAL CARE MEDICINE	Air Force
824	44G1	General Practice Physician	Air Force
825	44G2	General Practice Physician	Air Force
826	44G3	General Practice Physician	Air Force
827	44G4	General Practice Physician	Air Force
828	44GX	GENERAL PRACTICE PHYSICIAN	Air Force
829	44M1	Internist	Air Force
830	44M2	Internist	Air Force
831	44M3	Internist	Air Force
832	44M4	Internist	Air Force
833	44MX	INTERNIST	Air Force
834	44P1	Psychiatrist	Air Force
835	44P2	Psychiatrist	Air Force
836	44P3	Psychiatrist	Air Force
837	44P4	Psychiatrist	Air Force
838	44PX	PSYCHIATRIST	Air Force
839	44S1	Dermatologist	Air Force
840	44S2	Dermatologist	Air Force
841	44S3	Dermatologist	Air Force
842	44S4	Dermatologist	Air Force
843	44SX	DERMATOLOGIST	Air Force
844	44Z1	Allergist	Air Force
845	44Z2	Allergist	Air Force
846	44Z3	Allergist	Air Force
847	44Z4	Allergist	Air Force
848	44ZX	ALLERGIST	Air Force
849	45B1	Orthopedic Surgeon	Air Force
850	45B2	Orthopedic Surgeon	Air Force
851	45B3	Orthopedic Surgeon	Air Force
852	45B4	Orthopedic Surgeon	Air Force
853	45BX	ORTHOPEDIC SURGEON	Air Force
854	45E1	Ophthalmologist	Air Force
855	45E2	Ophthalmologist	Air Force
856	45E3	Ophthalmologist	Air Force
857	45E4	Ophthalmologist	Air Force
858	45EX	OPHTHALMOLOGIST	Air Force
859	45G1	Obstetrician and Gynecologist	Air Force
860	45G2	Obstetrician and Gynecologist	Air Force
861	45G3	Obstetrician and Gynecologist	Air Force
862	45G4	Obstetrician and Gynecologist	Air Force
863	45GX	OBSTETRICIAN AND GYNECOLOGIST	Air Force
864	45N1	Otorhinolaryngologist	Air Force
865	45N2	Otorhinolaryngologist	Air Force
866	45N3	Otorhinolaryngologist	Air Force
867	45N4	Otorhinolaryngologist	Air Force
868	45NX	OTORHINOLARYNGOLOGIST	Air Force
869	45S1	Surgeon	Air Force
870	45S2	Surgeon	Air Force
871	45S3	Surgeon	Air Force
872	45S4	Surgeon	Air Force
873	45SX	SURGEON	Air Force
874	45U1	Urologist	Air Force
875	45U2	Urologist	Air Force
876	45U3	Urologist	Air Force
877	45U4	Urologist	Air Force
878	45UX	UROLOGIST	Air Force
879	47B1	Orthodontist	Air Force
880	47B2	Orthodontist	Air Force
881	47B3	Orthodontist	Air Force
882	47B4	Orthodontist	Air Force
883	47BX	ORTHODONTIST	Air Force
884	47D1	Oral and Maxillofacial Pathologist	Air Force
885	47D2	Oral and Maxillofacial Pathologist	Air Force
886	47D3	Oral and Maxillofacial Pathologist	Air Force
887	47D4	Oral and Maxillofacial Pathologist	Air Force
888	47DX	Oral and Maxillofacial Pathologist	Air Force
889	47E1	Endodontist	Air Force
890	47E2	Endodontist	Air Force
891	47E3	Endodontist	Air Force
892	47E4	Endodontist	Air Force
893	47EX	ENDODONTIST	Air Force
894	47H1	Periodontist	Air Force
895	47H2	Periodontist	Air Force
896	47H3	Periodontist	Air Force
897	47H4	Periodontist	Air Force
898	47HX	PERIODONTIST	Air Force
899	47S1	Oral and Maxillofacial Pathologist	Air Force
900	47S2	Oral and Maxillofacial Pathologist	Air Force
901	47S3	Oral and Maxillofacial Pathologist	Air Force
902	47S4	Oral and Maxillofacial Pathologist	Air Force
903	47SX	ORAL AND MAXILLOFACIAL PATHOLOGIST	Air Force
904	1A031	In-flight Refueling	Air Force
905	1A051	In-flight Refueling	Air Force
906	1A071	In-flight Refueling	Air Force
907	1A091	In-flight Refueling	Air Force
908	1A0X1	IN-FLIGHT REFUELING	Air Force
909	2M031	Missile and Space Systems Electronics Maintenance	Air Force
910	2M033	Missile and Space Facilities	Air Force
911	2M051	Missile and Space Systems Electronics Maintenance	Air Force
912	2M053	Missile and Space Facilities	Air Force
913	2M071	Missile and Space Systems Electronics Maintenance	Air Force
914	2M073	Missile and Space Facilities	Air Force
915	2M091	Missile and Space Systems Electronics Maintenance	Air Force
916	2M093	Missile and Space Facilities	Air Force
917	2M0X1	Missile and Space Systems Electronics Maintenance	Air Force
918	2M0X3	Missile and Space Facilities	Air Force
919	4J031	Physical Medicine	Air Force
920	4J051	Physical Medicine	Air Force
921	4J071	Physical Medicine	Air Force
922	4J091	Physical Medicine	Air Force
923	4J0X1	Physical Medicine	Air Force
924	61231	Subsistence Operations Specialist	Air Force
925	61251	Subsistence Operations Specialist	Air Force
926	61271	Subsistence Operations Specialist	Air Force
927	61291	Subsistence Operations Specialist	Air Force
928	8R000	Enlisted Accessions Recruiter	Air Force
929	8R030	Enlisted Accessions Recruiter	Air Force
930	8R050	Enlisted Accessions Recruiter	Air Force
931	8R070	Enlisted Accessions Recruiter	Air Force
932	8R090	Enlisted Accessions Recruiter	Air Force
933	2A333	Tactical Aircraft Maintenance F/EF-111, F-4, T-37/OA-37	Air Force
934	2A333	Tactical Aircraft Maintenance F-15, F-16/F-117, General, F-22A	Air Force
935	2A333	Tactical Aircraft Maintenance	Air Force
936	2A333	Tactical Aircraft Maintenance  F-15, F-16/F-117, General, F-22A	Air Force
937	2A353	Tactical Aircraft Maintenance	Air Force
938	2A353	Tactical Aircraft Maintenance  F-15, F-16/F-117, General, F-22A	Air Force
939	2A353	Tactical Aircraft Maintenance F/EF-111, F-4, T-37/OA-37	Air Force
940	2A353	Tactical Aircraft Maintenance F-15, F-16/F-117, General, F-22A	Air Force
941	2A373	Tactical Aircraft Maintenance	Air Force
942	2A373	Tactical Aircraft Maintenance F-15, F-16/F-117, General, F-22A	Air Force
943	2A373	Tactical Aircraft Maintenance  F-15, F-16/F-117, General, F-22A	Air Force
944	2A373	Tactical Aircraft Maintenance F/EF-111, F-4, T-37/OA-37	Air Force
945	2A393	Tactical Aircraft Maintenance	Air Force
946	2A393	Tactical Aircraft Maintenance F-15, F-16/F-117, General, F-22A	Air Force
947	2A393	Tactical Aircraft Maintenance  F-15, F-16/F-117, General, F-22A	Air Force
948	2A393	Tactical Aircraft Maintenance F/EF-111, F-4, T-37/OA-37	Air Force
949	2A3X3	Tactical Aircraft Maintenance	Air Force
950	2A531	Aerospace Maintenance	Air Force
951	2A532	Helicopter/Tiltrotor Maintenance	Air Force
952	2A551	Aerospace Maintenance	Air Force
953	2A552	Helicopter/Tiltrotor Maintenance	Air Force
954	2A571	Aerospace Maintenance	Air Force
955	2A572	Helicopter/Tiltrotor Maintenance	Air Force
956	2A591	Aerospace Maintenance	Air Force
957	2A592	Helicopter/Tiltrotor Maintenance	Air Force
958	2A5X1	Aerospace Maintenance	Air Force
959	2A5X2	Helicopter/Tiltrotor Maintenance	Air Force
960	2T231	AIR TRANSPORTATION	Air Force
961	2T251	AIR TRANSPORTATION	Air Force
962	2T271	AIR TRANSPORTATION	Air Force
963	2T291	AIR TRANSPORTATION	Air Force
964	43T1	Biomedical Laboratory	Air Force
965	43T2	Biomedical Laboratory	Air Force
966	43T3	Biomedical Laboratory	Air Force
967	43T4	Biomedical Laboratory	Air Force
968	43TX	BIOMEDICAL LABORATORY	Air Force
969	8H030	Airman Dorm Leader	Air Force
970	8H050	Airman Dorm Leader	Air Force
971	8H070	Airman Dorm Leader	Air Force
972	8H090	Airman Dorm Leader	Air Force
973	1C131	Air Traffic Control	Air Force
974	1C151	Air Traffic Control	Air Force
975	1C171	Air Traffic Control	Air Force
976	1C191	Air Traffic Control	Air Force
977	2A634	Aircraft Fuel Systems	Air Force
978	2A636	Aircraft Electrical and Environmental Systems	Air Force
979	2A654	Aircraft Fuel Systems	Air Force
980	2A656	Aircraft Electrical and Environmental Systems	Air Force
981	2A674	Aircraft Fuel Systems	Air Force
982	2A676	Aircraft Electrical and Environmental Systems	Air Force
983	2A694	Aircraft Fuel Systems	Air Force
984	2A696	Aircraft Electrical and Environmental Systems	Air Force
985	2A6X4	Aircraft Fuel Systems	Air Force
986	2A6X6	Aircraft Electrical and Environmental Systems	Air Force
987	44H1	Nuclear Medicine Physician	Air Force
988	44H2	Nuclear Medicine Physician	Air Force
989	44H3	Nuclear Medicine Physician	Air Force
990	44H4	Nuclear Medicine Physician	Air Force
991	44HX	NUCLEAR MEDICINE PHYSICIAN	Air Force
992	44N1	Neurologist	Air Force
993	44N2	Neurologist	Air Force
994	44N3	Neurologist	Air Force
995	44N4	Neurologist	Air Force
996	44NX	NEUROLOGIST	Air Force
997	4P031	Pharmacy	Air Force
998	4P051	Pharmacy	Air Force
999	4P071	Pharmacy	Air Force
1000	4P091	Pharmacy	Air Force
1001	4P0X1	Pharmacy	Air Force
1002	4T031	Medical Laboratory	Air Force
1003	4T032	Histopathology	Air Force
1004	4T033	Cytotechnology Apprentice	Air Force
1005	4T051	Medical Laboratory	Air Force
1006	4T052	Histopathology	Air Force
1007	4T053	Cytotechnology Apprentice	Air Force
1008	4T071	Medical Laboratory	Air Force
1009	4T072	Histopathology	Air Force
1010	4T073	Cytotechnology Apprentice	Air Force
1011	4T091	Medical Laboratory	Air Force
1012	4T092	Histopathology	Air Force
1013	4T093	Cytotechnology Apprentice	Air Force
1014	4T0X1	Medical laboratory	Air Force
1015	4T0X2	HISTOPATHOLOGY	Air Force
1016	4T0X3	Cytotechnology Apprentice	Air Force
1017	81T0	Instructor	Air Force
1018	90530	Pharmacy Specialist	Air Force
1019	90550	Pharmacy Specialist	Air Force
1020	90570	Pharmacy Specialist	Air Force
1021	90590	Pharmacy Specialist	Air Force
1022	11K1	Trainer Pilot	Air Force
1023	11K2	Trainer Pilot	Air Force
1024	11K3	Trainer Pilot	Air Force
1025	11K4	Trainer Pilot	Air Force
1026	11KX	Trainer Pilot	Air Force
1027	8S000	Missile Facility Manager	Air Force
1028	2A633	Aircrew Egress Systems	Air Force
1029	2A653	Aircrew Egress Systems	Air Force
1030	2A673	Aircrew Egress Systems	Air Force
1031	2A693	Aircrew Egress Systems	Air Force
1032	2A6X3	Aircrew Egress Systems	Air Force
1033	2T355	Vehicle Body Maintenance Apprentice	Air Force
1034	2T375	Vehicle Body Maintenance Apprentice	Air Force
1035	2T395	Vehicle Body Maintenance Apprentice	Air Force
1036	2T452	Vehicle Body Maintenance Apprentice	Air Force
1037	2T472	Vehicle Body Maintenance Apprentice	Air Force
1038	2T492	Vehicle Body Maintenance Apprentice	Air Force
1039	75130	Education Services Specialist	Air Force
1040	75150	Education Services Specialist	Air Force
1041	75170	Education Services Specialist	Air Force
1042	75190	Education Services Specialist	Air Force
1043	2A732	Nondestructive Inspection (NDI)	Air Force
1044	2A733	Aircraft Structural Maintenance	Air Force
1045	2A752	Nondestructive Inspection (NDI)	Air Force
1046	2A753	Aircraft Structural Maintenance	Air Force
1047	2A772	Nondestructive Inspection (NDI)	Air Force
1048	2A773	Aircraft Structural Maintenance	Air Force
1049	2A792	Nondestructive Inspection (NDI)	Air Force
1050	2A793	Aircraft Structural Maintenance	Air Force
1051	2A7X2	Nondestructive Inspection (NDI)	Air Force
1052	2A7X3	Aircraft Structural Maintenance	Air Force
1053	3E031	Electrical Systems	Air Force
1054	3E051	Electrical Systems	Air Force
1055	3E071	Electrical Systems	Air Force
1056	3E091	Electrical Systems	Air Force
1057	3E0X1	Electrical Systems	Air Force
1058	54230	Electrical Systems Specialist	Air Force
1059	54250	Electrical Systems Specialist	Air Force
1060	54270	Electrical Systems Specialist	Air Force
1061	54290	Electrical Systems Specialist	Air Force
1062	9S100	Technical Applications Specialist	Air Force
1063	9S230	Applied Sciences Technician	Air Force
1064	9S250	Applied Sciences Technician	Air Force
1065	9S270	Applied Sciences Technician	Air Force
1066	9S290	Applied Sciences Technician	Air Force
1067	42EX	Optometrist	Air Force
1068	2T031	Traffic Management	Air Force
1069	2T051	Traffic Management	Air Force
1070	2T071	Traffic Management	Air Force
1071	2T091	Traffic Management	Air Force
1072	2T0X1	Traffic Management	Air Force
1073	2A731	Aircraft Metals Technology	Air Force
1074	2A751	Aircraft Metals Technology	Air Force
1075	2A771	Aircraft Metals Technology	Air Force
1076	2A791	Aircraft Metals Technology	Air Force
1077	2A7X1	Aircraft Metals Technology	Air Force
1078	44K1	Pediatrician	Air Force
1079	44K1L	Pediatrician, Medical Genetics	Air Force
1080	44K2	Pediatrician	Air Force
1081	44K2L	Pediatrician, Medical Genetics	Air Force
1082	44K3	Pediatrician	Air Force
1083	44K3L	Pediatrician, Medical Genetics	Air Force
1084	44K4	Pediatrician	Air Force
1085	44K4L	Pediatrician, Medical Genetics	Air Force
1086	44KX	PEDIATRICIAN	Air Force
1087	44R1	Diagnostic Radiologist	Air Force
1088	44R2	Diagnostic Radiologist	Air Force
1089	44R3	Diagnostic Radiologist	Air Force
1090	44R4	Diagnostic Radiologist	Air Force
1091	44RX	DIAGNOSTIC RADIOLOGIST	Air Force
1092	48V1	Pilot-physician	Air Force
1093	48V2	Pilot-physician	Air Force
1094	48V3	Pilot-physician	Air Force
1095	48V4	Pilot-physician	Air Force
1096	48VX	PILOT-PHYSICIAN	Air Force
1097	4V031	Optometry Apprentice	Air Force
1098	4V031	Ophthalmic	Air Force
1099	4V051	Optometry Apprentice	Air Force
1100	4V051	Ophthalmic	Air Force
1101	4V071	Optometry Apprentice	Air Force
1102	4V071	Ophthalmic	Air Force
1103	4V091	Optometry Apprentice	Air Force
1104	4V091	Ophthalmic	Air Force
1105	4V0X1	OPHTHALMIC	Air Force
1106	9D000	Dormitory Manager	Air Force
1107	11H1	Helicopter Pilot	Air Force
1108	43R1	Veterinary Scientist	Air Force
1109	43R2	Veterinary Scientist	Air Force
1110	43R3	Veterinary Scientist	Air Force
1111	43R4	Veterinary Scientist	Air Force
1112	43V1	Veterinary Clinician	Air Force
1113	43V2	Veterinary Clinician	Air Force
1114	43V3	Veterinary Clinician	Air Force
1115	43V4	Veterinary Clinician	Air Force
1116	9L000	Interpreter/translator	Air Force
1117	8G000	Honor Guard	Air Force
1118	8M000	Postal	Air Force
1119	2A635	Aircraft Hydraulic Systems	Air Force
1120	2A655	Aircraft Hydraulic Systems	Air Force
1121	2A675	Aircraft Hydraulic Systems	Air Force
1122	2A695	Aircraft Hydraulic Systems	Air Force
1123	2A6X5	Aircraft Hydraulic Systems	Air Force
1124	3E032	Electrical Power Production	Air Force
1125	3E052	Electrical Power Production	Air Force
1126	3E072	Electrical Power Production	Air Force
1127	3E092	Electrical Power Production	Air Force
1128	3E0X2	Electrical Power Production	Air Force
1129	3E231	Pavements and Construction Equipment	Air Force
1130	3E251	Pavements and Construction Equipment	Air Force
1131	3E271	Pavements and Construction Equipment	Air Force
1132	3E291	Pavements and Construction Equipment	Air Force
1133	3E2X1	Pavements and Construction Equipment	Air Force
1134	3P131	Combat Arms Training and Maintenance Apprentice	Air Force
1135	3P151	Combat Arms Training and Maintenance Apprentice	Air Force
1136	3P171	Combat Arms Training and Maintenance Apprentice	Air Force
1137	3P191	Combat Arms Training and Maintenance Apprentice	Air Force
1138	3P1X1	Combat Arms Training And Maintenance Apprentice	Air Force
1139	43HX	PUBLIC HEALTH OFFICER	Air Force
1140	44A2	Chief, Hospital/clinic Services	Air Force
1141	44A3	Chief, Hospital/clinic Services	Air Force
1142	44A4	Chief, Hospital/clinic Services	Air Force
1143	55131	Pavements and Construction Equipment Specialist	Air Force
1144	55151	Pavements and Construction Equipment Specialist	Air Force
1145	55171	Pavements and Construction Equipment Specialist	Air Force
1146	55191	Pavements and Construction Equipment Specialist	Air Force
1147	88A0	Aide-de-camp	Air Force
1148	88P0	Protocol	Air Force
1149	8P000	Courier	Air Force
1150	8P030	Courier	Air Force
1151	8P050	Courier	Air Force
1152	8P070	Courier	Air Force
1153	8P090	Courier	Air Force
1154	92R	Parachute Rigger	Army
1155	74E	Computer Systems Operator	Army
1156	74F	Programmer/Analyst	Army
1157	35H	Test, Measurement, and Diagnostic Equipment (TMDE) Maintenance Sup	Army
1158	35V	Electronic and Missile Systems Maintenance Chief	Army
1159	72H	Central Office Operations Operator	Army
1160	66B	Army Public Health Nurse	Army
1161	66B	Army Public Health Nurse	Army
1162	81E	Illustrator	Army
1163	84B	Still Photographic Specialist	Army
1164	84C	Motion Picture Photographer	Army
1165	352Q	Communications Interceptor/Locator Technician	Army
1166	36G	Manual Central Office Repairman	Army
1167	740A	Chemical, Biological, Radiological and Nuclear (CBRN)	Army
1168	923A	Petroleum Systems Technician	Army
1169	34B	Punch Card Machine Repairer	Army
1170	64C	Motor Transport Operator	Army
1171	61C	Marine Engineer	Army
1172	92L	Petroleum Laboratory Specialist	Army
1173	34Y	Field Artillery Tactical Fire Direction Systems Repairer	Army
1174	15B	Aircraft Powerplant Repairer	Army
1175	15H	Aircraft Pneudraulics Repairer	Army
1176	15N	Avionic Mechanic	Army
1177	35Q	Avionic Flight Systems Repairer	Army
1178	35R	Avionic System Repairer	Army
1179	39G	Automated Communications Computer Systems Repairer	Army
1180	913A	Armament Systems Maintenance Warrant Officer	Army
1181	91E	Dental Specialist	Army
1182	140B	FAAD Systems Technician (Reserve Component only)	Army
1183	140E	Air and Missile Defense (AMD) Systems Tactician/Technician	Army
1184	140X	Air Defense Artillery Immaterial	Army
1185	68E	Dental Specialist	Army
1186	68P	Radiology Specialist	Army
1187	915E	Senior Automotive Maintenance Warrant Officer/Senior Ordnance	Army
1188	27K	Hawk Fire Control/Continuous Wave Radar Repairer	Army
1189	05F	Radio Teletypewriter Operator (Non-Morse)	Army
1190	47T	USMA, Professor of Leader Development and Organizational Learning	Army
1191	50A	Force Development	Army
1192	68R	Avionic Radar Repairer	Army
1193	45A	Armament Maintenance Apprentice	Army
1194	81A	General Draftsman	Army
1195	84B	Still Photographer	Army
1196	84G	Photographic Laboratory Specialist	Army
1197	918B	Electronic Systems Maintenance Technician	Army
1198	31G	Tactical Communication Chief	Army
1199	882A	Mobility Officer	Army
1200	51C	Contract and Industrial Management	Army
1201	97A	Contracting and Industrial Management Officer	Army
1202	92C	Petroleum Laboratory Specialist	Army
1203	05C	Radio Teletype Operator	Army
1204	43K	Canvas Repairman	Army
1205	45M	Aircraft Armament Subsystem Mechanic	Army
1206	47A	USMA, Professor	Army
1207	51G	Soils Analyst	Army
1208	54D	Chemical Equipment Repairman	Army
1209	57D	Sawyer	Army
1210	62K	Grader Operator	Army
1211	62L	Wheeled Tractor Operator	Army
1212	83F	Offset Pressman	Army
1213	94L	Avionic Communications Equipment Repairer	Army
1214	35C	Surveillance Radar Repairer	Army
1215	35E	Radio and Communications Security (COMSEC) Repairer	Army
1216	35F	Special Electronic Devices Repairer	Army
1217	35N	Wire Systems Equipment Repairer	Army
1218	67N	UH-1 Helicopter Repairman	Army
1219	68B	Aircraft Powerplant Repairer	Army
1220	68B	Aircraft Turbine Engine Repairman	Army
1221	68F	Aircraft Electrician	Army
1222	68G	Airframe Repairman	Army
1223	68G	Aircraft Structural Repairer	Army
1224	68H	Aircraft Hydraulics Repairman	Army
1225	68N	Avionic Mechanic	Army
1226	68N	Cardiovascular Specialist	Army
1227	35K	Unmanned Aerial Vehicle Operator	Army
1228	92S	Shower/Laundry and Clothing Repair Specialist	Army
1229	150A	Air Traffic and Air Space Management Technician	Army
1230	25T	Satellite/Microwave Systems Chief	Army
1231	25X	Senior Signal Sergeant	Army
1232	35D	Air Traffic Control Equipment Repairer	Army
1233	79R	Recruiter	Army
1234	21D	Diver	Army
1235	02Q	Woodwind Group Leader	Army
1236	02R	Percussion Group Leader	Army
1237	05H	Electronic Warfare/Signal Intelligence Morse Interceptor	Army
1238	21Z	Combat Engineering Senior Sergeant	Army
1239	55G	Nuclear Weapons Maintenance Specialist	Army
1240	55X	Ammunition Inspector	Army
1241	55Z	Ammunition Supervisor	Army
1242	05D	Electronic Warfare/Signal Intelligence Emitter Identifier/Locator	Army
1243	12Z	Combat Engineering Senior Sergeant	Army
1244	15S	OH-58D Helicopter Repairer	Army
1245	24H	Hawk Fire Control Repairer	Army
1246	24K	Hawk Continuous Wave Radar Repairer	Army
1247	27E	Land Combat Electronic Missile System Repairer	Army
1248	27G	Chaparral and Redeye Repairer	Army
1249	27H	Hawk Field Maintenance Equipment and Firing Repairer	Army
1250	27T	Avenger System Repairer	Army
1251	27Z	Missile Systems Maintenance Chief	Army
1252	53C	Systems Automation Acquisition	Army
1253	18E	Special Forces Communications Sergeant	Army
1254	24P	Defense Acquisition Radar Mechanic	Army
1255	35B	Electronic Instrument Repairman	Army
1256	56A	Command and Unit Chaplain	Army
1257	82A	Rodman and Tapeman	Army
1258	350F	All Source Intelligence Technician	Army
1259	40A	Space Operations	Army
1260	47G	USMA, Professor of Foreign Languages	Army
1261	51N	Water Supply Specialist	Army
1262	84F	TV Production Specialist	Army
1263	57E	Laundry and Bath Specialist	Army
1264	94H	Test, Measurement, and Diagnostic Equipment Support Specialist	Army
1265	25G	Mobile ADCP Monitor Repairman	Army
1266	29E	Communications Electronics Radio Repairer	Army
1267	31T	Satellite/Microwave Systems Chief	Army
1268	31Z	Senior Signal Sergeant	Army
1269	93D	Air Traffic Control Systems, Subsystems and Equipment Repairer	Army
1270	353T	IEW Systems Maintenance Technician	Army
1271	51R	Electrician	Army
1272	52C	Power Pack Specialist	Army
1273	52B	Power Generation Equipment Operator/Mechanic	Army
1274	600A	Physician Assistant	Army
1275	64Z	Senior Veterinarian (Immaterial)	Army
1276	91A	Medical Equipment Repairer	Army
1277	91A	Medical Equipment Repairer	Army
1278	35B	Strategic Intelligence	Army
1279	67S	OH-58D Helicopter Repairer	Army
1280	91M	Nutrition Care Specialist	Army
1281	91P	Radiology Specialist	Army
1282	68D	Operating Room Specialist	Army
1283	74D	Chemical, Biological, Radiological and Nuclear (CBRN) Specialist	Army
1284	65C	Dietitian	Army
1285	68M	Helicopter Weapon System Repairer	Army
1286	68M	Aircraft Weapon Systems Repairer	Army
1287	76X	Subsistence Supplyman	Army
1288	18F	Special Forces Assistant Operations and Intelligence Sergeant	Army
1289	15P	Aviation Operations Specialist	Army
1290	93P	Flight Operations Coordinator	Army
1291	93P	Aviation Operations Specialist	Army
1292	215D	Terrain Analysis Technician	Army
1293	46Z	Chief Public Affairs NCO	Army
1294	35Z	Signals Intelligence (Electronic Warfare)/ Senior Sergeant/Chief	Army
1295	66H	Observation Airplane Technical Inspector	Army
1296	66N	Utility Helicopter Technical Inspector	Army
1297	66R	AH-64 Attack Helicopter Technical Inspector	Army
1298	66S	Scout Helicopter Technical Inspector	Army
1299	66T	Tactical Transport Helicopter Technical Inspector	Army
1300	66U	Medium Helicopter Technical Inspector	Army
1301	66V	Observation/Scout Helicopter Technical Inspector	Army
1302	66X	Heavy Lift Helicopter Technical Inspector	Army
1303	66Y	AH-1 Attack Helicopter Technical Inspector	Army
1304	98Z	EW/Signal Intelligence Chief	Army
1305	351B	Counter-intelligence Technician	Army
1306	351L	Counter-intelligence Technician	Army
1307	97L	Translator/Interpreter (Reserve Components)	Army
1308	97E	Interrogator	Army
1309	66C	Psychiatric/Mental Health Nurse	Army
1310	66C	Psychiatric/Behavioral Health Nurse	Army
1311	71U	Card and Tape Writer	Army
1312	255Z	Senior Network Operations Technician	Army
1313	88U	Railway Operations Crewmember (RC)	Army
1314	88D	Motor/Rail Transportation	Army
1315	71Q	Journalist	Army
1316	71R	Broadcast Journalist	Army
1317	75B	Veterinary Preventive Medicine	Army
1318	64B	Veterinary Preventive Medicine	Army
1319	65D	Railway Car Repairer	Army
1320	92F	Petroleum Supply Specialist	Army
1321	70C	Health Services Comptroller	Army
1322	36H	Dial/Manual Central Office Repairer	Army
1323	43J	Textile Repairman	Army
1324	35J	Computer/Automation Systems Repair	Army
1325	15K	Aircraft Components Repair Supervisor	Army
1326	35W	Electronic Maintenance Chief	Army
1327	52K	Nuclear Power Plant Instrumentman or Operator	Army
1328	34C	Decentralized Automated Service Support System Computer Repairer	Army
1329	34E	NCR 500 Computer Repairer	Army
1330	34F	DSTE Repairer	Army
1331	34H	ADMSE Repairman	Army
1332	34J	UNIVAC 1004/1005, DCT-9000 System Repairer	Army
1333	34K	IBM 360 Repairer	Army
1334	94M	Radar Repairer	Army
1335	21W	Carpentry and Masonry Specialist	Army
1336	57H	Cargo Handler	Army
1337	57H	Terminal Operations Specialist	Army
1338	25A	Signal, Operations	Army
1339	64Z	Transportation Senior Sergeant	Army
1340	45J	Aircraft Armament Repairman	Army
1341	51T	Test and Evaluations	Army
1342	88C	Marine and Terminal Operations	Army
1343	94E	Radio and Communications Security (COMSEC) Repairer	Army
1344	94F	Computer Detection Systems Repairer	Army
1345	94W	Electronic Maintenance Chief	Army
1346	15A	Aviation Life Support Systems Repairer (ALSS Rep)	Army
1347	15E	Unmanned Aircraft Systems Repairer	Army
1348	15F	Aircraft Electrician	Army
1349	15G	Aircraft Structural Repairer	Army
1350	15J	OH-58D Armament/Electrical/Avionics Systems Repairer	Army
1351	15M	UH-1 Helicopter Repairer (RC)	Army
1352	15R	AH-64 Attack Helicopter Repairer	Army
1353	15T	UH-60 Helicopter Repairer	Army
1354	15U	CH-47 Helicopter Repairer	Army
1355	15X	AH-64A Armament/Electrical/Avionics Systems Repairer (AH-64A	Army
1356	15Y	AH-64D Armament/Electrical/Avionics Systems Repairer	Army
1357	67V	OH-6/OH-58 Helicopter Repairman	Army
1358	33C	Intercept Receiving Systems Repairman	Army
1359	25L	AN/TSQ-73 ADA Command & Control System Operator/Maintainer	Army
1360	61F	Marine Hull Repairer	Army
1361	62C	Engineer Missile Equipment Specialist	Army
1362	13A	Field Artillery, General	Army
1363	47C	USMA, Professor of English	Army
1364	47D	USMA, Professor of Electrical Engineering and Computer Science	Army
1365	47E	USMA, Professor of Law	Army
1366	47F	USMA, Professor of Systems Engineering	Army
1367	47H	USMA, Professor Physics	Army
1368	47J	USMA, Professor of Social Sciences	Army
1369	47K	USMA, Professor of History	Army
1370	47L	USMA, Professor of Behavioral Sciences and Leadership	Army
1371	47M	USMA, Professor of Chemistry	Army
1372	47N	USMA, Professor of Mathematical Sciences	Army
1373	47P	USMA, Professor Geography and Environmental Engineering	Army
1374	47Q	USMA, Professor and Associate Dean	Army
1375	47R	USMA, Professor of Civil and Mechanical Engineering	Army
1376	47S	USMA, Professor of Physical Education	Army
1377	47U	USMA, Professor of Military Art and Science	Army
1378	61B	Watercraft Operator	Army
1379	61Z	Marine Senior Sergeant	Army
1380	62D	Asphalt Equipment Operator	Army
1381	76W	Petroleum Supply Specialist	Army
1382	35P	Multiple Launch Rocket System (MLRS) Repairer	Army
1383	68K	Aircraft Components Repair Supervisor	Army
1384	68P	Avionic Maintenance Supervisor	Army
1385	24A	Telecommunications Systems Engineer (functional Area)	Army
1386	24B	Data Systems Engineer	Army
1387	34T	Tactical Computer Systems Repairer	Army
1388	35S	PATRIOT System Repairer	Army
1389	36D	Antennaman	Army
1390	35F	Human Intelligence (HUMINT)	Army
1391	11Z	Infantry Senior Sergeant	Army
1392	12C	Bridge Crewmember	Army
1393	26D	Ground Control Approach Radar Repairer	Army
1394	31D	Mobile Subscriber Equipment Transmission System Operator	Army
1395	42L	Administrative Specialist	Army
1396	63A	M1 Abrams Tank System Maintainer	Army
1397	68L	Occupational Therapy Specialist	Army
1398	68L	Avionic Communications Equipment Repairer	Army
1399	70F	Health Services Human Resources	Army
1400	25V	Combat Documentation/Production Specialist	Army
1401	27X	Patriot System Repairer	Army
1402	420C	Bandmaster	Army
1403	12K	Plumber	Army
1404	12R	Interior Electrician	Army
1405	12W	Carpentry and Masonry Specialist	Army
1406	21G	Quarrying Specialist	Army
1407	21N	Construction Equipment Supervisor	Army
1408	51R	Systems Automation Acquisition and Engineering	Army
1409	15B	Aviation Combined Arms Operations	Army
1410	15D	Aviation Logistics	Army
1411	64E	Veterinary Comparative Medicine	Army
1412	70B	Health Services Administration	Army
1413	71F	Postal Clerk	Army
1414	120A	Construction Engineering Technician	Army
1415	12X	General Engineering Supervisor	Army
1416	16D	Hawk Missile Crewmember	Army
1417	16E	Hawk Fire Control Crewmember	Army
1418	16R	Vulcan Crewmember	Army
1419	16S	Man Portable Air Defense System (MANPADS) Crewmember or Pedestal Mounted Stinger Crewmember	Army
1420	16S	Man Portable Air Defense System (MANPADS) Crewmember or Pedestal M	Army
1421	16T	Patriot Missile Crewmember	Army
1422	21M	Firefighter	Army
1423	65D	Physician Assistant	Army
1424	88A	Transportation, General	Army
1425	35A	Land Combat Electronic Missile System Repairer	Army
1426	68Y	Eye Specialist	Army
1427	94D	Air Traffic Control Equipment Repairer	Army
1428	94R	Avionic and Survivability Equipment Repairer	Army
1536	13N	Lance Crewmember	Army
1429	52L	Nuclear Power Plant Process Control Specialist or Operator	Army
1430	68X	Behavioral Health Specialist	Army
1431	15X	AH-64A Armament/Electrical/Avionics Systems Repairer	Army
1432	31E	Internment/Resettlement Specialist	Army
1433	35Y	Chief Counter Intelligence/Human Intelligence Sergeant	Army
1434	67G	Utility Airplane Repairer (RC)	Army
1435	67R	AH-64 Attack Helicopter Repairer	Army
1436	67T	UH-60 Helicopter Repairer	Army
1437	67U	CH-47 Helicopter Repairman	Army
1438	67Y	AH-1G Helicopter Repairman	Army
1439	67Y	AH-1 Attack Helicopter Repairer	Army
1440	68B	Orthopedic Specialist	Army
1441	68C	Practical Nursing Specialist	Army
1442	68F	Physical Therapy Specialist	Army
1443	68H	Aircraft Pneudraulics Repairer	Army
1444	68J	Aircraft Armament/Missile Systems Repairer	Army
1445	68J	Helicopter Missile Systems Repairer	Army
1446	68S	OH-58D Armament/Electrical/Avionics Systems Repairer	Army
1447	68U	Ear, Nose, and Throat (ENT) Specialist	Army
1448	68X	AH-64A Armament/Electrical Systems Repairer	Army
1449	74D	Information Systems Operator	Army
1450	76J	Medical Supply Specialist	Army
1451	76J	Medical Supplyman	Army
1452	91J	Quartermaster and Chemical Equipment Repairer	Army
1453	91J	Medical Logistics Specialist	Army
1454	95C	Correctional Specialist	Army
1455	38A	Civil Affairs	Army
1456	91D	Operating Room Specialist	Army
1457	920A	Property Accounting Technician	Army
1458	920B	Supply Systems Technician	Army
1459	352H	Morse Intercept Technician	Army
1460	35X	Intelligence Senior Sergeant/Chief Intelligence Sergeant	Army
1461	67E	Pharmacy	Army
1462	68Y	AH-64D Armament/Electrical/Avionic Systems Repairer	Army
1463	91Q	Pharmacy Specialist	Army
1464	91B	Maintenance Management	Army
1465	31K	Working Dog Handler	Army
1466	01A	Officer Generalist	Army
1467	71L	Administrative Specialist	Army
1468	77W	Water Treatment Specialist	Army
1469	88L	Watercraft Engineer	Army
1470	88M	Motor Transport Operator	Army
1471	92W	Water Treatment Specialist	Army
1472	24Q	Nike-Hercules Fire Control Mechanic	Army
1473	352J	Emanations Analysis Technician	Army
1474	352R	Emanations Analysis Technician	Army
1475	353A	IEW Systems Maintenance Technician	Army
1476	21E	Heavy Construction Equipment Operator	Army
1477	21F	Crane Operator	Army
1478	21H	Construction Engineering Supervisor	Army
1479	21J	General Construction Equipment Operator	Army
1480	21K	Plumber	Army
1481	21N	Horizontal Construction Engineer	Army
1482	21R	Interior Electrician	Army
1483	21V	Concrete and Asphalt Equipment Operator	Army
1484	51B	Carpenter	Army
1485	51B	Carpentry and Masonry Specialist	Army
1486	51H	Construction Engineering Supervisor	Army
1487	51R	Interior Electrician	Army
1488	62H	Concrete Paving Equipment Operator	Army
1489	62H	Concrete and Asphalt Equipment Operator	Army
1490	62J	General Construction Machine Operator	Army
1491	62J	General Construction Equipment Operator	Army
1492	62N	Construction Machine Supervisor	Army
1493	62N	Construction Equipment Supervisor	Army
1494	49C	Operations Research, Combat Operations/Materiel Systems	Army
1495	01B	Aviation/Infantry/Armor/Military Intelligence Immaterial	Army
1496	15C	Aviation All-Source Intelligence	Army
1497	21Q	Power Line Distribution Specialist (RC)	Army
1498	21T	Technical Engineering Specialist	Army
1499	25C	Communications-Electronics (C-E) Operations	Army
1500	25K	AN/TSQ-51 System Repairman/Maintenance Chief	Army
1501	62G	Quarryman	Army
1502	81C	Cartographer	Army
1503	352C	Traffic Analysis Technician	Army
1504	352N	Signals Intelligence Analysis Technician	Army
1505	41B	Topographic Instrument Repairman	Army
1506	83E	Photo and Layout Specialist	Army
1507	83F	Printing and Bindery Specialist	Army
1508	39B	Psychological Operations	Army
1509	21X	General Engineering Supervisor	Army
1510	21Y	Geospatial Engineer	Army
1511	35E	Counter Intelligence	Army
1512	51Z	General Engineering Supervisor	Army
1513	81C	Cartographic Specialist	Army
1514	81Q	Terrain Analyst	Army
1515	81Z	Topographic Engineering Supervisor	Army
1516	97C	Area Intelligence Specialist	Army
1517	91M	Hospital Food Service Specialist	Army
1518	23R	Hawk Missile System Mechanic	Army
1519	25H	Radar Data Processing Equipment Repairman	Army
1520	43M	Fabric and Leather Repair Foreman	Army
1521	45L	Artillery Repairer	Army
1522	55B	Ammunition Specialist	Army
1523	63J	Quartermaster Equipment Repairman	Army
1524	64C	Veterinary Laboratory Animal Medicine	Army
1525	89A	Ammunition Stock Control and Accounting Specialist	Army
1526	89B	Ammunition Specialist	Army
1527	52E	Power Station Operator	Army
1528	16F	Light Air Defense Artillery Crewmember	Army
1529	17Z	Combat Surveillance and Target Acquisition NCO	Army
1530	350G	Imagery Intelligence Technician	Army
1531	352K	Non-Morse Intercept Technician	Army
1532	352S	Signals Collector Technician	Army
1533	64D	Veterinary Pathology	Army
1534	74A	CBRN	Army
1535	12F	Engineer Tracked Vehicle Crewman	Army
1537	153A	Rotary Wing Aviator (Aircraft Nonspecific)	Army
1538	153B	UH-1 Pilot (Reserve Component only)	Army
1539	153D	UH-60 Pilot	Army
1540	153E	MH-60 Pilot	Army
1541	153L	UH-72A Pilot (RC only)	Army
1542	153M	UH-60M Pilot	Army
1543	155A	Fixed Wing Aviator (Aircraft Nonspecific)	Army
1544	155D	U-21 Pilot	Army
1545	155E	C-12 Pilot	Army
1546	155F	Jet Aircraft Pilot	Army
1547	155G	O-5A/EO-5B/RC-7 Pilot	Army
1548	351E	Human Intelligence Collection Technician	Army
1549	92D	Aerial Delivery and Materiel	Army
1550	97Z	Counterintelligence/Human Intelligence Senior Sergeant	Army
1551	65K	Railway Movement Coordinator	Army
1552	26W	Radar Maintenance Supervisor-Inspector	Army
1553	47B	USMA Permanent Associate Professor	Army
1554	52B	Nuclear and Counter-Proliferation	Army
1555	93F	Ballistic Meteorology Crewman	Army
1556	255Z	Senior Signal Systems Technician	Army
1557	63M	Bradley Fighting Vehicle System Maintainer	Army
1558	65A	Occupational Therapy	Army
1559	88P	Railway Equipment Repairer (RC)	Army
1560	88T	Railway Section Repairer (RC)	Army
1561	91M	Bradley Fighting Vehicle System Maintainer	Army
1562	948E	Senior Electronics Maintenance Warrant Officer	Army
1563	65B	Locomotive Repairer	Army
1564	13Y	Cannon/Missile Senior Sergeant	Army
1565	24W	Sgt. York Air Defense Gun System Mechanic	Army
1566	36A	Financial Manager	Army
1567	45A	Comptroller	Army
1568	51Z	Acquisition	Army
1569	75E	Veterinary Comparative Medicine	Army
1570	91A	Ordnance, General	Army
1571	66P	Family Nurse Practitioner	Army
1572	66P	Family Nurse Practitioner	Army
1573	150U	Unmanned Aircraft Systems Operations Technician	Army
1574	38A	Civil Affairs Specialist (Reserve Components)	Army
1575	51S	Research and Engineering	Army
1576	90A	Logistics	Army
1577	15V	Observation/Scout Helicopter Repairer (RC)	Army
1578	15Z	Aircraft Maintenance Senior Sergeant	Army
1579	44C	Financial Management Technician	Army
1580	52C	Utilities Equipment Repairer	Army
1581	94P	Multiple Launch Rocket System (MLRS) Repairer	Army
1582	95D	Assistant Special Agent	Army
1583	34Z	ADPS (Automatic Data Processing Systems) Maintenance Supervisor	Army
1584	42R	Band Member	Army
1585	94K	Apache Attack Helicopter Systems Repairer	Army
1586	94T	Avenger System Repairer	Army
1587	52H	Nuclear Power Plant Mechanic or Operator	Army
1588	52J	Nuclear Power Plant Electrician or Operator	Army
1589	151A	Aviation Maintenance Technician	Army
1590	15Z	Field Artillery Missile/Rocket Senior Sergeant	Army
1591	24N	Chaparral System Mechanic	Army
1592	27D	Paralegal Specialist	Army
1593	36B	Financial Management Technician	Army
1594	49D	Operations Research, Planning, Programming, and Resource	Army
1595	65B	Physical Therapy	Army
1596	71D	Legal Clerk	Army
1597	91C	Utilities Equipment Repairer	Army
1598	91D	Power Generation Equipment Repairer	Army
1599	94X	Senior Missile Systems Maintainer	Army
1600	52M	Nuclear Power Plant Chief	Army
1601	68Q	Pharmacy Specialist	Army
1602	84Z	Public Affairs/Audio Visual Chief	Army
1603	11L	lnfantry Senior Sergeant	Army
1604	27P	Sgt. York Air Defense Gun System Radar/Electronic Repairer	Army
1605	33B	General Intercept Equipment Repairman	Army
1606	33D	Intercept Recording Systems Repairman	Army
1607	33F	Demultiplex Systems Repairman	Army
1608	35U	Biomedical Equipment Specialist	Army
1609	37A	Psychological Operations	Army
1610	88H	Cargo Specialist	Army
1611	05K	Electronic Warfare/Signal Intelligence Non-Morse Interceptor	Army
1612	24C	Hawk Firing Section Mechanic	Army
1613	25B	Communications-Electronics (C-E) Automation	Army
1614	25D	Communications-Electronics (C-E) Engineering	Army
1615	26C	Target Acquisition/Surveillance Radar Repairer	Army
1616	27Q	Sgt. York Air Defense Gun System Test Specialist	Army
1617	33R	Aviation Systems Repairer	Army
1618	70E	Patient Administration	Army
1619	77F	Petroleum Supply Specialist	Army
1620	880A	Marine Deck Officer	Army
1621	88K	Watercraft Operator	Army
1622	88Z	Transportation Senior Sergeant	Army
1623	29A	Electronic Warfare Officer (Functional Area)	Army
1624	30A	Information Operations Officer (functional area)	Army
1625	81B	Technical Drafting Specialist	Army
1626	35C	Imagery Intelligence (IMINT)	Army
1627	35G	Signals Intelligence/Electronic Warfare (SIGINT/EW)	Army
1628	96F	Psychological Operations Specialist	Army
1629	31B	Military Police	Army
1630	25M	Multimedia Illustrator	Army
1631	25Z	Visual Information Operations Chief	Army
1632	31D	CID Special Agent	Army
1633	68X	Mental Health Specialist	Army
1634	73D	Accounting Specialist	Army
1635	91C	Practical Nurse	Army
1636	91D	CID Special Agent	Army
1637	95D	CID Special Agent	Army
1638	25R	Visual Information/Audio Equipment Repairer	Army
1639	34L	Field Artillery (FA) Digital Systems Repairer	Army
1640	91J	Physical Therapy Specialist	Army
1641	91U	Ear, Nose, & Throat (ENT) Specialist	Army
1642	91Y	Eye Specialist	Army
1759	88Y	Marine Senior Sergeant	Army
1643	94A	Land Combat Electronic Missile System Repairer	Army
1644	95B	Military Policeman	Army
1645	66R	Psychiatric/Behavioral Health Nurse Practitioner	Army
1646	91X	Mental Health Specialist	Army
1647	01D	Financial Management/Adjutant General immaterial	Army
1648	01H	Biological Sciences Assistant	Army
1649	02A	Army Bandperson	Army
1650	02C	Baritone or Euphonium Player	Army
1651	02D	French Horn Player	Army
1652	02E	Trombone Player	Army
1653	02F	Tuba Player	Army
1654	02G	Flute or Piccolo Player	Army
1655	02H	Oboe Player	Army
1656	02J	Clarinet Player	Army
1657	02K	Bassoon Player	Army
1658	02L	Saxophone Player	Army
1659	02M	Percussion Player	Army
1660	02N	Piano Player	Army
1661	02T	Guitar Player	Army
1662	02U	Electric Bass Player	Army
1663	43A	Human Resource Management Officer	Army
1664	45T	Bradley Fighting Vehicle System Turret Mechanic	Army
1665	52D	Power Generation Equipment Repairman	Army
1666	52F	Turbine Engine Driven Generator Repairer	Army
1667	52X	Special Purpose Equipment Repairer	Army
1668	63B	Wheel Vehicle Mechanic	Army
1669	63D	Self-Propelled Field Artillery System Mechanic	Army
1670	63D	Artillery Mechanic	Army
1671	63J	Quartermaster and Chemical Equipment Repairer	Army
1672	67Z	Aircraft Maintenance Senior Sergeant	Army
1673	68H	Optical Laboratory Specialist	Army
1674	68W	Health Care Specialist	Army
1675	72B	Entomology	Army
1676	74C	Chemical Munitions and Materiel Management	Army
1677	75C	Personnel Management Specialist	Army
1678	881A	Marine Engineering Officer	Army
1679	91H	Optical Laboratory Specialist	Army
1680	91H	Track Vehicle Repairer	Army
1681	91P	Self Propelled Artillery Systems Maintainer	Army
1682	91P	Artillery Mechanic	Army
1683	91V	Respiratory Specialist	Army
1684	91Z	Medical Senior Sergeant	Army
1685	93E	Meteorological Observer	Army
1686	91B	Wheeled Vehicle Mechanic	Army
1687	59A	Strategic Plans and Policy	Army
1688	02B	Cornet or Trumpet Player	Army
1689	02N	Keyboard Player	Army
1690	16J	Defense Acquisition Radar Operator	Army
1691	16Z	Air Defense Artillery Senior Sergeant	Army
1692	24M	Vulcan System Mechanic	Army
1693	41K	Reproduction Equipment Repairman	Army
1694	45N	M60A1/A3 Tank Turret Mechanic (RC)	Army
1695	63G	Fuel and Electrical Systems Repairer	Army
1696	63H	Track Vehicle Repairer	Army
1697	63N	M60A1/A3 Tank System Mechanic	Army
1698	63S	Heavy Wheel Vehicle Mechanic	Army
1699	63T	Bradley Fighting Vehicle System Mechanic	Army
1700	63W	Wheel Vehicle Repairer	Army
1701	68W	Health Care Specialist	Army
1702	68Z	Chief Medical NCO	Army
1703	91S	Stryker Systems Maintainer	Army
1704	91W	Health Care Specialist	Army
1705	91Z	Chief Medical NCO	Army
1706	42C	Orthotic Specialist	Army
1707	42D	Dental Removal Prosthetic Specialist	Army
1708	43M	Fabric Repair Specialist	Army
1709	45D	Self-Propelled Field Artillery Turret Mechanic	Army
1710	45E	XM1 Tank Turret Mechanic	Army
1711	45G	Fire Control Repairer	Army
1712	45Z	Armament Maintenance Supervisor	Army
1713	71P	Flight Operations Coordinator	Army
1714	75Z	Personnel Sergeant	Army
1715	82E	Topographic Computer	Army
1716	96Z	Intelligence Senior Sergeant	Army
1717	12E	Atomic Demolition Munitions (ADM) Specialist	Army
1718	71R	Broadcast Specialist	Army
1719	00E	Recruiter	Army
1720	09L	Interpreter/Translator	Army
1721	13D	Field Artillery Target Acquisition	Army
1722	152B	OH-58A/C Scout	Army
1723	152C	OH-6 Pilot	Army
1724	152D	OH-58D Pilot	Army
1725	152E	RAH-66 COMMANCHE Pilot	Army
1726	152E	ARH-70A Pilot	Army
1727	152F	AH-64A Attack Pilot	Army
1728	152G	AH-1 Attack Pilot (RC)	Army
1729	152H	AH-64D Attack Pilot	Army
1730	154C	CH-47D Pilot	Army
1731	154E	MH-47 Pilot	Army
1732	154F	CH-47F Pilot	Army
1733	156A	OV-1/RV-1 Pilot	Army
1734	18Z	Special Forces Senior Sergeant	Army
1735	31A	Military Police	Army
1736	350D	Imagery Intelligence Technician	Army
1737	351M	Human Intelligence (HUMINT) Collection Technician	Army
1738	38C	Civil Affairs	Army
1739	39C	Civil Affairs	Army
1740	46B	Broadcast	Army
1741	54B	Chemical Operations Specialist	Army
1742	60A	Operational Medicine	Army
1743	63E	M1 Abrams Tank System Mechanic	Army
1744	63Y	Track Vehicle Mechanic	Army
1745	67G	Podiatry	Army
1746	71C	Executive Administrative Assistant	Army
1747	91G	Fire Control Repairer	Army
1748	94B	Food Service Specialist	Army
1749	12B	Armor	Army
1750	12B	Combat Engineer	Army
1751	12C	Cavalry	Army
1752	19A	Armor, General	Army
1753	19C	Cavalry	Army
1754	21B	Combat Engineer	Army
1755	25E	Information Systems and Networking	Army
1756	42E	Administrative System Management	Army
1757	53B	Oxygen-Acetylene Production Specialist	Army
1758	53C	Carbon Dioxide-Hydrogen Production Specialist	Army
1760	71B	Biochemistry	Army
1761	49E	Operations Research, Test, and Evaluation	Army
1762	12A	Engineer	Army
1763	12A	General Engineer	Army
1764	49B	Operations Research, Personnel	Army
1765	66N	Operational Nursing	Army
1766	66N	Operational Nursing	Army
1767	88B	Traffic Management	Army
1768	91G	Behavioral Science Specialist	Army
1769	35Y	Integrated Family of Test Equipment Operator/Maintainer	Army
1770	65H	Locomotive Operator	Army
1771	91F	Psychiatric Specialist	Army
1772	91N	Cardiac Specialist	Army
1773	63F	Prosthodontist	Army
1774	640A	Food Safety Officer	Army
1775	420A	Human Resources Technician	Army
1776	51D	Acquisition	Army
1777	57A	Simulation Operations Officer	Army
1778	60P	Pediatrician	Army
1779	60R	Child Neurologist	Army
1780	60V	Neurologist	Army
1781	61E	Clinical Pharmacologist	Army
1782	61F	Internist	Army
1783	63B	Comprehensive Dentist	Army
1784	63X	Maintenance Supervisor	Army
1785	65E	Airbrake Repairer	Army
1786	65G	Railway Section Repairer	Army
1787	65J	Trainman	Army
1788	66F	Nurse Anesthetist	Army
1789	66F	Nurse Anesthetist	Army
1790	67A	Health Services	Army
1791	75C	Veterinary Laboratory Animal Medicine	Army
1792	91F	Small Arms/Artillery Repairer (Small Arms/Arty Rep)	Army
1793	91L	Construction Equipment Repairer	Army
1794	91W	Metal Worker	Army
1795	91X	Maintenance Supervisor (Maint Supv)	Army
1796	921A	Airdrop Systems Technician	Army
1797	12Z	Engineering Senior Sergeant	Army
1798	42C	Army Bands	Army
1799	60C	Preventive Medicine Officer	Army
1800	65F	Locomotive Electrician	Army
1801	65Z	Railway Senior Sergeant	Army
1802	67J	Aeromedical Evacuation	Army
1803	72C	Audiology	Army
1804	88X	Railway Senior Sergeant	Army
1805	91E	Allied Trades Specialist	Army
1806	91K	Armament Repairer	Army
1807	91X	Maintenance Supervisor	Army
1808	94Z	Senior Electronic Maintenance Chief	Army
1809	33G	ECM/DF Systems Repairman	Army
1810	33Z	Intercept Systems Maintenance Supervisor	Army
1811	35T	Avenger System Repairer	Army
1812	00R	Recruiter/Retention NCO	Army
1813	02S	Special Bandmember	Army
1814	41A	Personnel Programs Management Staff	Army
1815	42E	Optical Laboratory Specialist	Army
1816	44A	Finance, General	Army
1817	44B	Metal Body Repairman	Army
1818	44B	Metal Worker	Army
1819	44E	Machinist	Army
1820	45B	Small Arms Repairer	Army
1821	45K	Armament Repairer	Army
1822	45K	Tank Turret Repairman	Army
1823	62B	Construction Equipment Repairer	Army
1824	67F	Optometry	Army
1825	71D	Legal Specialist	Army
1826	71G	Patient Administration Specialist	Army
1827	73C	Finance Specialist	Army
1828	91B	Medical Specialist	Army
1829	91K	Medical Laboratory Specialist	Army
1830	14A	Air Defense Artillery Officer	Army
1831	23U	Nike High Power Radar-Simulator Repairer	Army
1832	24J	Hawk Pulse Radar Repairer	Army
1833	24L	Hawk Launcher and Mechanical Systems Repairer	Army
1834	27J	Hawk Field Maintenance Equipment/Pulse Acquisition Radar Repairer	Army
1835	35Z	Senior Electronic Maintenance Chief	Army
1836	73A	Social Work	Army
1837	01C	Chemical/Engineer/Military Police Immaterial	Army
1838	02A	Combat Arms Generalist	Army
1839	02Z	Bands Senior Sergeant	Army
1840	03C	Physical Activities Specialist	Army
1841	05A	Army Medical Department (AMEDD) Immaterial	Army
1842	13B	Light Missile Field Artillery	Army
1843	13E	Cannon Field Artillery	Army
1844	14B	Short-Range Air Defense Artillery (Shorad)	Army
1845	14D	Hawk Missile Air Defense Artillery	Army
1846	14E	Patriot Missile Air Defense Artillery	Army
1847	22N	Nike-Hercules Missile Launcher Repairer	Army
1848	24E	Hawk Fire Control Mechanic	Army
1849	24G	Hawk Information Coordination Central Mechanic	Army
1850	24R	Hawk Master Mechanic	Army
1851	24V	Hawk Maintenance Chief	Army
1852	26H	Air Defense Radar Repairer	Army
1853	27B	Land Combat Support System (LCSS) Test Specialist	Army
1854	27F	Vulcan Repairer	Army
1855	27L	Lance System Repairer	Army
1856	27N	Forward Area Alerting Radar (FAAR) Repairer	Army
1857	27V	Hawk Maintenance Chief	Army
1858	33Z	Electronic Warfare/Intercept Systems Maintenance Supervisor	Army
1859	35T	Military Intelligence (MI) Systems Maintainer/Integrator	Army
1860	35T	Military Intelligence (MI) Systems Maintainer/Integrator	Army
1861	41H	Photographic Equipment Repair Chief	Army
1862	42H	Senior Human Resources Officer	Army
1863	46N	Pershing Electrical-Mechanical Repairman	Army
1864	48B	Latin America	Army
1865	48C	Europe (Foreign Area Officer)	Army
1866	48D	South Asia (Foreign Area Officer)	Army
1867	48E	Eurasia (Foreign Area Officer)	Army
1868	48F	China (Foreign Area Officer)	Army
1869	48G	Mideast/North Africa (Foreign Area Officer)	Army
1870	48H	Northeast Asia (Foreign Area Officer)	Army
1871	48I	Southeast Asia (Foreign Area Officer)	Army
1990	72A	Nuclear Medical Science	Army
1872	48J	Africa, South of the Sahara (Foreign Area Officer)	Army
1873	51G	Materials Quality Specialist	Army
1874	51H	Construction Foreman	Army
1875	51T	Technical Engineering Supervisor	Army
1876	52G	Transmission and Distribution Specialist (RC)	Army
1877	60D	Occupational Medicine Officer	Army
1878	60N	Anesthesiologist	Army
1879	60U	Child Psychiatrist	Army
1880	61U	Pathologist	Army
1881	63Z	Mechanical Maintenance Supervisor	Army
1882	64A	Field Veterinary Service	Army
1883	64F	Veterinary Clinical Medicine	Army
1884	67B	Laboratory Sciences	Army
1885	70H	Health Services Plans, Ops, Intelligence, Security,& Training	Army
1886	71E	Court Reporter	Army
1887	72D	Environmental Science and Engineering	Army
1888	72E	Environmental Engineer	Army
1889	73Z	Finance Senior Sergeant	Army
1890	74B	Chemical Operations and Training	Army
1891	75A	Field Veterinary Service	Army
1892	75D	Personnel Records Specialist	Army
1893	75D	Veterinary Pathology	Army
1894	75E	Personnel Actions Specialist	Army
1895	75E	Veterinary Pathology	Army
1896	79D	Reenlistment NCO	Army
1897	82B	Construction Surveyor	Army
1898	88Q	Railway Car Repairer	Army
1899	88R	Airbrake Repairer	Army
1900	88S	Locomotive Electrician	Army
1901	88V	Train Crew Member	Army
1902	88W	Railway Movement Coordinator	Army
1903	89E	Explosive Ordnance Disposal	Army
1904	91D	Munitions Materiel Management	Army
1905	91E	Explosive Ordnance Disposal	Army
1906	91F	Small Arms/Artillery Repairer	Army
1907	91Z	Senior Maintenance Supervisor	Army
1908	91Z	Senior Maintenance Supervisor	Army
1909	92B	Medical Laboratory Specialist	Army
1910	92E	Cytology Specialist	Army
1911	93H	Air Traffic Control (ATC) Tower Operator	Army
1912	93J	ATC (Air Traffic Control) Radar Controller	Army
1913	94F	Hospital Food Service Specialist	Army
1914	00Z	Command Sergeant Major Nominative	Army
1915	42S	Special Band Member	Army
1916	67F	Optometry	Army
1917	66H	Medical-Surgical Nurse	Army
1918	66H	Medical-Surgical Nurse	Army
1919	60G	Gastroenterologist	Army
1920	61H	Family Medicine	Army
1921	02B	Infantry/Armor Immaterial	Army
1922	02C	Infantry/Armor/Field Artillery/Engineer Immaterial	Army
1923	12D	Facilities/Contract Construction Management Engineer (FCCME)	Army
1924	15A	Aviation, General	Army
1925	21A	Engineer General	Army
1926	21D	Facilities/Contract Construction Management Engineer (FCCME)	Army
1927	27A	Judge Advocate, General	Army
1928	27B	Military Judge	Army
1929	39A	PSYOP or CA, General	Army
1930	40C	Army Astronauts	Army
1931	41E	Camera Repairman	Army
1932	41F	Projector Repairman	Army
1933	41G	Surveillance Photographic Equipment Repairman	Army
1934	42A	Adjutant General, General	Army
1935	51A	Systems Development	Army
1936	51D	Mason	Army
1937	55A	Judge Advocate, General	Army
1938	55B	Military Judge	Army
1939	56D	Clinical Pastoral Educator	Army
1940	60B	Nuclear Medicine Officer	Army
1941	60F	Pulmonary Disease/Critical Care Officer	Army
1942	60H	Cardiologist	Army
1943	60J	Obstetrician and Gynecologist	Army
1944	60K	Urologist	Army
1945	60L	Dermatologist	Army
1946	60M	Allergist, Clinical Immunologist	Army
1947	60Q	Pediatric Sub-specialist	Army
1948	60S	Ophthalmologist	Army
1949	60T	Otolaryngologist	Army
1950	60W	Psychiatrist	Army
1951	61A	Nephrologist	Army
1952	61B	Medical Oncologist/Hematologist	Army
1953	61C	Endocrinologist	Army
1954	61D	Rheumatologist	Army
1955	61G	Infectious Disease Officer	Army
1956	61J	General Surgeon	Army
1957	61K	Thoracic Surgeon	Army
1958	61L	Plastic Surgeon	Army
1959	61M	Orthopedic Surgeon	Army
1960	61N	Flight Surgeon	Army
1961	61P	Physiatrist	Army
1962	61R	Diagnostic Radiologist	Army
1963	61W	Peripheral Vascular Surgeon	Army
1964	61Z	Neurosurgeon	Army
1965	62A	Emergency Physician	Army
1966	62B	Field Surgeon	Army
1967	63A	General Dentist	Army
1968	63D	Periodontist	Army
1969	63E	Endodontist	Army
1970	63H	Public Health Dentist	Army
1971	63K	Pediatric Dentist	Army
1972	63M	Orthodontist	Army
1973	63N	Oral and Maxillofacial Surgeon	Army
1974	63P	Oral Pathologist	Army
1975	63R	Executive Dentist	Army
1976	65X	Specialist Allied Operations	Army
1977	66E	Perioperative Nurse	Army
1978	66E	Perioperative Nurse	Army
1979	66G	Obstetric and Gynecologic Nurse	Army
1980	66G	Obstetric and Gynecologic Nurse	Army
1981	66G	Obstetric and Gynecologic Nurse	Army
1982	67C	Preventive Medicine Sciences	Army
1983	67D	Behavioral Sciences	Army
1984	70A	Health Care Administration	Army
1985	71A	Microbiology	Army
1986	71C	Parasitology	Army
1987	71D	Immunology	Army
1988	71E	Clinical Laboratory	Army
1989	71F	Research Psychology	Army
1991	73B	Clinical Psychology	Army
1992	75F	Veterinary Clinical Medicine	Army
1993	BNDM	Bandmaster	Coast Guard
1994	WEPS	Weapons	Coast Guard
1995	BM	Boatswains Mate	Coast Guard
1996	FS	Food Service Specialist	Coast Guard
1997	TT	Telephone Technician	Coast Guard
1998	commands	Communications	Coast Guard
1999	HR	Human Resource	Coast Guard
2000	ENG	Engineering	Coast Guard
2001	AET	Avionics Electrical Technician	Coast Guard
2002	AMT	Aviation Maintenance Technician	Coast Guard
2003	RM	Radioman	Coast Guard
2004	TC	Telecommunications Specialist	Coast Guard
2005	ASM	Aviation Survivalman	Coast Guard
2006	AM	Aviation Metalsmith	Coast Guard
2007	FT	Fire Control Technician	Coast Guard
2008	Finance	Finance	Coast Guard
2009	FN	Fireman	Coast Guard
2010	DT	Dental Technician	Coast Guard
2011	Aviation	Aviation	Coast Guard
2012	Intel	Intelligence	Coast Guard
2013	Managemt	Management	Coast Guard
2014	Medical	Medical	Coast Guard
2015	AST	Aviation Survival Technician	Coast Guard
2016	HS	Health Services Technician	Coast Guard
2017	AN	Airman	Coast Guard
2018	4341	Combat Correspondent	Marine Corps
2019	7242	Air Support Operations Operator	Marine Corps
2020	9975	Information Computer Security Specialist	Marine Corps
2021	3408	Financial Management Resource Officer	Marine Corps
2022	6604	Aviation Supply Operations Officer (III)	Marine Corps
2023	6042	Individual Material Readiness List (IMRL) Asset Manager	Marine Corps
2024	9636	Communications Engineer	Marine Corps
2025	7380	Tactical Systems Officer/Mission Specialist (III)	Marine Corps
2026	9913	Special Services Officer	Marine Corps
2027	0650	Network Operations and Systems Officer	Marine Corps
2028	2691	Signals Intelligence/Electronic Warfare Chief	Marine Corps
2029	9662	Material Management Officer	Marine Corps
2030	5993	Electronics Maintenance Chief	Marine Corps
2031	1361	Engineer Assistant	Marine Corps
2032	6601	Basic Aviation Logistics Officer	Marine Corps
2033	6677	Weapons and Tactics Instructor-Aviation Logistician	Marine Corps
2034	1390	Bulk Fuel Officer (III)	Marine Corps
2035	2300	Basic Ammunition and Explosive Ordnance Disposal Marine	Marine Corps
2036	6602	Aviation Supply Officer (I)	Marine Corps
2037	0520	Psychological Operations Officer	Marine Corps
2038	9955	Psychological Operations Officer	Marine Corps
2039	5959	Air Traffic Control Systems Maintenance Chief	Marine Corps
2040	6591	Aviation Ordnance Chief	Marine Corps
2041	2601	Basic Signals Intelligence/Ground Electronic Warfare Officer	Marine Corps
2042	2823	Technical Control Chief	Marine Corps
2043	9656	Contracting Officer	Marine Corps
2044	0180	Adjutant	Marine Corps
2045	6391	Avionics Maintenance Chief	Marine Corps
2046	0241	Imagery Analysis Specialist	Marine Corps
2047	0210	Counterintelligence/Human Source Intelligence (CI/HUMINT)	Marine Corps
2048	2602	Signals Intelligence/Electronic Warfare Officer (III)	Marine Corps
2049	7541	Pilot VMAQ/VMFP FRS Basic EA-6B Pilot (I)	Marine Corps
2050	7542	Pilot VMAQ/VMFP EA-6A Qualified (I)	Marine Corps
2051	7543	Pilot VMAQ/VMFP EA-6B Qualified (I)	Marine Corps
2052	7545	Pilot VMFP/VMFP RF-4B Qualified	Marine Corps
2053	7550	Pilot VMGR Maritime Advance (NATC) (I)	Marine Corps
2054	0211	Counterintelligence/Human Source Intelligence CI/HUMINT Specialist	Marine Corps
2055	0101	Basic Personnel and Administration Officer	Marine Corps
2056	0101	Basic Personnel and Administration Officer	Marine Corps
2057	9674	Public Affairs Management Officer	Marine Corps
2058	4300	Basic Combat Correspondent	Marine Corps
2059	4301	Basic Public Affairs Officer	Marine Corps
2060	9981	Tactical Data Systems Specialist	Marine Corps
2061	5821	Criminal Investigator CID Agent	Marine Corps
2062	8412	Career Recruiter	Marine Corps
2063	4810	Recruiting Officer (III)	Marine Corps
2064	0619	Wire Chief	Marine Corps
2065	0311	Rifleman	Marine Corps
2066	0602	Communications Officer	Marine Corps
2067	0625	Strategic Spectrum Planner	Marine Corps
2068	0625	Strategic Spectrum Planner	Marine Corps
2069	2510	Network Management Officer	Marine Corps
2070	5910	Aviation Radar Maintenance Officer (III)	Marine Corps
2071	5939	Aviation Communication Systems Technician (AVCOMM SYSTECHS)	Marine Corps
2072	4130	Marine Corps Community Services (MCCS) Officer (III)	Marine Corps
2073	5803	Military Police Officer (I)	Marine Corps
2074	9652	Defense Systems Analyst	Marine Corps
2075	0651	Data Network Specialist	Marine Corps
2076	0681	Information Security Technician	Marine Corps
2077	0699	Communications Chief	Marine Corps
2078	0629	Radio Chief	Marine Corps
2079	9957	Acquisition Professional Candidate	Marine Corps
2080	0431	Logistics/Embarkation Specialist	Marine Corps
2081	6673	Automated Information Systems (AIS) Computer Operator	Marine Corps
2082	9657	Systems Acquisition Management (SAM) Officer	Marine Corps
2083	1391	Bulk Fuel Specialist	Marine Corps
2084	3112	Distribution Management Specialist	Marine Corps
2085	3404	Financial Management Officer (I)	Marine Corps
2086	0803	Targeting Acquisition Officer (III)	Marine Corps
2087	0321	Reconnaissance Man	Marine Corps
2088	0261	Geographic Intelligence Specialist	Marine Corps
3029	6497	LDO - Security	Navy
2089	0620	Tactical Communications Planning and Engineer Officer	Marine Corps
2090	2813	Cable Systems Technician	Marine Corps
2091	5902	Electronics Maintenance Officer (Aviation) (II)	Marine Corps
2092	2600	Basic Signals Intelligence/Ground Electronic Warfare Operator	Marine Corps
2093	0201	Basic Intelligence Officer	Marine Corps
2094	0201	Basic Intelligence Officer	Marine Corps
2095	0689	Computer Defense Specialist	Marine Corps
2096	2110	Ordnance Vehicle Maintenance Officer (III)	Marine Corps
2097	2120	Weapons Repair Officer	Marine Corps
2098	2125	Electro-Optic Instrument Repair Officer (III)	Marine Corps
2099	7234	Air Control Electronics Operator	Marine Corps
2100	7236	Tactical Air Defense Controller	Marine Corps
2101	9960	Acquisition Specialist	Marine Corps
2102	0291	Intelligence Chief	Marine Corps
2103	0491	Logistics/Mobility Chief	Marine Corps
2104	1171	Water Support Technician	Marine Corps
2105	0193	Personnel/Administrative Chief	Marine Corps
2106	3052	Packaging Specialist	Marine Corps
2107	4691	Combat Camera Chief	Marine Corps
2108	9904	Colonel, Logistician	Marine Corps
2109	5954	Air Traffic Control Communications Technician	Marine Corps
2110	6004	Aircraft Maintenance Engineer Officer (II/III)	Marine Corps
2111	0205	Senior All-Source Intelligence Analysis Officer	Marine Corps
2112	3537	Motor Transport Operations Chief	Marine Corps
2113	9821	Regional Affairs Officer, Latin America	Marine Corps
2114	9821	Regional Affairs Officer, Latin America	Marine Corps
2115	9822	Regional Affairs Officer, Former Soviet Union	Marine Corps
2116	9822	Regional Affairs Officer, Former Soviet Union	Marine Corps
2117	9823	Regional Affairs Officer, Peoples Republic of China	Marine Corps
2118	9823	Regional Affairs Officer, Peoples Republic of China	Marine Corps
2119	9824	Regional Affairs Officer, Middle East/North Africa	Marine Corps
2120	9824	Regional Affairs Officer, Middle East/North Africa	Marine Corps
2121	9825	Regional Affairs Officer, Sub-Saharan Africa	Marine Corps
2122	9825	Regional Affairs Officer, Sub-Saharan Africa	Marine Corps
2123	9826	Regional Affairs Officer, Southwest Asia	Marine Corps
2124	9826	Regional Affairs Officer, Southwest Asia	Marine Corps
2125	9827	Regional Affairs Officer, Western Europe	Marine Corps
2126	9827	Regional Affairs Officer, Western Europe	Marine Corps
2127	9828	Regional Affairs Officer, Eastern Asia (Excluding Peoples Republic of China)	Marine Corps
2128	9828	Regional Affairs Officer, Eastern Asia (Excluding Peoples Republic of China)	Marine Corps
2129	9829	Regional Affairs Officer, Eastern Europe (Excluding Former Soviet Union)	Marine Corps
2130	9829	Regional Affairs Officer, Eastern Europe (Excluding Former Soviet Union)	Marine Corps
2131	9940	Basic Foreign Area Officer	Marine Corps
2132	9940	Basic Foreign Area Officer	Marine Corps
2133	9941	Foreign Area Officer, Latin America	Marine Corps
2134	9941	Foreign Area Officer, Latin America	Marine Corps
2135	9942	Foreign Area Officer, Former Soviet Union	Marine Corps
2136	9942	Foreign Area Officer, Former Soviet Union	Marine Corps
2137	9944	Foreign Area Officer, Middle East/North Africa	Marine Corps
2138	9944	Foreign Area Officer, Middle East/North Africa	Marine Corps
2139	9945	Foreign Affairs Officer, Sub-Saharan Africa	Marine Corps
2140	9945	Foreign Affairs Officer, Sub-Saharan Africa	Marine Corps
2141	9946	Foreign Affairs Officer, Southwest Asia	Marine Corps
2142	9946	Foreign Affairs Officer, Southwest Asia	Marine Corps
2143	9947	Foreign Affairs Officer, Western Europe	Marine Corps
2144	9947	Foreign Affairs Officer, Western Europe	Marine Corps
2145	9948	Foreign Affairs Officer, East Asia (Excluding PRC)	Marine Corps
2146	9948	Foreign Affairs Officer, East Asia (Excluding PRC)	Marine Corps
2147	9949	Foreign Affairs Officer, Eastern Europe (Excluding USSR)	Marine Corps
2148	0121	Personnel Clerk	Marine Corps
2149	0170	Personnel Officer	Marine Corps
2150	0204	Counterintelligence (CI)/Human Source Intelligence (HUMINT)	Marine Corps
2151	0206	Signals Intelligence/Ground Electronic Warfare Officer	Marine Corps
2152	3451	Financial Management Resource Analyst (FMRA)	Marine Corps
2153	9956	Ground Safety Specialist (Officer)	Marine Corps
2154	2711	Linguist, Afghan Pushtu	Marine Corps
2155	2711	Linguist, Afghan Pushtu	Marine Corps
2156	2711	Linguist, Afghan Pushtu	Marine Corps
2157	2715	Linguist, Persian-Afghan (Dari)	Marine Corps
2158	2715	Linguist, Persian-Afghan (Dari)	Marine Corps
2159	2715	Persian-Afghan (Dari)	Marine Corps
2160	2717	Linguist, Bengali	Marine Corps
2161	2717	Linguist, Bengali	Marine Corps
2162	2717	Linguist, Bengali	Marine Corps
2163	2719	Linguist, Hindi	Marine Corps
2164	2719	Linguist, Hindi	Marine Corps
2165	2719	Linguist, Hindi	Marine Corps
2166	2722	Linguist, Persian-Farsi	Marine Corps
2167	2722	Linguist, Persian-Farsi	Marine Corps
2168	2722	Linguist, Persian-Farsi	Marine Corps
2169	2727	Linguist, Urdu	Marine Corps
2170	2727	Linguist, Urdu	Marine Corps
2171	2727	Linguist, Urdu	Marine Corps
2172	2762	Linguist, Icelandic	Marine Corps
2173	2762	Linguist, Icelandic	Marine Corps
2174	2762	Linguist, Icelandic	Marine Corps
2175	3410	NAF Auditing Officer (II/III)	Marine Corps
2176	6019	Aircraft Maintenance Chief	Marine Corps
2177	8611	Interpreter (Designated Language)	Marine Corps
2178	fin3410	NAF Auditing Officer (II/III)	Marine Corps
2179	0100	Basic Personnel and Administration Marine	Marine Corps
2180	0111	Administrative Specialist	Marine Corps
2181	2311	Ammunition Technician	Marine Corps
2182	3010	Ground Supply Operations Officer (III) (CWO5 to WO)	Marine Corps
2183	2305	Explosive Ordnance Disposal Officer (II/III)	Marine Corps
2184	2533	Radio Telegraph Operator	Marine Corps
2185	2818	Personal Computer/Tactical Office Machine Repairer	Marine Corps
2186	2844	Ground Communications Organizational Repairer	Marine Corps
2187	6311	Aircraft Communications/Navigation Electrical/Weapon Systems Technician-Trainee, OMA	Marine Corps
2188	6315	Aircraft Communications/Navigation/Weapon Systems Technician, AV-8	Marine Corps
2189	6325	Aircraft Communications/Navigation/Electrical/Weapons Systems Technician, V-22	Marine Corps
2190	9909	Marine Air-Ground Task Force Plans/Operations Officer	Marine Corps
2191	2821	Technical Controller Marine	Marine Corps
2192	2834	Satellite Communications (SATCOM) Technician	Marine Corps
2193	3406	Financial Accounting Officer	Marine Corps
2194	4002	Data Systems Officer	Marine Corps
2195	4010	Data Systems Management Officer	Marine Corps
2196	4010	Data Systems Management Officer	Marine Corps
2197	6494	Aviation Logistics Tactical Information Systems (ALTIS) Specialist	Marine Corps
2198	7200	Basic Air Control/Air Support/Antiair Warfare/Air Traffic Control Marine	Marine Corps
2199	0656	Tactical Network Specialist	Marine Corps
2200	8059	Acquisition Management Professional	Marine Corps
2201	0901	Basic Training Officer	Marine Corps
2202	2581	Radio Frequency Management Technician	Marine Corps
2203	4991	Training Support Chief	Marine Corps
2204	0301	Basic Infantry Officer	Marine Corps
2205	0301	Basic Infantry Officer	Marine Corps
2206	5994	Tactical Data Systems Maintenance Chief	Marine Corps
2207	0451	Airborne and Air Delivery Specialist	Marine Corps
2208	0601	Basic Communications Officer	Marine Corps
2209	0601	Basic Communications Officer	Marine Corps
2210	0612	Field Wireman	Marine Corps
2211	0627	SHF Satellite Communications Operator-Maintainer	Marine Corps
2212	0659	Data Chief	Marine Corps
2213	0691	Operational Communication Chief	Marine Corps
2214	2301	Basic Ammunition and Explosive Ordnance Disposal Officer	Marine Corps
2215	2301	Basic Ammunition and Explosive Ordnance Disposal Officer	Marine Corps
2216	2503	Telecommunications Operations Officer	Marine Corps
2217	2537	Radio Chief	Marine Corps
2218	2538	Fleet SATCOM Terminal Operator (Radio Chief)	Marine Corps
2219	2549	Defense Message System (DMS) Chief	Marine Corps
2220	2591	Operational Communication Chief	Marine Corps
2221	2643	Cryptologic Linguist	Marine Corps
2222	2675	Cryptologic Linguist, Russian	Marine Corps
2223	2805	Data/Communications Maintenance Officer (III)	Marine Corps
2224	2862	Electronics Maintenance Technician	Marine Corps
2225	2891	Electronics Maintenance Chief	Marine Corps
2226	4133	Marine Corps Community Services Marine	Marine Corps
2227	5928	Surface Air Defense Systems Chief	Marine Corps
2228	5970	Data Systems Maintenance Officer (III)	Marine Corps
2229	6001	Basic Aircraft Maintenance Officer	Marine Corps
2230	6301	Basic Avionics Officer	Marine Corps
2231	6434	Advanced Aircraft Electrical/Instrument/Flight Control Systems Technician	Marine Corps
2232	6501	Basic Aviation Ordnance Officer	Marine Corps
2233	8858	Command, Control, Communications, Computers and Intelligence (C4I) Officer	Marine Corps
2234	0400	Basic Logistics Marine	Marine Corps
2235	0610	Telephone Systems Officer	Marine Corps
2236	0801	Basic Field Artillery Officer	Marine Corps
2237	0801	Basic Field Artillery Officer	Marine Corps
2238	1371	Combat Engineer	Marine Corps
2239	2149	Ordnance Vehicle Maintenance Chief	Marine Corps
2240	2649	Cryptanalyst	Marine Corps
2241	2810	Telephone Systems Officer	Marine Corps
2242	2830	Ground Radar Maintenance Officer	Marine Corps
2243	3051	Warehouse Clerk	Marine Corps
2244	4025	Network Control Specialist	Marine Corps
2245	8441	Civil Affairs Non-Commissioned Officer	Marine Corps
2246	9628	Computer Engineer	Marine Corps
2247	2141	Assault Amphibious Vehicle (AAV) Repairer/Technician	Marine Corps
2248	2146	Main Battle Tank (MBT) Repairer/Technician	Marine Corps
2249	2171	Electro-Optical Ordnance Repairer	Marine Corps
2250	3101	Basic Distribution Management Officer	Marine Corps
2251	3101	Basic Distribution Management Officer	Marine Corps
2252	3102	Distribution Management Officer (II/III)	Marine Corps
2253	4071	Data Base Management System (DBMS) Specialist	Marine Corps
2254	4602	Combat Camera (COMCAM) Officer (II/III)	Marine Corps
2255	6002	Aircraft Maintenance Officer (I)	Marine Corps
2256	8856	Contracting Officer	Marine Corps
2257	9640	Manpower Management Officer	Marine Corps
2258	0401	Basic Logistics Officer	Marine Corps
2259	0401	Basic Logistics Officer	Marine Corps
2260	0471	Personnel Retrieval and Processing Specialist	Marine Corps
2261	9634	Technical Information Operations Officer	Marine Corps
2262	1141	Electrician	Marine Corps
2263	1142	Engineer Equipment Electrical Systems Technician	Marine Corps
2264	1161	Refrigeration and Air Conditioning Technician	Marine Corps
2265	6800	Basic Meteorology and Oceanography (METOC) Marine	Marine Corps
2266	6801	Basic Meteorology and Oceanography (METOC) Officer	Marine Corps
2267	0160	Postal Officer	Marine Corps
2268	0200	Basic Intelligence Marine	Marine Corps
2269	0844	Field Artillery Fire Control Man	Marine Corps
2270	1812	M1A1 Tank Crewman	Marine Corps
2271	1834	Expeditionary Fighting Vehicle (EFV) Crewman	Marine Corps
2272	2671	Middle East Cryptologic Linguist	Marine Corps
2273	2673	Asia-Pacific Cryptologic Linguist	Marine Corps
2274	2674	European I (West) Cryptologic Linguist	Marine Corps
2275	2676	European II (East) Cryptologic Linguist	Marine Corps
2276	5901	Basic Electronics Maintenance Officer	Marine Corps
2277	5950	Air Traffic Control Systems Maintenance Officer (III)	Marine Corps
2278	6802	Meteorology and Oceanography (METOC) Officer (II/III)	Marine Corps
2279	9632	Nuclear Engineer	Marine Corps
2280	0231	Intelligence Specialist	Marine Corps
2281	0513	Civil Affairs Noncommissioned Officer	Marine Corps
2282	7372	Tactical Systems Operator/Mission Specialist	Marine Corps
2283	9670	Statistics Officer	Marine Corps
2284	9805	U.S. Marine Drum and Bugle Corps Officer	Marine Corps
2285	9805	U.S. Marine Drum and Bugle Corps Officer	Marine Corps
2286	0131	Unit Diary Clerk	Marine Corps
2287	2111	Small Arms Repairer/Technician	Marine Corps
2288	2131	Towed Artillery Systems Technician	Marine Corps
2289	2147	Light Armored Vehicle (LAV) Repairer/Technician	Marine Corps
2290	2148	Expeditionary Fighting Vehicle (EFV) Repairer/Technician	Marine Corps
2291	3500	Basic Motor Transport Marine	Marine Corps
2292	5702	Chemical, Biological, Radiological and Nuclear (CBRN) Defense Officer (III)	Marine Corps
2293	6502	Aviation Ordnance Officer (II/III)	Marine Corps
2294	6672	Aviation Supply Specialist	Marine Corps
2295	7291	Senior Air Traffic Controller	Marine Corps
2296	9631	Environmental Engineering Management Officer	Marine Corps
2297	9648	Management, Data Systems Officer	Marine Corps
2298	9666	Space Operations Officer	Marine Corps
2299	0220	Surveillance Sensor Officer	Marine Corps
2300	0430	Mobility Officer	Marine Corps
2301	0848	Field Artillery Operations Man	Marine Corps
2302	2519	Wire Chief	Marine Corps
2303	3301	Basic Food Service Officer	Marine Corps
2304	3301	Basic Food Service Officer	Marine Corps
2305	3529	Motor Transport Maintenance Chief	Marine Corps
2306	4429	Legal Services Reporter	Marine Corps
2307	6842	METOC Analyst Forecaster	Marine Corps
2308	7592	Pilot VMAW	Marine Corps
2309	9625	Modeling and Simulation Officer	Marine Corps
2310	9980	Surveillance Sensor Officer	Marine Corps
2311	4641	Combat Photographer	Marine Corps
2312	4671	Combat Videographer	Marine Corps
2313	0220	Surveillance sensor officers supervise the employment of surveillance sensors.	Marine Corps
2314	0251	Interrogator/Debriefer	Marine Corps
2315	0260	Geographic Intelligence Officer	Marine Corps
2316	4063	COBOL Programmer	Marine Corps
2317	4065	Programmer, ALC	Marine Corps
2318	4067	Programmer, ADA	Marine Corps
2319	4069	Systems Programmer	Marine Corps
2320	4302	Public Affairs Officer (I)	Marine Corps
2321	4401	Basic Legal Services Officer	Marine Corps
2322	4421	Legal Services Specialist	Marine Corps
2323	4615	Combat Lithographer	Marine Corps
2324	7051	Aircraft Rescue and Firefighting Specialist	Marine Corps
2325	7556	Pilot VMGR KC-130 Co-Pilot (T2P/T3P) (I)	Marine Corps
2326	7557	Pilot VMGR KC-130 Aircraft Commander (I)	Marine Corps
2327	9678	Historian	Marine Corps
2328	9914	Colonel, Judge Advocate	Marine Corps
2329	9982	Small Computer Systems Operator/Programmer	Marine Corps
2330	2336	Explosive Ordnance Disposal (EOD) Technician	Marine Corps
2331	7201	Basic Air Control/Air Support/Antiair Warfare/Air Traffic Control Officer	Marine Corps
2332	7207	Forward Air Controller/Air Officer	Marine Corps
2333	2669	Cryptologic Support Specialist	Marine Corps
2334	5964	Tactical Air Command Center CTAPS/Systems Administrator	Marine Corps
2335	0372	Critical Skills Operator	Marine Corps
2336	0300	Basic Infantryman	Marine Corps
2337	5978	Tactical Data Communications Central Technician	Marine Corps
2338	0600	Basic Communications Marine	Marine Corps
2339	0614	Unit Level Circuit Switch (ULCS) Operator/Maintainer	Marine Corps
2340	0621	Field Radio Operator	Marine Corps
2341	0624	High Frequency Communication Central Operator	Marine Corps
2342	0628	EHF Satellite Communications Operator-Maintainer	Marine Corps
2343	0842	Field Artillery Radar Operator	Marine Corps
2344	0847	Artillery Meteorological Man	Marine Corps
2345	2500	Basic Operational Communicator	Marine Corps
2346	2502	Communication Officer	Marine Corps
2347	2514	Unit Level Circuit Switch (ULCS) Operator/Maintainer	Marine Corps
2348	2515	Unit Level Circuit Switch Operator/Maintainer	Marine Corps
2349	2534	High Frequency Communication Central Operator	Marine Corps
2350	2542	Defense Message System (DMS) Specialist	Marine Corps
2351	2822	Electronic Switching Equipment Technician	Marine Corps
2352	2826	AN/MSC-63A Maintenance Technician	Marine Corps
2353	2831	AN/TRC-170 Technician	Marine Corps
2354	2832	AN/TRC-170 Technician	Marine Corps
2355	2833	Fleet Satellite Terminal Technician	Marine Corps
2356	2861	Radio Technician	Marine Corps
2357	2867	AN/TSC-120 Radio Technician	Marine Corps
2358	4068	Data Network Technician	Marine Corps
2359	4075	Computer Security Specialist	Marine Corps
2360	4076	Computer Security Specialist	Marine Corps
2361	5502	Band Officer (III)	Marine Corps
2362	5900	Basic Electronics Maintenance Marine	Marine Corps
2363	5907	Ground Launched Missile System Maintenance Officer	Marine Corps
2364	5942	Aviation Radar Repairer	Marine Corps
2365	5944	Aviation Radar Repairer (AN/TPS-63)	Marine Corps
2366	6000	Basic Aircraft Maintenance Marine	Marine Corps
2367	6011	Aircraft Mechanic-Trainee	Marine Corps
2368	6013	Aircraft Mechanic, A-6/EA-6	Marine Corps
2369	6015	Aircraft Mechanic, AV-8/TAV-8	Marine Corps
2370	6016	Aircraft Mechanic, KC-130	Marine Corps
2371	6017	Aircraft Mechanic, F/A-18	Marine Corps
2372	6022	Aircraft Power Plants Mechanic J52	Marine Corps
2373	6025	Aircraft Power Plants Mechanic Rolls Royce Pegasus	Marine Corps
2374	6026	Aircraft Power Plants Mechanic T56	Marine Corps
2375	6027	Aircraft Power Plants Mechanic, F-404	Marine Corps
2376	6030	Aircraft Flight Mechanic, KC-130	Marine Corps
2377	6031	Aircraft Flight Engineer, KC-130-Trainee	Marine Corps
2378	6032	Aircraft Flight Engineer, KC-130	Marine Corps
2379	6053	Aircraft Airframes Mechanic, EA-6	Marine Corps
2380	6055	Aircraft Airframe Mechanic, AV-8/TAV-8	Marine Corps
2381	6056	Aircraft Airframe Mechanic, KC-130	Marine Corps
2382	6057	Aircraft Airframe Mechanic, F/A-18	Marine Corps
2383	6061	Aircraft Intermediate Level Hydraulic/Pneumatic Mechanic-Trainee	Marine Corps
2384	6071	Aircraft Maintenance Ground Support Equipment (GSE) Mechanic-Trainee	Marine Corps
2385	6081	Aircraft Safety Equipment Mechanic-Trainee	Marine Corps
2386	6083	Aircraft Safety Equipment Mechanic, EA-6	Marine Corps
2387	6085	Aircraft Safety Equipment Mechanic, AV-8/TAV-8	Marine Corps
2388	6086	Aircraft Safety Equipment Mechanic, KC-130/MV-22	Marine Corps
2389	6087	Aircraft Safety Equipment Mechanic, F/A-18	Marine Corps
2390	6091	Aircraft Intermediate Level Structures Mechanic-Trainee	Marine Corps
2391	6093	Aircraft Intermediate Level Hydraulic/Pneumatic Mechanic Trainee	Marine Corps
2392	6094	Aircraft Intermediate Level Hydraulic/Pneumatic Mechanic	Marine Corps
2393	60X1	Aircraft Maintenance Trainee	Marine Corps
2394	6300	Basic Avionics Marine	Marine Corps
2395	6312	Aircraft Communications/Navigation/Radar Systems Technician, AV-8	Marine Corps
2396	6313	Aircraft Communications/Navigation/Radar Systems Technician, EA-6	Marine Corps
2397	6316	Aircraft Communications/Navigation Systems Technician, KC-130	Marine Corps
2398	6317	Aircraft Communications/Navigation/Radar Systems Technician, F/A-1	Marine Corps
2399	6318	Aircraft Communications/Navigation/Radar Systems Technician F- 35	Marine Corps
2400	6322	Aircraft Communications/Navigation/Electrical Systems Technician	Marine Corps
2401	6323	Aircraft Communications/Navigation/Electrical Systems Technician	Marine Corps
2402	6324	Aircraft Communications/Navigation/Electrical/Weapon Systems Technician	Marine Corps
2403	6326	Aircraft Communications/Navigation/Electrical/Systems Technician	Marine Corps
2404	6331	Aircraft Electrical Systems Technician-Trainee	Marine Corps
2405	6335	Aircraft Electrical Systems Technician, AV-8	Marine Corps
2406	6411	Aircraft Communications/Navigation Systems Technician Trainee, IMA	Marine Corps
2407	6412	Aircraft Communications Systems Technician, IMA	Marine Corps
2408	6414	Aircraft Communications/Navigation/Cryptographic Systems Technician	Marine Corps
2409	6422	Aircraft Cryptographic Systems Technician, IMA	Marine Corps
2410	6500	Basic Aviation Ordnance Marine	Marine Corps
2411	7300	Basic Enlisted Flight Crew Marine	Marine Corps
2412	7301	Basic Navigation Officer	Marine Corps
2413	7573	FRS Basic Supporting Arms Coordinator (Airborne)	Marine Corps
2414	7574	Naval Flight Officer (NFO), Qualified Supporting Arms Coordinator (Airborne)	Marine Corps
2415	7579	FRS Basic RF-4B Airborne Reconnaissance Officer	Marine Corps
2416	8981	Military Affiliate Radio System Radio Operator	Marine Corps
2417	9603	Leadership Development Specialist	Marine Corps
2418	9817	Remote Receiving Station (RRS) Operator	Marine Corps
2419	9976	Helicopter Officer AH-1Z/UH-1Y	Marine Corps
2420	0481	Landing Support Specialist	Marine Corps
2421	6531	Aircraft Ordnance Technician	Marine Corps
2422	0500	Basic Marine Air Ground Task Force (MAGTF) Plans Marine	Marine Corps
2423	0503	Civil Affairs Officer	Marine Corps
2424	0511	MAGTF Planning Specialist	Marine Corps
2425	0861	Fire Support Man	Marine Corps
2426	1100	Basic Utilities Marine	Marine Corps
2427	4038	Data Systems Marine	Marine Corps
2428	6469	CASS Test Station IMA Advanced Maintenance Technician, IMA	Marine Corps
2429	6482	Aircraft Electronic Countermeasures Systems Technician, Fixed Wing, IMA	Marine Corps
2430	6486	Advanced Aircraft Electronic Countermeasures Technician, IMA	Marine Corps
2431	7314	Unmanned Aerial Vehicle (UAV) Air Vehicle Operator	Marine Corps
2432	7590	Landing Signal Officer-Trainee	Marine Corps
2433	7593	Landing Signal Officer, Phase I & II Qualified LSO	Marine Corps
2434	8431	Psychological Operations Non-Commissioned Officer	Marine Corps
2435	8530	Marksmanship Coach	Marine Corps
2436	9814	External Unmanned Aerial Vehicle (UAV) Operator	Marine Corps
2437	9815	Recruiting Officer	Marine Corps
2438	9919	MAGTF Enlisted Planner	Marine Corps
2439	3400	Basic Financial Management Marine	Marine Corps
2440	2871	Calibration Technician	Marine Corps
2441	3401	Basic Financial Management Officer	Marine Corps
2442	3401	Basic Financial Management Officer	Marine Corps
2443	3510	Motor Transport Maintenance Officer (III)	Marine Corps
2444	4430	Legal Administrative Officer (III)	Marine Corps
2445	5974	Tactical Data Systems Administrator (TDSA)	Marine Corps
2446	6047	Aircraft Maintenance Data Analyst/Administrator	Marine Corps
2447	7220	Air Traffic Control Officer (I)	Marine Corps
2448	9602	Education Officer	Marine Corps
2449	9630	Industrial Engineer	Marine Corps
2450	9644	Financial Management Specialist	Marine Corps
2451	9650	Operations Analyst	Marine Corps
2452	0107	Civil Affairs Officer	Marine Corps
2453	1101	Basic Utilities Officer	Marine Corps
2454	1181	Fabric Repair Specialist	Marine Corps
2455	1301	Basic Engineer, Construction, Facilities, and Equipment Officer	Marine Corps
2456	1301	Basic Engineer, Construction, Facilities, and Equipment Officer	Marine Corps
2457	1310	Engineer Equipment Officer (III)	Marine Corps
2458	1349	Engineer Equipment Chief	Marine Corps
2459	1801	Basic Tank and Assault Amphibious Vehicle Officer	Marine Corps
2460	2101	Basic Ground Ordnance Maintenance Officer	Marine Corps
2461	2102	Ordnance Officer (II)	Marine Corps
2462	2181	Senior Ground Ordnance Weapons Chief	Marine Corps
2463	2340	Ammunition Officer (II/III)	Marine Corps
2464	2801	Basic Ground Electronics Maintenance Officer	Marine Corps
2465	2801	Basic Ground Electronics Maintenance Officer	Marine Corps
2466	3001	Basic Supply Administration and Operations Officer	Marine Corps
2467	3001	Basic Supply Administration and Operations Officer	Marine Corps
2468	3002	Ground Supply Officer (I) (LtCol to 2ndLt)	Marine Corps
2469	3441	NAF Audit Technician	Marine Corps
2470	3523	Logistics Vehicle System Mechanic or Vehicle Recovery Mechanic	Marine Corps
2471	4306	Combat Artist (Officer)	Marine Corps
2472	5979	Tactical Air Operations/Air Defense Systems Technician	Marine Corps
2473	6005	Aeronautical Engineer	Marine Corps
2474	6119	Helicopter/Tiltrotor Maintenance Chief	Marine Corps
2475	6175	Tiltrotor Crew Chief, MV-22	Marine Corps
2476	6491	Aviation Precision Measuring Equipment (PME) Chief	Marine Corps
2477	6600	Basic Aviation Supply Marine	Marine Corps
2478	7002	Expeditionary Airfield and Emergency Services Officer (III)	Marine Corps
2479	8040	Colonel, Logistician (I)	Marine Corps
2480	8511	Drill Instructor	Marine Corps
2481	8513	Marine Combat Instructor	Marine Corps
2482	8532	Small Arms Weapons Instructor	Marine Corps
2483	8563	Water Safety/Survival Instructor	Marine Corps
2484	9620	Aeronautical Engineer	Marine Corps
2485	9624	Electronics Engineer	Marine Corps
2486	9950	Combat Artist (Officer)	Marine Corps
2487	4100	Basic Marine Corps Community Services Marine	Marine Corps
2488	4101	Basic Marine Corps Community Services Officer	Marine Corps
2489	4612	Combat Camera Production Specialist	Marine Corps
2490	7531	Pilot VMM FRS Basic V-22 Pilot (I)	Marine Corps
2491	7532	Pilot VMM V-22 Qualified (I)	Marine Corps
2492	7212	Low Altitude Air Defense (LAAD) Gunner	Marine Corps
2493	4034	Computer Operator	Marine Corps
2494	0143	Career Retention Specialist	Marine Corps
2495	0501	Basic Marine Air Ground Task Force (MAGTF) Plans Officer	Marine Corps
2496	0501	Basic Marine Air Ground Task Force (MAGTF) Plans Officer	Marine Corps
2497	1120	Utilities Officer (III)	Marine Corps
2498	3300	Basic Food Service Marine	Marine Corps
2499	3381	Food Service Specialist	Marine Corps
2500	3432	Finance Technician	Marine Corps
2501	4400	Basic Legal Services Marine	Marine Corps
2502	5912	AVENGER System Maintainer	Marine Corps
2503	5948	Aviation Radar Technician	Marine Corps
2504	5952	Air Traffic Control Navigational Aids Technician	Marine Corps
2505	5953	Air Traffic Control Radar Technician	Marine Corps
2506	6302	Avionics Officer (II/III)	Marine Corps
2507	6821	METOC Observer	Marine Corps
2508	7257	Air Traffic Controller	Marine Corps
2509	7500	Pilot VMA FRS Basic A-4M	Marine Corps
2510	7501	Pilot VMA A-4 Qualified	Marine Corps
2511	7507	Pilot VMA FRS Basic AV-8B (I)	Marine Corps
2512	7508	Pilot VMA AV-8A/C Qualified (I)	Marine Corps
2513	7509	Pilot VMA AV-8B Qualified (I)	Marine Corps
2514	7510	Pilot VMA (AW) FRS Basic A-6E	Marine Corps
2515	7511	Pilot VMA (AW) A-6E Qualified	Marine Corps
2516	7516	Pilot VMFA FRS Basic F-35B Pilot (I)	Marine Corps
2517	7518	Pilot VMFA FRS F-35B Qualified (I)	Marine Corps
2518	7521	Pilot VMFA FRS Basic F/A-18 Pilot (I)	Marine Corps
2519	7522	Pilot VMFA F-4S Qualified	Marine Corps
2520	7523	Pilot VMFA F/A-18 Qualified	Marine Corps
2521	7558	Pilot HMH/M/L/A FRS Basic CH-53D (I)	Marine Corps
2522	7560	Pilot HMH/M/L/A FRS Basic/CH-53E Pilot (I)	Marine Corps
2523	7561	Pilot HMH/M/L/A FRS Basic CH-46 (I)	Marine Corps
2524	7562	Pilot HMH/M/L/A CH-46 Qualified (I)	Marine Corps
2525	7563	Pilot HMH/M/L/A UH-1 Qualified (I)	Marine Corps
2526	7564	Pilot HMH/M/L/A CH-53 A/D Qualified (I)	Marine Corps
2527	7565	Pilot HMH/M/L/A AH-1 Qualified (I)	Marine Corps
2528	7566	Pilot HMH/M/L/A CH-53E Qualified (I)	Marine Corps
2529	7567	Pilot HMH/M/L/A FRS Basic UH-1N (I)	Marine Corps
2530	7568	Pilot HMH/M/L/A FRS Basic AH-1 (I)	Marine Corps
2531	8538	Substance Abuse Counselor	Marine Corps
2532	9658	Command, Control, Communications, Computers and Intelligence (C4I) Officer	Marine Corps
2533	9676	International Relations Officer	Marine Corps
2534	9683	Master of International Law	Marine Corps
2535	3000	Basic Supply Administration and Operations Marine	Marine Corps
2536	1316	Metal Worker	Marine Corps
2537	3043	Supply Administration and Operations Specialist	Marine Corps
2538	5815	Special Reaction Team (SRT) Member	Marine Corps
2539	8111	Combat Rubber Reconnaissance Craft (CRRC) Coxswain	Marine Corps
2540	8112	Riverine Assault Craft (RAC) Crewman	Marine Corps
2541	8114	Rigid Raiding Craft (RRC)/Rigid Hull Inflatable Boat (RHIB) Coxswain	Marine Corps
2542	0306	Infantry Weapons Officer	Marine Corps
2543	9815	Electronic/Electrical Maintenance Technician	Marine Corps
2544	1803	Assault Amphibious Vehicle (AAV) Officer I)	Marine Corps
2545	0161	Postal Clerk	Marine Corps
2546	0313	LAV Crewman	Marine Corps
2547	0331	Machine Gunner	Marine Corps
2548	0341	Mortarman	Marine Corps
2549	0351	Infantry Assaultman	Marine Corps
2550	0352	Anti-tank Missileman	Marine Corps
2551	0613	Construction Wireman	Marine Corps
2552	0622	Digital (Multi-channel) Wideband Transmission Equipment Operator	Marine Corps
2553	0623	Tropospheric Scatter Radio Multi-channel Equipment Operator	Marine Corps
2554	0626	Fleet SATCOM Terminal Operator	Marine Corps
2555	0647	PLRS Master Station Operator	Marine Corps
2556	0800	Basic Field Artillery Man	Marine Corps
2557	0811	Field Artillery Cannoneer	Marine Corps
2558	0845	Naval Gunfire Spotter	Marine Corps
2559	0845	Naval Gunfire Spotter	Marine Corps
2560	1300	Basic Engineer, Construction, and Equipment Marine	Marine Corps
2561	1302	Combat Engineer Officer	Marine Corps
2562	1341	Engineer Equipment Mechanic	Marine Corps
2563	1345	Engineer Equipment Operator	Marine Corps
2564	1800	Basic Tank and Assault Amphibious Vehicle Crewman	Marine Corps
2565	1833	Assault Amphibious Vehicle (AAV) Crewman	Marine Corps
2566	2100	Basic Ground Ordnance Maintenance Marine	Marine Corps
2567	2101	Basic Ground Ordnance Maintenance Officer	Marine Corps
2568	2161	Machinist	Marine Corps
2569	2512	Field Wireman	Marine Corps
2570	2513	Construction Wireman	Marine Corps
2571	2531	Field Radio Operator	Marine Corps
2572	2532	Multichannel Equipment Operator	Marine Corps
2573	2535	Fleet SATCOM Terminal Operator	Marine Corps
2574	2536	Ground Mobile Forces SATCOM Operator	Marine Corps
2575	2539	PLRS Master Station Operator or Ground Mobile Forces SATCOM Radio Chief	Marine Corps
2576	2585	PLRS Master Station Operator	Marine Corps
2577	2800	Basic Ground Electronics Maintenance Marine	Marine Corps
2578	2811	Telephone Technician	Marine Corps
2579	2827	Tactical Electronic Reconnaissance Process/Evaluation Systems (TERPES) Technician	Marine Corps
2580	2841	Ground Radio Repairer	Marine Corps
2581	2842	Enhanced Position Location Reporting System (EPLRS) System Specialist	Marine Corps
2582	2843	PLRS Support Maintenance Technician	Marine Corps
2583	2846	Ground Radio Intermediate Repairer	Marine Corps
2584	2847	Telephone Systems/Personal Computer Repairer	Marine Corps
2585	2855	Tactical Electronic Reconnaissance Process/Evaluations System (TERPES) Technician	Marine Corps
2586	2874	Metrology Technician	Marine Corps
2587	2877	Radiac Instrument Technician	Marine Corps
2588	2881	2M/ATE Technician	Marine Corps
2589	2884	Ground Radar Repairer	Marine Corps
2590	2885	Artillery Electronic Systems Repairer	Marine Corps
2591	2886	Artillery Electronic System Repairer	Marine Corps
2592	2889	Ground Radar Technician	Marine Corps
2593	3044	Basic Contingency Contract Specialist	Marine Corps
2594	3361	Subsistence Supply Clerk	Marine Corps
2595	3402	Finance Officer (III)	Marine Corps
2596	3501	Basic Motor Transport Officer	Marine Corps
2597	3501	Basic Motor Transport Officer	Marine Corps
2598	3502	Motor Transport Officer	Marine Corps
2599	3513	Body Repair Mechanic	Marine Corps
2600	3521	Automotive Maintenance Technician	Marine Corps
2601	3525	Crash /Fire/ Rescue Vehicle Mechanic	Marine Corps
2602	3531	Motor Vehicle Operator	Marine Corps
2603	4000	Basic Data Systems Marine	Marine Corps
2604	4066	Small Computer Systems Specialist (SCSS)	Marine Corps
2605	4099	Data Processing Chief	Marine Corps
2606	4330	Historical Officer	Marine Corps
2607	4330	Historical Officer	Marine Corps
2608	4600	Basic Combat Camera Marine	Marine Corps
2609	4601	Basic Combat Camera Officer	Marine Corps
2610	4601	Basic Combat Camera Officer	Marine Corps
2611	4611	Combat Illustrator	Marine Corps
2612	4653	Combat Visual Information Equipment Technician	Marine Corps
2613	5500	Basic Musician	Marine Corps
2614	5501	Basic Music Officer	Marine Corps
2615	5517	Band Master	Marine Corps
2616	5522	Small Ensemble Leader	Marine Corps
2617	5524	Musician	Marine Corps
2618	5700	Basic Chemical, Biological, Radiological, and Nuclear (CBRN) Defense Marine	Marine Corps
2619	5701	Basic Chemical, Biological, Radiological and Nuclear (CBRN) Defense Officer	Marine Corps
2620	5800	Basic Military Police and Corrections Marine	Marine Corps
2621	5801	Basic Military Police and Corrections Officer	Marine Corps
2622	5804	Corrections Officer (III)	Marine Corps
2623	5911	Circuit Card Repairer	Marine Corps
2624	5914	Surface to Air Missile Systems Ordnance Technician	Marine Corps
2625	5915	Surface to Air Missile Systems Fire Control Technician	Marine Corps
2626	5918	HAWK Missile Systems Operator/Technician	Marine Corps
2627	5924	Surface Air Defense Systems Acquisition Technician	Marine Corps
2628	5925	Surface Air Defense Systems Fire Control Technician	Marine Corps
2629	5937	Aviation Radio Repairer	Marine Corps
2630	5956	Station Air Traffic Control Surveillance Radar System Technician	Marine Corps
2631	5957	Station Air Traffic Control Precision Approach Radar Technician	Marine Corps
2632	5962	Tactical Data Systems Equipment (TDSE) Repairer	Marine Corps
2633	5963	Tactical Air Operations Module Repairer	Marine Corps
2634	6014	Unmanned Aerial Vehicle (UAV) Mechanic	Marine Corps
2635	6034	Aircraft Nondestructive Inspection Operator	Marine Corps
2636	6035	Aircraft Power Plants Test Cell Operator, Fixed Wing	Marine Corps
2637	6044	Aircraft Non-Destructive Inspection Technician	Marine Corps
2638	6045	Aircraft Non-Destructive Inspection Operator	Marine Corps
2639	6048	Flight Equipment Technician	Marine Corps
2640	6051	Aircraft Airframe Mechanic-Trainee	Marine Corps
2641	6060	Flight Equipment Marine	Marine Corps
2642	6062	Aircraft Intermediate Level Hydraulic/Pneumatic Mechanic	Marine Corps
2643	6072	Aircraft Maintenance Supply Equipment Hydraulic/Pneumatic/Structure	Marine Corps
2644	6073	Aircraft Maintenance Support Equipment Electrician/ Refrigeration	Marine Corps
2645	6074	Cryogenics Equipment Operator	Marine Corps
2646	6075	Cryogenics Equipment Operator	Marine Corps
2647	6092	Aircraft Intermediate Level Structures Mechanic	Marine Corps
2648	6111	Helicopter/Tiltrotor Mechanic-Trainee	Marine Corps
2649	6112	Helicopter Mechanic, CH-46	Marine Corps
2650	6113	Helicopter Mechanic, CH-53	Marine Corps
2651	6114	Helicopter Mechanic, UH/AH-1	Marine Corps
2652	6115	Tiltrotor Mechanic, MV-22	Marine Corps
2653	6116	Tiltrotor Mechanic, MV-22	Marine Corps
2654	6122	Helicopter Power Plants Mechanic, T-58	Marine Corps
2655	6123	Helicopter Power Plants Mechanic, T-64	Marine Corps
2656	6124	Helicopter Power Plants Mechanic, T-400/T-700	Marine Corps
2657	6125	Tiltrotor Power Plants Mechanic, T-406	Marine Corps
2658	6132	Helicopter/Tiltrotor Dynamic Components Mechanic	Marine Corps
2659	6135	Aircraft Power Plants Test Cell Operator, Rotary Wing/Tiltrotor	Marine Corps
2660	6151	Tiltrotor airframe mechanic trainee	Marine Corps
2661	6152	Helicopter Airframe Mechanic, CH-46	Marine Corps
2662	6153	Helicopter Airframe Mechanic, CH-53	Marine Corps
2663	6154	Helicopter Airframe Mechanic, UH/AH-1	Marine Corps
2664	6155	Tiltrotor Airframe Mechanic, MV-22	Marine Corps
2665	6156	Tiltrotor Airframe Mechanic, MV-22	Marine Corps
2666	6172	Helicopter Crew Chief, CH-46	Marine Corps
2667	6173	Helicopter Crew Chief, CH-53	Marine Corps
2668	6174	Helicopter Crew Chief, UH-1	Marine Corps
2669	6176	Tiltrotor Crew Chief, MV-22	Marine Corps
2670	61X1	Aircraft Maintenance Trainee	Marine Corps
2671	6211	Fixed-Wing Aircraft Mechanic-Trainee	Marine Corps
2672	6212	Fixed-Wing Aircraft Mechanic, AV-8/TAV-8	Marine Corps
2673	6213	Fixed-Wing Aircraft Mechanic, EA-6	Marine Corps
2674	6214	Unmanned Aerial Vehicle (UAV) Mechanic	Marine Corps
2675	6216	Fixed-Wing Aircraft Mechanic, KC-130	Marine Corps
2676	6217	Fixed-Wing Aircraft Mechanic, F/A-18	Marine Corps
2677	6218	Fixed-Wing Aircraft Mechanic, F-35B	Marine Corps
2678	6222	Fixed-Wing Aircraft Power Plants Mechanic, F-402	Marine Corps
2679	6223	Fixed-Wing Aircraft Power Plants Mechanic, J-52	Marine Corps
2680	6227	Fixed-Wing Aircraft Power Plants Mechanic, F-404	Marine Corps
2681	6232	Fixed-Wing Aircraft Flight Mechanic, KC-130	Marine Corps
2682	6241	Fixed-Wing Aircraft Flight Engineer, KC-130 Trainee	Marine Corps
2683	6251	Fixed-Wing Aircraft Airframe Mechanic-Trainee	Marine Corps
2684	6252	Fixed-Wing Aircraft Airframe Mechanic, AV-8/TAV-8	Marine Corps
2685	6253	Fixed-Wing Aircraft Airframe Mechanic, EA-6	Marine Corps
2686	6256	Fixed-Wing Aircraft Airframe Mechanic, KC-130	Marine Corps
2687	6257	Fixed-Wing Aircraft Airframe Mechanic, F/A-18	Marine Corps
2688	6258	Fixed-Wing Aircraft Airframe Mechanic, F-35B	Marine Corps
2689	6276	Fixed-Wing Aircraft Crew Chief, KC-130	Marine Corps
2690	6281	Fixed-Wing Aircraft Safety Equipment Mechanic-Trainee	Marine Corps
2691	6282	Fixed-Wing Aircraft Safety Equipment Mechanic, AV-8/TAV-8	Marine Corps
2692	6283	Fixed-Wing Aircraft Safety Equipment Mechanic, EA-6	Marine Corps
2693	6286	Fixed-Wing Aircraft Safety Equipment Mechanic, KC-130/V-22	Marine Corps
2694	6287	Fixed-Wing Aircraft Safety Equipment Mechanic	Marine Corps
2695	6288	Fixed-Wing Aircraft Safety Equipment Mechanic, F-35B	Marine Corps
2696	6314	Unmanned Aerial System (UAS) Avionics Technician	Marine Corps
2697	6332	Aircraft Electrical Systems Technician, AV-8	Marine Corps
2698	6333	Aircraft Electrical Systems Technician, EA-6	Marine Corps
2699	6336	Aircraft Electrical Systems Technician, KC-130	Marine Corps
2700	6337	Aircraft Electrical Systems Technician, F/A-18	Marine Corps
2701	6338	Aircraft Electrical Systems Technician, F-35B	Marine Corps
2702	6386	Aircraft Electronic Countermeasures Systems Technician, EA-6B	Marine Corps
2703	6400	Basic Avionics Marine IMA	Marine Corps
2704	6413	Aircraft Navigation Systems Technician, IFF/RADAR/TACAN, IMA	Marine Corps
2705	6423	Aviation Electronic Microminiature/Instrument and Cable Repair Technician, IMA	Marine Corps
2706	6431	Aircraft Electrical Systems Technician Trainee	Marine Corps
2707	6432	Aircraft Electrical/Instrument/Flight Control Systems Technician	Marine Corps
2708	6433	Aircraft Electrical/Instrument/Flight Control Systems Technician	Marine Corps
2709	6461	Hybrid Test Set Technician, IMA	Marine Corps
2710	6462	Avionics Test Set (ATS) Technician, IMA	Marine Corps
2711	6463	CASS HP Configuration Operator/Maintainer/Technician, IMA	Marine Corps
2712	6464	Aircraft Inertial Navigation System Technician, IMA	Marine Corps
2713	6465	Hybrid Test Set Technician, IMA	Marine Corps
2714	6466	CASS EO Configuration Operator/Maintainer/Technician/IMA	Marine Corps
2715	6467	Consolidated Automatic Support System (CASS) Technician, IMA	Marine Corps
2716	6468	Aircraft Elec Equip Test Set (EETS)/Mobile Elec Test Set Tech, IMA	Marine Corps
2809	1655	RL - Special Duty Officer (Public Affairs)	Navy
2717	6472	Consolidated Automated Support System (CASS), Electro-Optical (EO)/Forward Looking Infrared Tech (FLTR)	Marine Corps
2718	6473	Consolidated Automated Support System High Power/Radar Technician	Marine Corps
2719	6483	Aircraft Electronic Countermeasures Systems Technician, Helicopter	Marine Corps
2720	6484	CASS EW Configuration Operator/Maintainer/Technician, IMA	Marine Corps
2721	6485	Advanced Aircraft ECM System Technician, IMA	Marine Corps
2722	6492	Aviation Precision Measurement Equipment/Calibration and Repair Technician, IMA	Marine Corps
2723	6493	Aviation Meteorological Equipment Technician, OMA/IMA	Marine Corps
2724	6511	Aircraft Ordnance Technician-Trainee	Marine Corps
2725	6521	Aviation Ordnance Munitions Technician, IMA	Marine Corps
2726	6541	Aviation Ordnance Systems Technician	Marine Corps
2727	7000	Basic Airfield Services Marine	Marine Corps
2728	7001	Basic Airfield Services Officer	Marine Corps
2729	7202	Air Command and Control Officer (I)	Marine Corps
2730	7204	Low Altitude Air Defense Officer (I)	Marine Corps
2731	7208	Air Support Control Officer (I)	Marine Corps
2732	7210	Air Defense Control Officer (I)	Marine Corps
2733	7222	Hawk Missile System Operator	Marine Corps
2734	7251	Air Traffic Controller-Trainee	Marine Corps
2735	72X1	Air Control/Air Support/Anti-Air Warfare Trainee	Marine Corps
2736	7371	Tactical Systems Operator-Trainee	Marine Corps
2737	7381	Airborne Radio Operator / In-flight Refueling Observer / Loadmaster Trainee (ARO / IRO / LM)	Marine Corps
2738	7382	Loadmaster/In-Flight Refueling Observer	Marine Corps
2739	73X1	Air Traffic Control & Enlisted Flight Crews Trainee	Marine Corps
2740	7520	FRS Basic F-4S Pilot	Marine Corps
2741	7540	FRS Basic RF-4B Pilot	Marine Corps
2742	7575	FRS Basic OV-10 Pilot	Marine Corps
2743	7576	Pilot VMO	Marine Corps
2744	7591	Naval Flight Officer (VMAW)	Marine Corps
2745	7597	Basic Rotary Wing Pilot (I)	Marine Corps
2746	7598	Basic Fixed-Wing Pilot (I)	Marine Corps
2747	8003	General Officer (I)	Marine Corps
2748	8010	Billet Designator-Warrant Officer	Marine Corps
2749	8033	Quality Assurance Technician (Subsistence)	Marine Corps
2750	8041	Colonel, Ground	Marine Corps
2751	8042	Colonel, Naval Aviator/Naval Flight Officer (I)	Marine Corps
2752	8152	Marine Corps Security Force (MCSF) Guard	Marine Corps
2753	8231	Education Assistant	Marine Corps
2754	8410	Recruiting Officer	Marine Corps
2755	8421	Career Retention Specialist	Marine Corps
2756	8531	Marksmanship Instructor	Marine Corps
2757	8541	Scout-Sniper	Marine Corps
2758	8551	Martial Arts Instructor	Marine Corps
2759	8552	Martial Arts Instructor-Trainer	Marine Corps
2760	8631	Surveillance Sensor Maintenance Marine	Marine Corps
2761	8652	Reconnaissance Man, Parachutist Qualified	Marine Corps
2762	8653	Reconnaissance Man, Combatant Diver Qualified	Marine Corps
2763	8654	Reconnaissance Man, Parachute and Combatant Diver Qualified	Marine Corps
2764	8811	Firefighter	Marine Corps
2765	8915	Food Service Attendant	Marine Corps
2766	8921	Athletic & Recreation Assistant	Marine Corps
2767	8972	Aircrew Trainee	Marine Corps
2768	9051	Graves Registration Specialist	Marine Corps
2769	9622	Chemical Engineer	Marine Corps
2770	9626	Ordnance System Engineer	Marine Corps
2771	9651	Operations Research Specialist	Marine Corps
2772	9683	Master of International Law	Marine Corps
2773	9684	Master of Environmental Law	Marine Corps
2774	9685	Master of Labor Law	Marine Corps
2775	9686	Master of Procurement Law	Marine Corps
2776	9687	Master of Criminal Law	Marine Corps
2777	9687	Master of Criminal Law	Marine Corps
2778	9688	Master of Law (General)	Marine Corps
2779	9807	Mission Commander	Marine Corps
2780	9808	Ground Control Station (GCS) Internal Pilot	Marine Corps
2781	9813	GCS Payload Operator	Marine Corps
2782	9816	Mechanical Maintenance Technician	Marine Corps
2783	9820	Billet Designator-Political Military Officer	Marine Corps
2784	9901	Basic Officer	Marine Corps
2785	9906	Colonel, Ground	Marine Corps
2786	9907	Colonel, Naval Aviator/Naval Flight Officer	Marine Corps
2787	9933	Space Operations Staff Officer	Marine Corps
2788	9934	Information Operations Staff Officer	Marine Corps
2789	9935	Special Technical Operations Marine	Marine Corps
2790	9935	Special Technical Operations (Officer)	Marine Corps
2791	9936	Substance Abuse Control Specialist	Marine Corps
2792	9936	Substance Abuse Control Officer	Marine Corps
2793	9952	Combatant Diver Marine	Marine Corps
2794	9952	Combatant Diver Qualified (Officer)	Marine Corps
2795	9953	Parachutist/Combatant Diver Marine	Marine Corps
2796	9962	Parachutist	Marine Corps
2797	9965	Billet Designator-Fixed Wing Pilot	Marine Corps
2798	9966	Billet Designator-Naval Flight Officer	Marine Corps
2799	9967	Billet Designator-Helicopter Pilot	Marine Corps
2800	9969	Billet Designator-Any Pilot/Naval Flight Officer	Marine Corps
2801	9972	Aircrew Trainee	Marine Corps
2802	9973	Fixed-Wing Transport Aircraft Specialist, KC-130J	Marine Corps
2803	9974	Vertical Takeoff Unmanned Aerial Vehicle Officer	Marine Corps
2804	9986	Joint Terminal Attack Controller	Marine Corps
2805	9986	Joint Terminal Attack Controller	Marine Corps
2806	1657	RL - Special Duty Officer (Public Affairs)	Navy
2807	1650	RL - Special Duty Officer (Public Affairs)	Navy
2808	1653	RL - Special Duty Officer (Public Affairs)	Navy
2810	IT	Information Systems Technician	Navy
2811	AWV	Aircrewmen Avionics (AWV)	Navy
2812	7427	CWO - Information Systems Technician	Navy
2813	CTO	Cryptologic Technician Communications	Navy
2814	7421	CWO - Information Systems Technician	Navy
2815	7422	CWO - Information Systems Technician	Navy
2816	7423	CWO - Information Systems Technician	Navy
2817	7425	CWO - Information Systems Technician	Navy
2818	7428	CWO - Information Systems Technician	Navy
2819	6327	LDO - Operations	Navy
2820	7327	CWO - Operations	Navy
2821	PS	Personnel Specialist	Navy
2822	6320	LDO - Operations	Navy
2823	6323	LDO - Operations	Navy
2824	6325	LDO - Operations	Navy
2825	7321	CWO - Operations	Navy
2826	7322	CWO - Operations	Navy
2827	7323	CWO - Operations	Navy
2828	7325	CWO - Operations	Navy
2829	7328	CWO - Operations	Navy
2830	AWO	Aircrewman Operator (AWO)	Navy
2831	AO	Aviation Ordnanceman	Navy
2832	RP	Religious Program Specialist	Navy
2833	CTT	Cryptologic Technician, Technical	Navy
2834	PN	Personnelman	Navy
2835	6167	LDO - Ordnance	Navy
2836	6160	LDO - Ordnance	Navy
2837	6163	LDO - Ordnance	Navy
2838	6165	LDO - Ordnance	Navy
2839	AT	Aviation Electronics Technician	Navy
2840	2107	SC - Medical Corps	Navy
2841	2100	SC - Medical Corps	Navy
2842	2103	SC - Medical Corps	Navy
2843	2105	SC - Medical Corps	Navy
2844	7487	CWO - Explosive Ordnance Disposal	Navy
2845	7481	CWO - Explosive Ordnance Disposal	Navy
2846	7482	CWO - Explosive Ordnance Disposal	Navy
2847	7483	CWO - Explosive Ordnance Disposal	Navy
2848	7485	CWO - Explosive Ordnance Disposal	Navy
2849	7488	CWO - Explosive Ordnance Disposal	Navy
2850	AWR	Aircrewmen Tactical Helicopter (AWR)	Navy
2851	6337	LDO - Maintenance	Navy
2852	7527	CWO - Food Service	Navy
2853	AWS	Aircrewmen Helicopter (AWS)	Navy
2854	6330	LDO - Maintenance	Navy
2855	6333	LDO - Maintenance	Navy
2856	6335	LDO - Maintenance	Navy
2857	6467	LDO - Meteorology/Oceanography	Navy
2858	7521	CWO - Food Service	Navy
2859	7522	CWO - Food Service	Navy
2860	7523	CWO - Food Service	Navy
2861	7525	CWO - Food Service	Navy
2862	7528	CWO - Food Service	Navy
2863	6460	LDO - Meteorology/Oceanography	Navy
2864	6463	LDO - Meteorology/Oceanography	Navy
2865	6465	LDO - Meteorology/Oceanography	Navy
2866	6487	LDO - Explosive Ordnance Disposal	Navy
2867	6480	LDO - Explosive Ordnance Disposal	Navy
2868	6483	LDO - Explosive Ordnance Disposal	Navy
2869	6485	LDO - Explosive Ordnance Disposal	Navy
2870	1317	URL - Aviation Warfare Officer	Navy
2871	6297	LDO - Communications	Navy
2872	1310	URL - Aviation Warfare Officer	Navy
2873	1313	URL - Aviation Warfare Officer	Navy
2874	1315	URL - Aviation Warfare Officer	Navy
2875	6290	LDO - Communications	Navy
2876	6293	LDO - Communications	Navy
2877	6295	LDO - Communications	Navy
2878	STG	Sonar Technician, Surface	Navy
2879	DT	Dental Technician	Navy
2880	LS	Logistics Support	Navy
2881	SK	Storekeeper	Navy
2882	ML	Molder	Navy
2883	6127	LDO - Operations	Navy
2884	7127	CWO - Operations Technician	Navy
2885	CE	Construction Electrician	Navy
2886	LI	Lithographer	Navy
2887	6120	LDO - Operations	Navy
2888	6123	LDO - Operations	Navy
2889	6125	LDO - Operations	Navy
2890	7121	CWO - Operations Technician	Navy
2891	7122	CWO - Operations Technician	Navy
2892	7123	CWO - Operations Technician	Navy
2893	7125	CWO - Operations Technician	Navy
2894	7128	CWO - Operations Technician	Navy
2895	EA	Engineering Aid	Navy
2896	OT	Ocean Systems Technician	Navy
2897	OTA	Ocean Systems Technician Analyst	Navy
2898	BU	Builder	Navy
2899	1807	RL - Special Duty Officer (Oceanography)	Navy
2900	SM	Signalman	Navy
2901	GSM	Gas Turbine Systems Technician, Mechanical	Navy
2902	1800	RL - Special Duty Officer (Oceanography)	Navy
2903	1803	RL - Special Duty Officer (Oceanography)	Navy
2904	1805	RL - Special Duty Officer (Oceanography)	Navy
2905	1117	URL - Surface Warfare	Navy
2906	7137	CWO - Engineering Technician	Navy
2907	DC	Damage Controlman	Navy
2908	1110	URL - Surface Warfare	Navy
2909	1113	URL - Surface Warfare	Navy
2910	1115	URL - Surface Warfare	Navy
2911	7131	CWO - Engineering Technician	Navy
2912	7132	CWO - Engineering Technician	Navy
2913	7133	CWO - Engineering Technician	Navy
2914	7135	CWO - Engineering Technician	Navy
2915	7138	CWO - Engineering Technician	Navy
2916	6537	LDO - Civil Engineer Corps	Navy
2917	7387	CWO - Aviation Electronics	Navy
2918	7537	CWO - Civil Engineer Corps	Navy
2919	AC	Air Traffic Controller	Navy
2920	CS	Culinary Specialist	Navy
2921	6530	LDO - Civil Engineer Corps	Navy
2922	6533	LDO - Civil Engineer Corps	Navy
2923	6535	LDO - Civil Engineer Corps	Navy
2924	7381	CWO - Aviation Electronics	Navy
2925	7382	CWO - Aviation Electronics	Navy
2926	7383	CWO - Aviation Electronics	Navy
2927	7385	CWO - Aviation Electronics	Navy
2928	7388	CWO - Aviation Electronics	Navy
2929	7531	CWO - Civil Engineer Corps	Navy
2930	7532	CWO - Civil Engineer Corps	Navy
2931	7533	CWO - Civil Engineer Corps	Navy
2932	7535	CWO - Civil Engineer Corps	Navy
2933	7538	CWO - Civil Engineer Corps	Navy
2934	1517	RL - Aerospace Engineering Duty Officer - Aerospace Engineering	Navy
2935	1510	RL - Aerospace Engineering Duty Officer - Aerospace Engineering	Navy
2936	1513	RL - Aerospace Engineering Duty Officer - Aerospace Engineering	Navy
2937	1515	RL - Aerospace Engineering Duty Officer - Aerospace Engineering	Navy
2938	7167	CWO - Ordnance Technician	Navy
2939	7161	CWO - Ordnance Technician	Navy
2940	7162	CWO - Ordnance Technician	Navy
2941	7163	CWO - Ordnance Technician	Navy
2942	7165	CWO - Ordnance Technician	Navy
2943	7168	CWO - Ordnance Technician	Navy
2944	EOD	Explosive Ordnance Disposal	Navy
2945	MR	Machinery Repairman	Navy
2946	ET	Electronics Technician	Navy
2947	IM	Instrumentman	Navy
2948	7447	CWO - Information Warfare Technician	Navy
2949	AMS	Aviation Structural Mechanic	Navy
2950	MN	Mineman	Navy
2951	ND	Navy Diver	Navy
2952	7441	CWO - Information Warfare Technician	Navy
2953	7442	CWO - Information Warfare Technician	Navy
2954	7443	CWO - Information Warfare Technician	Navy
2955	7445	CWO - Information Warfare Technician	Navy
2956	7448	CWO - Information Warfare Technician	Navy
2957	AMH	Aviation Structural Mechanic	Navy
2958	AS	Aviation Support Equipment Technician	Navy
2959	AZ	Aviation Maintenance Administrationman	Navy
2960	DS	Data Systems Technician	Navy
2961	STS	Sonar Technician, Submarine	Navy
2962	6187	LDO - Electronics	Navy
2963	7187	CWO - Electronics Technician	Navy
2964	6180	LDO - Electronics	Navy
2965	6183	LDO - Electronics	Navy
2966	6185	LDO - Electronics	Navy
2967	7181	CWO - Electronics Technician	Navy
2968	7182	CWO - Electronics Technician	Navy
2969	7183	CWO - Electronics Technician	Navy
2970	7185	CWO - Electronics Technician	Navy
2971	7188	CWO - Electronics Technician	Navy
2972	MA	Master-At-Arms	Navy
2973	UT	Utilitiesman	Navy
2974	CM	Construction Mechanic	Navy
2975	CTN	Cryptologic Technician Networks	Navy
2976	EO	Equipment Operator	Navy
2977	OTM	Ocean Systems Technician Maintainer	Navy
2978	6197	LDO - Communications	Navy
2979	7297	CWO - Submarine Communication Technician	Navy
2980	2507	SC - Judge Advocate General Corps	Navy
2981	1227	RL - Naval Reactors Engineer	Navy
2982	1400	RL - Engineering Duty Officer (General)	Navy
2983	1500	RL - Aerospace Engineering	Navy
2984	1503	RL - Aerospace Engineering	Navy
2985	1505	RL - Aerospace Engineering	Navy
2986	1507	RL - Aerospace Engineering	Navy
2987	1827	RL - Special Duty Officer Billet - Information Professional Officer	Navy
2988	6190	LDO - Communications	Navy
2989	6193	LDO - Communications	Navy
2990	6195	LDO - Communications	Navy
2991	6417	LDO - Administration	Navy
2992	6427	LDO - Information Systems	Navy
2993	7291	CWO - Submarine Communication Technician	Navy
2994	7292	CWO - Submarine Communication Technician	Navy
2995	7293	CWO - Submarine Communication Technician	Navy
2996	7295	CWO - Submarine Communication Technician	Navy
2997	7298	CWO - Submarine Communication Technician	Navy
2998	7347	CWO - Aviation Maintenance Technician	Navy
2999	MC	Mass Communication Specialist	Navy
3000	2500	SC - Judge Advocate General Corps	Navy
3001	2503	SC - Judge Advocate General Corps	Navy
3002	2505	SC - Judge Advocate General Corps	Navy
3003	1220	RL - Naval Reactors Engineer	Navy
3004	1223	RL - Naval Reactors Engineer	Navy
3005	1225	RL - Naval Reactors Engineer	Navy
3006	1820	RL - Special Duty Officer Billet - Information Professional Officer	Navy
3007	1823	RL - Special Duty Officer Billet - Information Professional Officer	Navy
3008	1825	RL - Special Duty Officer Billet - Information Professional Officer	Navy
3009	6410	LDO - Administration	Navy
3010	6413	LDO - Administration	Navy
3011	6415	LDO - Administration	Navy
3012	6420	LDO - Information Systems	Navy
3013	6423	LDO - Information Systems	Navy
3014	6425	LDO - Information Systems	Navy
3015	7341	CWO - Aviation Maintenance Technician	Navy
3016	7342	CWO - Aviation Maintenance Technician	Navy
3017	7343	CWO - Aviation Maintenance Technician	Navy
3018	7345	CWO - Aviation Maintenance Technician	Navy
3019	7348	CWO - Aviation Maintenance Technician	Navy
3020	ASE	Aviation Support Equipment Technician, Electrical	Navy
3021	AWCM	Aviation Warfare Systems Operator, Master Chief (AWCM)	Navy
3022	DP	Data Processing Technician	Navy
3023	FT	Fire Control Technician (Submarine)	Navy
3024	1520	RL - Aerospace Engineering Duty Officer - Aviation Maintenance	Navy
3025	1523	RL - Aerospace Engineering Duty Officer - Aviation Maintenance	Navy
3026	1525	RL - Aerospace Engineering Duty Officer - Aviation Maintenance	Navy
3027	1527	RL - Aerospace Engineering Duty Officer - Aviation Maintenance	Navy
3028	1847	RL - Special Duty Officer - Cyber Warfare Engineer	Navy
3030	7497	CWO - Security	Navy
3031	MS	Mess Management Specialist	Navy
3032	1840	RL - Special Duty Officer - Cyber Warfare Engineer	Navy
3033	1843	RL - Special Duty Officer - Cyber Warfare Engineer	Navy
3034	1845	RL - Special Duty Officer - Cyber Warfare Engineer	Navy
3035	6490	LDO - Security	Navy
3036	6493	LDO - Security	Navy
3037	6495	LDO - Security	Navy
3038	7491	CWO - Security	Navy
3039	7492	CWO - Security	Navy
3040	7493	CWO - Security	Navy
3041	7495	CWO - Security	Navy
3042	7498	CWO - Security	Navy
3043	AWF	Aircrewmen Mechanical (AWF)	Navy
3044	DM	Illustrator Draftsman	Navy
3045	6527	LDO - Supply Corps - Mess Management	Navy
3046	1137	URL - Special Warfare	Navy
3047	1187	URL - Special Warfare	Navy
3048	1197	URL - Special Operations	Navy
3049	1237	RL - Permanent Military Professor	Navy
3050	1307	URL - Aviation	Navy
3051	1327	URL - Naval Flight Officer	Navy
3052	1387	URL - Pilot	Navy
3053	1637	RL - Special Duty - Intelligence	Navy
3054	1837	RL - Special Duty Officer - Intelligence Officer	Navy
3055	1857	RL - IDC (Information Dominance Corps) Officer	Navy
3056	6117	LDO - Deck	Navy
3057	6150	LDO - Special Warfare Technician	Navy
3058	6153	LDO - Special Warfare Technician	Navy
3059	6155	LDO - Special Warfare Technician	Navy
3060	6157	LDO - Special Warfare Technician	Navy
3061	6267	LDO - Ordnance	Navy
3062	6307	LDO - Naval Aviator	Navy
3063	6317	LDO - Deck	Navy
3064	6477	LDO - Photography	Navy
3065	6520	LDO - Supply Corps - Mess Management	Navy
3066	6523	LDO - Supply Corps - Mess Management	Navy
3067	6525	LDO - Supply Corps - Mess Management	Navy
3068	7117	CWO - Boatswain	Navy
3069	7177	CWO - Special Warfare Combatant-Craft	Navy
3070	7217	CWO - Boatswain	Navy
3071	7317	CWO - Boatswain	Navy
3072	7457	CWO - Intelligence	Navy
3073	HM	Hospital Corpsman	Navy
3074	BT	Boiler Technician	Navy
3075	LN	Legalman	Navy
3076	1130	URL - Special Warfare	Navy
3077	1133	URL - Special Warfare	Navy
3078	1135	URL - Special Warfare	Navy
3079	1180	URL - Special Warfare	Navy
3080	1183	URL - Special Warfare	Navy
3081	1185	URL - Special Warfare	Navy
3082	1190	URL - Special Operations	Navy
3083	1193	URL - Special Operations	Navy
3084	1195	URL - Special Operations	Navy
3085	1230	RL - Permanent Military Professor	Navy
3086	1233	RL - Permanent Military Professor	Navy
3087	1235	RL - Permanent Military Professor	Navy
3088	1300	URL - Aviation	Navy
3089	1303	URL - Aviation	Navy
3090	1305	URL - Aviation	Navy
3091	1320	URL - Naval Flight Officer	Navy
3092	1323	URL - Naval Flight Officer	Navy
3093	1325	URL - Naval Flight Officer	Navy
3094	1380	URL - Pilot	Navy
3095	1383	URL - Pilot	Navy
3096	1385	URL - Pilot	Navy
3097	1630	RL - Special Duty - Intelligence	Navy
3098	1633	RL - Special Duty - Intelligence	Navy
3099	1635	RL - Special Duty - Intelligence	Navy
3100	1830	RL - Special Duty Officer - Intelligence Officer	Navy
3101	1833	RL - Special Duty Officer - Intelligence Officer	Navy
3102	1835	RL - Special Duty Officer - Intelligence Officer	Navy
3103	1850	RL - IDC (Information Dominance Corps) Officer	Navy
3104	1853	RL - IDC (Information Dominance Corps) Officer	Navy
3105	1855	RL - IDC (Information Dominance Corps) Officer	Navy
3106	6110	LDO - Deck	Navy
3107	6113	LDO - Deck	Navy
3108	6115	LDO - Deck	Navy
3109	6260	LDO - Ordnance	Navy
3110	6263	LDO - Ordnance	Navy
3111	6265	LDO - Ordnance	Navy
3112	6300	LDO - Naval Aviator	Navy
3113	6303	LDO - Naval Aviator	Navy
3114	6305	LDO - Naval Aviator	Navy
3115	6310	LDO - Deck	Navy
3116	6313	LDO - Deck	Navy
3117	6315	LDO - Deck	Navy
3118	6470	LDO - Photography	Navy
3119	6473	LDO - Photography	Navy
3120	6475	LDO - Photography	Navy
3121	7111	CWO - Boatswain	Navy
3122	7112	CWO - Boatswain	Navy
3123	7113	CWO - Boatswain	Navy
3124	7115	CWO - Boatswain	Navy
3125	7118	CWO - Boatswain	Navy
3126	7171	CWO - Special Warfare Combatant-Craft	Navy
3127	7172	CWO - Special Warfare Combatant-Craft	Navy
3128	7173	CWO - Special Warfare Combatant-Craft	Navy
3129	7175	CWO - Special Warfare Combatant-Craft	Navy
3130	7178	CWO - Special Warfare Combatant-Craft	Navy
3131	7211	CWO - Boatswain	Navy
3132	7212	CWO - Boatswain	Navy
3133	7213	CWO - Boatswain	Navy
3134	7215	CWO - Boatswain	Navy
3135	7218	CWO - Boatswain	Navy
3136	7311	CWO - Boatswain	Navy
3137	7312	CWO - Boatswain	Navy
3138	7313	CWO - Boatswain	Navy
3139	7315	CWO - Boatswain	Navy
3140	7318	CWO - Boatswain	Navy
3141	7451	CWO - Intelligence	Navy
3142	7452	CWO - Intelligence	Navy
3143	7453	CWO - Intelligence	Navy
3144	7455	CWO - Intelligence	Navy
3145	7458	CWO - Intelligence	Navy
3146	AMCS	Aviation Structural Mechanic, Senior Chief	Navy
3147	DK	Disbursing Clerk	Navy
3148	JO	Journalist	Navy
3149	OM	Opticalman	Navy
3150	SW	Steelworker	Navy
3151	YN	Yeoman	Navy
3152	1167	URL - Surface Warfare	Navy
3153	1177	URL - Submarine Warfare	Navy
3154	1107	URL - General Unrestricted Line	Navy
3155	1147	URL - Special Operations (EOD/DIV/SAL/EOM)	Navy
3156	1217	RL - Nuclear Power School Instructor	Navy
3157	1377	URL - Naval Flight Officer	Navy
3158	1397	URL - Pilot	Navy
3159	1407	RL - Engineering Duty Officer (General)	Navy
3160	1447	RL - Engineering Duty Officer - Ship Engineering	Navy
3161	1467	RL - Engineering Duty Officer - Ship Engineering Trainee	Navy
3162	1547	RL - Aviation Duty Officer - Pilot	Navy
3163	1607	RL - Special Duty - Information Professional	Navy
3164	1617	RL - Special Duty - Officer (Information Warfare)	Navy
3165	1647	RL - Special Duty - Photograph	Navy
3166	1647	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3167	1667	RL - Special Duty - Merchant Marine	Navy
3168	1687	RL - Special Duty Officer (Reserve Recruiting)	Navy
3169	1697	RL - Special Duty - Merchant Marine	Navy
3170	1707	RL - Special Duty - Fleet Support	Navy
3171	1717	RL - Special Duty - Foreign Area Officer	Navy
3172	1727	RL - Special Duty - Foreign Area Officer	Navy
3173	1907	URL - Prospective Nurse Corps Officer	Navy
3174	1917	URL - Prospective Medical Corps Officer (Senior Medical Student)	Navy
3175	1927	URL - Prospective Dental Corps Officer	Navy
3176	1937	URL - Prospective Medical Service Corps Officer (Optometry)	Navy
3177	1947	URL - Prospective Chaplain Corps Officer	Navy
3178	2207	SC - Dental Corps	Navy
3179	2307	SC - Medical Service Corps	Navy
3180	2627	SC - Health Care Professional	Navy
3181	2637	SC - Health Care Professional	Navy
3182	2647	SC - Health Care Professional	Navy
3183	2707	SC - Active Duty Nurse Corps	Navy
3184	2907	SC - Nurse Corps - General	Navy
3185	3107	SC - Supply Corps Officer	Navy
3186	3167	SC - Direct Commissioned Supply Corps Trainee	Navy
3187	6217	LDO - Deck	Navy
3188	6227	LDO - Operations	Navy
3189	6257	LDO - Nuclear Power	Navy
3190	6287	LDO - Electronics	Navy
3191	6357	LDO - Hull	Navy
3192	6367	LDO - Ordnance	Navy
3193	6377	LDO - Electrician	Navy
3194	6397	LDO - Air Traffic Control	Navy
3195	6407	LDO - Nuclear Power	Navy
3196	6437	LDO - Bandmaster	Navy
3197	6437	CWO - Bandmaster	Navy
3198	6557	LDO - Judge Advocate General Corps	Navy
3199	7147	CWO - Surface Repair Technician	Navy
3200	7197	CWO - Communications Technician	Navy
3201	7237	CWO - Engineering Technician	Navy
3202	7247	CWO - Repair Technician	Navy
3203	7257	CWO - Nuclear Power Technician - Submarine	Navy
3204	7287	CWO - Electronics	Navy
3205	7367	CWO - Ordnance	Navy
3206	7397	CWO - Air Traffic Control Technician	Navy
3207	7407	CWO - Nuclear Power	Navy
3208	7437	CWO - Cyber Warrant Officer	Navy
3209	7477	CWO - Photographer	Navy
3210	7567	CWO - Technical Nurse	Navy
3211	1160	URL - Surface Warfare	Navy
3212	1163	URL - Surface Warfare	Navy
3213	1165	URL - Surface Warfare	Navy
3214	1170	URL - Submarine Warfare	Navy
3215	1173	URL - Submarine Warfare	Navy
3216	1175	URL - Submarine Warfare	Navy
3217	PM	Patternmaker	Navy
3218	1100	URL - General Unrestricted Line	Navy
3219	1103	URL - General Unrestricted Line	Navy
3220	1105	Mess Treasurer/Caterer	Navy
3221	1105	URL - Mess Treasurer/Caterer	Navy
3222	1140	URL - Special Operations (EOD/DIV/SAL/EOM)	Navy
3223	1143	URL - Special Operations (EOD/DIV/SAL/EOM)	Navy
3224	1145	URL - Special Operations (EOD/DIV/SAL/EOM)	Navy
3225	1210	RL - Nuclear Power School Instructor	Navy
3226	1213	RL - Nuclear Power School Instructor	Navy
3227	1215	RL - Nuclear Power School Instructor	Navy
3228	1370	URL - Naval Flight Officer	Navy
3229	1373	URL - Naval Flight Officer	Navy
3230	1375	URL - Naval Flight Officer	Navy
3231	1390	URL - Pilot	Navy
3232	1393	URL - Pilot	Navy
3233	1395	URL - Pilot	Navy
3234	1403	RL - Engineering Duty Officer (General)	Navy
3235	1405	RL - Engineering Duty Officer (General)	Navy
3236	1440	RL - Engineering Duty Officer - Ship Engineering	Navy
3237	1443	RL - Engineering Duty Officer - Ship Engineering	Navy
3238	1445	RL - Engineering Duty Officer - Ship Engineering	Navy
3239	1460	RL - Engineering Duty Officer - Ship Engineering Trainee	Navy
3240	1463	RL - Engineering Duty Officer - Ship Engineering Trainee	Navy
3241	1465	RL - Engineering Duty Officer - Ship Engineering Trainee	Navy
3242	1540	RL - Aviation Duty Officer - Pilot	Navy
3243	1543	RL - Aviation Duty Officer - Pilot	Navy
3244	1545	RL - Aviation Duty Officer - Pilot	Navy
3245	1600	RL - Special Duty - Information Professional	Navy
3246	1603	RL - Special Duty - Information Professional	Navy
3247	1605	RL - Special Duty - Information Professional	Navy
3248	1610	RL - Special Duty - Officer (Information Warfare)	Navy
3249	1613	RL - Special Duty - Officer (Information Warfare)	Navy
3250	1615	RL - Special Duty - Officer (Information Warfare)	Navy
3251	1640	RL - Special Duty - Photograph	Navy
3252	1641	RL - Special Duty - Photograph	Navy
3253	1641	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3254	1642	RL - Special Duty - Photograph	Navy
3255	1642	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3256	1643	RL - Special Duty - Photograph	Navy
3257	1643	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3258	1645	RL - Special Duty - Photograph	Navy
3259	1645	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3260	1648	RL - Special Duty - Photograph	Navy
3261	1648	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3262	1649	RL - Special Duty - Photograph	Navy
3263	1649	RL - Special Duty Officer (Information Warfare) Trainee	Navy
3264	1660	RL - Special Duty - Merchant Marine	Navy
3265	1663	RL - Special Duty - Merchant Marine	Navy
3266	1665	RL - Special Duty - Merchant Marine	Navy
3267	1680	RL - Special Duty Officer (Reserve Recruiting)	Navy
3268	1683	RL - Special Duty Officer (Reserve Recruiting)	Navy
3269	1685	RL - Special Duty Officer (Reserve Recruiting)	Navy
3270	1690	RL - Special Duty - Merchant Marine	Navy
3271	1693	RL - Special Duty - Merchant Marine	Navy
3272	1695	RL - Special Duty - Merchant Marine	Navy
3273	1700	RL - Special Duty - Fleet Support	Navy
3274	1703	RL - Special Duty - Fleet Support	Navy
3275	1705	RL - Special Duty - Fleet Support	Navy
3276	1710	RL - Special Duty - Foreign Area Officer	Navy
3277	1713	RL - Special Duty - Foreign Area Officer	Navy
3278	1715	RL - Special Duty - Foreign Area Officer	Navy
3279	1720	RL - Special Duty - Foreign Area Officer	Navy
3280	1723	RL - Special Duty - Foreign Area Officer	Navy
3281	1725	RL - Special Duty - Foreign Area Officer	Navy
3282	1900	URL - Prospective Nurse Corps Officer	Navy
3283	1903	URL - Prospective Nurse Corps Officer	Navy
3284	1905	URL - Prospective Nurse Corps Officer	Navy
3285	1910	URL - Prospective Medical Corps Officer (Senior Medical Student)	Navy
3286	1913	URL - Prospective Medical Corps Officer (Senior Medical Student)	Navy
3287	1915	URL - Prospective Medical Corps Officer (Senior Medical Student)	Navy
3288	1920	URL - Prospective Dental Corps Officer	Navy
3289	1923	URL - Prospective Dental Corps Officer	Navy
3290	1925	URL - Prospective Dental Corps Officer	Navy
3291	1930	URL - Prospective Medical Service Corps Officer (Optometry)	Navy
3292	1933	URL - Prospective Medical Service Corps Officer (Optometry)	Navy
3293	1935	URL - Prospective Medical Service Corps Officer (Optometry)	Navy
3294	1940	URL - Prospective Chaplain Corps Officer	Navy
3295	1943	URL - Prospective Chaplain Corps Officer	Navy
3296	1945	URL - Prospective Chaplain Corps Officer	Navy
3297	2200	SC - Dental Corps	Navy
3298	2203	SC - Dental Corps	Navy
3299	2205	SC - Dental Corps	Navy
3300	2300	SC - Medical Service Corps	Navy
3301	2303	SC - Medical Service Corps	Navy
3302	2305	SC - Medical Service Corps	Navy
3303	2620	SC - Health Care Professional	Navy
3304	2623	SC - Health Care Professional	Navy
3305	2625	SC - Health Care Professional	Navy
3306	2630	SC - Health Care Professional	Navy
3307	2633	SC - Health Care Professional	Navy
3308	2635	SC - Health Care Professional	Navy
3309	2640	SC - Health Care Professional	Navy
3310	2643	SC - Health Care Professional	Navy
3311	2645	SC - Health Care Professional	Navy
3312	2700	SC - Active Duty Nurse Corps	Navy
3313	2703	SC - Active Duty Nurse Corps	Navy
3314	2705	SC - Active Duty Nurse Corps	Navy
3315	2900	SC - Nurse Corps - General	Navy
3316	2903	SC - Nurse Corps - General	Navy
3317	2905	SC - Nurse Corps - General	Navy
3318	3100	SC - Supply Corps Officer	Navy
3319	3103	SC - Supply Corps Officer	Navy
3320	3105	SC - Supply Corps Officer	Navy
3321	3160	SC - Direct Commissioned Supply Corps Trainee	Navy
3322	3163	SC - Direct Commissioned Supply Corps Trainee	Navy
3323	3165	SC - Direct Commissioned Supply Corps Trainee	Navy
3324	6210	LDO - Deck	Navy
3325	6213	LDO - Deck	Navy
3326	6215	LDO - Deck	Navy
3327	6220	LDO - Operations	Navy
3328	6223	LDO - Operations	Navy
3329	6225	LDO - Operations	Navy
3330	6250	LDO - Nuclear Power	Navy
3331	6253	LDO - Nuclear Power	Navy
3332	6255	LDO - Nuclear Power	Navy
3333	6280	LDO - Electronics	Navy
3334	6283	LDO - Electronics	Navy
3335	6285	LDO - Electronics	Navy
3336	6350	LDO - Hull	Navy
3337	6353	LDO - Hull	Navy
3338	6355	LDO - Hull	Navy
3339	6360	LDO - Ordnance	Navy
3340	6363	LDO - Ordnance	Navy
3341	6365	LDO - Ordnance	Navy
3342	6370	LDO - Electrician	Navy
3343	6373	LDO - Electrician	Navy
3344	6375	LDO - Electrician	Navy
3345	6390	LDO - Air Traffic Control	Navy
3346	6393	LDO - Air Traffic Control	Navy
3347	6395	LDO - Air Traffic Control	Navy
3348	6400	LDO - Nuclear Power	Navy
3349	6403	LDO - Nuclear Power	Navy
3350	6405	LDO - Nuclear Power	Navy
3351	6430	LDO - Bandmaster	Navy
3352	6431	CWO - Bandmaster	Navy
3353	6432	CWO - Bandmaster	Navy
3354	6433	LDO - Bandmaster	Navy
3355	6433	CWO - Bandmaster	Navy
3356	6435	LDO - Bandmaster	Navy
3357	6435	CWO - Bandmaster	Navy
3358	6438	CWO - Bandmaster	Navy
3359	6550	LDO - Judge Advocate General Corps	Navy
3360	6553	LDO - Judge Advocate General Corps	Navy
3361	6555	LDO - Judge Advocate General Corps	Navy
3362	7141	CWO - Surface Repair Technician	Navy
3363	7142	CWO - Surface Repair Technician	Navy
3364	7143	CWO - Surface Repair Technician	Navy
3365	7145	CWO - Surface Repair Technician	Navy
3366	7148	CWO - Surface Repair Technician	Navy
3367	7191	CWO - Communications Technician	Navy
3368	7192	CWO - Communications Technician	Navy
3369	7193	CWO - Communications Technician	Navy
3370	7195	CWO - Communications Technician	Navy
3371	7198	CWO - Communications Technician	Navy
3372	7231	CWO - Engineering Technician	Navy
3373	7232	CWO - Engineering Technician	Navy
3374	7233	CWO - Engineering Technician	Navy
3375	7235	CWO - Engineering Technician	Navy
3376	7238	CWO - Engineering Technician	Navy
3377	7241	CWO - Repair Technician	Navy
3378	7242	CWO - Repair Technician	Navy
3379	7243	CWO - Repair Technician	Navy
3380	7245	CWO - Repair Technician	Navy
3381	7248	CWO - Repair Technician	Navy
3382	7251	CWO - Nuclear Power Technician - Submarine	Navy
3383	7252	CWO - Nuclear Power Technician - Submarine	Navy
3384	7253	CWO - Nuclear Power Technician - Submarine	Navy
3385	7255	CWO - Nuclear Power Technician - Submarine	Navy
3386	7258	CWO - Nuclear Power Technician - Submarine	Navy
3387	7281	CWO - Electronics	Navy
3388	7282	CWO - Electronics	Navy
3389	7283	CWO - Electronics	Navy
3390	7285	CWO - Electronics	Navy
3391	7288	CWO - Electronics	Navy
3392	7361	CWO - Ordnance	Navy
3393	7362	CWO - Ordnance	Navy
3394	7363	CWO - Ordnance	Navy
3395	7365	CWO - Ordnance	Navy
3396	7368	CWO - Ordnance	Navy
3397	7391	CWO - Air Traffic Control Technician	Navy
3398	7392	CWO - Air Traffic Control Technician	Navy
3399	7393	CWO - Air Traffic Control Technician	Navy
3400	7395	CWO - Air Traffic Control Technician	Navy
3401	7398	CWO - Air Traffic Control Technician	Navy
3402	7401	CWO - Nuclear Power	Navy
3403	7402	CWO - Nuclear Power	Navy
3404	7403	CWO - Nuclear Power	Navy
3405	7405	CWO - Nuclear Power	Navy
3406	7408	CWO - Nuclear Power	Navy
3407	7431	CWO - Cyber Warrant Officer	Navy
3408	7432	CWO - Cyber Warrant Officer	Navy
3409	7433	CWO - Cyber Warrant Officer	Navy
3410	7435	CWO - Cyber Warrant Officer	Navy
3411	7438	CWO - Cyber Warrant Officer	Navy
3412	7471	CWO - Photographer	Navy
3413	7472	CWO - Photographer	Navy
3414	7473	CWO - Photographer	Navy
3415	7475	CWO - Photographer	Navy
3416	7478	CWO - Photographer	Navy
3417	7561	CWO - Technical Nurse	Navy
3418	7562	CWO - Technical Nurse	Navy
3419	7563	CWO - Technical Nurse	Navy
3420	7565	CWO - Technical Nurse	Navy
3421	7568	CWO - Technical Nurse	Navy
3422	AA	Airman Apprentice	Navy
3423	AK	Aviation Storekeeper	Navy
3424	AM	Aviation Structural Mechanic	Navy
3425	AME	Aviation Structural Mechanic, Safety Equipment	Navy
3426	AN	Airman	Navy
3427	AR	Airman Recruit	Navy
3428	ASM	Aviation Structural (Mechanic)	Navy
3429	EQ	Equipmentman	Navy
3430	MT	Missile Technician	Navy
3431	MU	Musician	Navy
3432	PC	Postal Clerk	Navy
3433	PR	Aircrew Survival Equipmentman	Navy
\.


--
-- Data for Name: mos_skills; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.mos_skills (id, skill_id, mos_id) FROM stdin;
1	9	1
2	9	2
3	9	3
4	9	4
5	1	5
6	54	5
7	9	5
8	1	6
9	54	6
10	9	6
11	1	7
12	54	7
13	9	7
14	1	8
15	54	8
16	9	8
17	1	9
18	54	9
19	9	9
20	16	10
21	29	10
22	55	10
23	27	10
24	16	11
25	29	11
26	55	11
27	27	11
28	16	12
29	29	12
30	55	12
31	27	12
32	16	13
33	29	13
34	55	13
35	27	13
36	16	14
37	29	14
38	55	14
39	27	14
40	16	15
41	29	15
42	55	15
43	27	15
44	16	16
45	29	16
46	55	16
47	27	16
48	16	17
49	29	17
50	55	17
51	27	17
52	16	18
53	29	18
54	55	18
55	27	18
56	16	19
57	29	19
58	55	19
59	27	19
60	16	20
61	29	20
62	55	20
63	27	20
64	16	21
65	29	21
66	55	21
67	27	21
68	16	22
69	29	22
70	55	22
71	27	22
72	1	23
73	55	23
74	54	23
75	1	24
76	55	24
77	54	24
78	1	25
79	55	25
80	54	25
81	1	26
82	55	26
83	54	26
84	1	27
85	55	27
86	54	27
87	1	28
88	55	28
89	54	28
90	1	29
91	55	29
92	54	29
93	1	30
94	55	30
95	54	30
96	1	31
97	55	31
98	54	31
99	1	32
100	55	32
101	54	32
102	1	33
103	55	33
104	54	33
105	1	34
106	55	34
107	54	34
108	1	35
109	55	35
110	54	35
111	1	36
112	55	36
113	54	36
114	1	37
115	55	37
116	54	37
117	1	38
118	55	38
119	54	38
120	1	39
121	55	39
122	54	39
123	1	40
124	55	40
125	54	40
126	1	41
127	55	41
128	54	41
129	1	42
130	55	42
131	54	42
132	1	43
133	55	43
134	54	43
135	1	44
136	55	44
137	54	44
138	1	45
139	55	45
140	54	45
141	1	46
142	55	46
143	54	46
144	1	47
145	55	47
146	54	47
147	1	48
148	55	48
149	54	48
150	1	49
151	55	49
152	54	49
153	1	50
154	55	50
155	54	50
156	1	51
157	55	51
158	54	51
159	1	52
160	55	52
161	54	52
162	1	53
163	55	53
164	54	53
165	1	54
166	55	54
167	54	54
168	1	55
169	55	55
170	54	55
171	1	56
172	55	56
173	54	56
174	1	57
175	55	57
176	54	57
177	1	58
178	55	58
179	54	58
180	1	59
181	55	59
182	54	59
183	1	60
184	55	60
185	54	60
186	1	61
187	55	61
188	54	61
189	1	62
190	55	62
191	54	62
192	1	63
193	55	63
194	54	63
195	1	64
196	55	64
197	54	64
198	1	65
199	55	65
200	54	65
201	1	66
202	55	66
203	54	66
204	1	67
205	55	67
206	54	67
207	1	68
208	55	68
209	54	68
210	1	69
211	55	69
212	54	69
213	1	70
214	55	70
215	54	70
216	1	71
217	55	71
218	1	72
219	55	72
220	1	73
221	55	73
222	1	74
223	55	74
224	1	75
225	55	75
226	54	75
227	1	76
228	55	76
229	54	76
230	1	77
231	55	77
232	54	77
233	1	78
234	55	78
235	54	78
236	1	79
237	55	79
238	54	79
239	1	80
240	55	80
241	54	80
242	1	81
243	55	81
244	54	81
245	1	82
246	55	82
247	54	82
248	1	83
249	55	83
250	54	83
251	1	84
252	55	84
253	54	84
254	1	85
255	55	85
256	54	85
257	1	86
258	55	86
259	54	86
260	1	87
261	55	87
262	54	87
263	55	88
264	54	88
265	55	89
266	54	89
267	55	90
268	54	90
269	55	91
270	54	91
271	55	92
272	54	92
273	55	93
274	54	93
275	55	94
276	54	94
277	55	95
278	54	95
279	55	96
280	54	96
281	55	97
282	54	97
283	55	98
284	54	98
285	55	99
286	54	99
287	55	100
288	54	100
289	55	101
290	54	101
291	55	102
292	54	102
293	55	103
294	54	103
295	55	104
296	54	104
297	55	105
298	54	105
299	55	106
300	54	106
301	55	107
302	54	107
303	55	108
304	54	108
305	55	109
306	54	109
307	55	110
308	54	110
309	55	111
310	54	111
311	55	112
312	54	112
313	55	113
314	54	113
315	55	114
316	54	114
317	55	115
318	54	115
319	55	116
320	54	116
321	55	117
322	54	117
323	55	118
324	54	118
325	55	119
326	54	119
327	55	120
328	27	120
329	55	121
330	27	121
331	55	122
332	27	122
333	55	123
334	27	123
335	1	124
336	29	124
337	30	124
338	1	125
339	29	125
340	30	125
341	1	126
342	29	126
343	30	126
344	1	127
345	29	127
346	30	127
347	2	128
348	55	128
349	2	129
350	55	129
351	2	130
352	55	130
353	2	131
354	55	131
355	2	132
356	55	132
357	1	133
358	55	133
359	54	133
360	53	133
361	1	134
362	55	134
363	54	134
364	53	134
365	1	135
366	55	135
367	54	135
368	53	135
369	1	136
370	55	136
371	54	136
372	53	136
373	1	137
374	55	137
375	54	137
376	53	137
377	27	138
378	26	138
379	54	138
380	55	139
381	51	139
382	54	139
383	55	140
384	51	140
385	54	140
386	55	141
387	51	141
388	54	141
389	55	142
390	51	142
391	54	142
392	55	143
393	51	143
394	54	143
395	55	144
396	54	144
397	55	145
398	54	145
399	55	146
400	54	146
401	55	147
402	54	147
403	55	148
404	54	148
405	55	149
406	54	149
407	55	150
408	54	150
409	55	151
410	54	151
411	55	152
412	54	152
413	55	153
414	54	153
415	55	154
416	54	154
417	55	155
418	54	155
419	55	156
420	54	156
421	54	157
422	56	157
423	54	158
424	56	158
425	54	159
426	56	159
427	54	160
428	56	160
429	54	161
430	56	161
431	54	162
432	56	162
433	54	163
434	56	163
435	54	164
436	56	164
437	54	165
438	56	165
439	54	166
440	56	166
441	54	167
442	56	167
443	54	168
444	56	168
445	54	169
446	56	169
447	54	170
448	56	170
449	55	171
450	54	171
451	56	171
452	55	172
453	54	172
454	56	172
455	55	173
456	54	173
457	56	173
458	55	174
459	54	174
460	56	174
461	55	175
462	54	175
463	56	175
464	55	176
465	54	176
466	56	176
467	55	177
468	54	177
469	56	177
470	55	178
471	54	178
472	56	178
473	55	179
474	54	179
475	56	179
476	55	180
477	54	180
478	56	180
479	55	181
480	54	181
481	56	181
482	55	182
483	54	182
484	56	182
485	55	183
486	54	183
487	56	183
488	54	184
489	56	184
490	54	185
491	56	185
492	54	186
493	56	186
494	54	187
495	56	187
496	54	188
497	56	188
498	1	189
499	55	189
500	1	190
501	55	190
502	1	191
503	55	191
504	1	192
505	55	192
506	1	193
507	55	193
508	42	193
509	1	194
510	55	194
511	42	194
512	49	195
513	42	195
514	49	196
515	42	196
516	49	197
517	42	197
518	49	198
519	42	198
520	49	199
521	42	199
522	1	200
523	55	200
524	1	201
525	55	201
526	1	202
527	55	202
528	1	203
529	55	203
530	1	204
531	55	204
532	1	205
533	55	205
534	1	206
535	55	206
536	1	207
537	55	207
538	1	208
539	55	208
540	1	209
541	55	209
542	1	210
543	55	210
544	1	211
545	55	211
546	1	212
547	55	212
548	1	213
549	55	213
550	1	214
551	55	214
552	1	215
553	55	215
554	1	216
555	55	216
556	1	217
557	55	217
558	1	218
559	55	218
560	1	219
561	55	219
562	1	220
563	55	220
564	1	221
565	55	221
566	1	222
567	55	222
568	1	223
569	55	223
570	1	224
571	55	224
572	1	225
573	55	225
574	1	226
575	55	226
576	1	227
577	55	227
578	1	228
579	55	228
580	1	229
581	55	229
582	1	230
583	55	230
584	1	231
585	55	231
586	1	232
587	55	232
588	1	233
589	55	233
590	1	234
591	55	234
592	1	235
593	55	235
594	1	236
595	55	236
596	1	237
597	55	237
598	1	238
599	55	238
600	1	239
601	55	239
602	1	240
603	55	240
604	1	241
605	55	241
606	1	242
607	55	242
608	1	243
609	55	243
610	1	244
611	55	244
612	1	245
613	55	245
614	1	246
615	55	246
616	1	247
617	55	247
618	1	248
619	55	248
620	55	249
621	55	250
622	55	251
623	55	252
624	54	253
625	1	254
626	54	254
627	1	255
628	54	255
629	1	256
630	54	256
631	1	257
632	54	257
633	1	258
634	54	258
635	1	259
636	54	259
637	1	260
638	54	260
639	1	261
640	54	261
641	1	262
642	54	262
643	1	263
644	54	263
645	1	264
646	54	264
647	1	265
648	54	265
649	1	266
650	54	266
651	1	267
652	54	267
653	1	268
654	54	268
655	1	269
656	54	269
657	1	270
658	54	270
659	1	271
660	54	271
661	1	272
662	54	272
663	1	273
664	54	273
665	1	274
666	54	274
667	1	275
668	54	275
669	1	276
670	54	276
671	1	277
672	54	277
673	1	278
674	54	278
675	1	279
676	54	279
677	1	280
678	54	280
679	1	281
680	54	281
681	1	282
682	54	282
683	55	283
684	30	283
685	54	283
686	20	284
687	56	284
688	20	285
689	56	285
690	20	286
691	56	286
692	20	287
693	56	287
694	20	288
695	56	288
696	20	289
697	56	289
698	20	290
699	56	290
700	20	291
701	56	291
702	20	292
703	56	292
704	30	293
705	53	293
706	30	294
707	53	294
708	30	295
709	53	295
710	30	296
711	53	296
712	30	297
713	53	297
714	30	298
715	53	298
716	30	299
717	53	299
718	30	300
719	53	300
720	30	301
721	53	301
722	53	302
723	53	303
724	53	304
725	53	305
726	53	306
727	53	307
728	53	308
729	53	309
730	53	310
731	53	311
732	53	312
733	53	313
734	53	314
735	53	315
736	53	316
737	53	317
738	53	318
739	53	319
740	53	320
741	53	321
742	53	322
743	53	323
744	53	324
745	53	325
746	53	326
747	53	327
748	53	328
749	53	329
750	53	330
751	53	331
752	53	332
753	53	333
754	53	334
755	53	335
756	53	336
757	53	337
758	53	338
759	53	339
760	53	340
761	53	341
762	53	342
763	53	343
764	53	344
765	53	345
766	53	346
767	53	347
768	53	348
769	53	349
770	30	350
771	53	350
772	30	351
773	53	351
774	30	352
775	53	352
776	30	353
777	53	353
778	30	354
779	53	354
780	30	355
781	53	355
782	30	356
783	53	356
784	30	357
785	53	357
786	30	358
787	53	358
788	55	359
789	51	359
790	53	359
791	55	360
792	51	360
793	53	360
794	55	361
795	51	361
796	53	361
797	55	362
798	51	362
799	53	362
800	55	363
801	51	363
802	53	363
803	55	364
804	51	364
805	53	364
806	55	365
807	51	365
808	53	365
809	55	366
810	51	366
811	53	366
812	55	367
813	51	367
814	53	367
815	55	368
816	51	368
817	53	368
818	55	369
819	51	369
820	53	369
821	55	370
822	51	370
823	53	370
824	55	371
825	51	371
826	53	371
827	55	372
828	51	372
829	53	372
830	57	373
831	54	373
832	9	373
833	57	374
834	54	374
835	9	374
836	57	375
837	54	375
838	9	375
839	57	376
840	54	376
841	9	376
842	57	377
843	54	377
844	9	377
845	42	378
846	9	378
847	7	378
848	42	379
849	9	379
850	7	379
851	42	380
852	9	380
853	7	380
854	42	381
855	9	381
856	7	381
857	42	382
858	9	382
859	7	382
860	1	383
861	1	384
862	1	385
863	1	386
864	29	387
865	29	388
866	1	389
867	27	389
868	54	389
869	1	390
870	27	390
871	54	390
872	1	391
873	27	391
874	54	391
875	1	392
876	27	392
877	54	392
878	1	393
879	27	393
880	54	393
881	1	394
882	57	394
883	54	394
884	1	395
885	57	395
886	54	395
887	1	396
888	57	396
889	54	396
890	1	397
891	57	397
892	54	397
893	1	398
894	57	398
895	54	398
896	1	399
897	57	399
898	54	399
899	1	400
900	57	400
901	54	400
902	1	401
903	57	401
904	54	401
905	1	402
906	57	402
907	54	402
908	1	403
909	57	403
910	54	403
911	1	404
912	57	404
913	54	404
914	1	405
915	57	405
916	54	405
917	1	406
918	57	406
919	54	406
920	1	407
921	57	407
922	54	407
923	1	408
924	57	408
925	54	408
926	1	409
927	57	409
928	54	409
929	1	410
930	57	410
931	54	410
932	1	411
933	57	411
934	54	411
935	1	412
936	57	412
937	54	412
938	1	413
939	57	413
940	54	413
941	1	414
942	57	414
943	54	414
944	27	415
945	26	415
946	54	415
947	55	416
948	54	416
949	55	417
950	54	417
951	55	418
952	54	418
953	55	419
954	54	419
955	55	420
956	54	420
957	55	421
958	54	421
959	55	422
960	54	422
961	55	423
962	54	423
963	55	424
964	54	424
965	55	425
966	54	425
967	55	426
968	54	426
969	55	427
970	54	427
971	55	428
972	54	428
973	55	429
974	54	429
975	55	430
976	54	430
977	55	431
978	54	431
979	55	432
980	54	432
981	55	433
982	54	433
983	55	434
984	54	434
985	55	435
986	54	435
987	55	436
988	54	436
989	55	437
990	54	437
991	55	438
992	54	438
993	55	439
994	54	439
995	55	440
996	54	440
997	55	441
998	54	441
999	55	442
1000	54	442
1001	55	443
1002	54	443
1003	55	444
1004	54	444
1005	55	445
1006	54	445
1007	55	446
1008	54	446
1009	55	447
1010	54	447
1011	55	448
1012	54	448
1013	55	449
1014	54	449
1015	55	450
1016	54	450
1017	54	800
1018	55	451
1019	54	451
1020	55	452
1021	54	452
1022	55	453
1023	54	453
1024	55	454
1025	54	454
1026	55	455
1027	54	455
1028	55	456
1029	54	456
1030	54	457
1031	54	458
1032	54	459
1033	54	460
1034	55	461
1035	54	461
1036	56	461
1037	55	462
1038	54	462
1039	56	462
1040	55	463
1041	54	463
1042	56	463
1043	55	464
1044	54	464
1045	56	464
1046	55	465
1047	54	465
1048	56	465
1049	54	466
1050	56	466
1051	54	467
1052	56	467
1053	54	468
1054	56	468
1055	54	469
1056	56	469
1057	54	470
1058	56	470
1059	54	471
1060	56	471
1061	54	472
1062	56	472
1063	54	473
1064	56	473
1065	54	474
1066	56	474
1067	54	475
1068	56	475
1069	1	476
1070	30	476
1071	57	476
1072	1	477
1073	30	477
1074	57	477
1075	1	478
1076	30	478
1077	57	478
1078	1	479
1079	30	479
1080	57	479
1081	1	480
1082	30	480
1083	57	480
1084	1	481
1085	1	482
1086	1	483
1087	1	484
1088	1	485
1089	1	486
1090	55	486
1091	1	487
1092	55	487
1093	1	488
1094	55	488
1095	1	489
1096	55	489
1097	55	490
1098	55	491
1099	55	492
1100	55	493
1101	55	494
1102	55	495
1103	55	496
1104	55	497
1105	55	498
1106	55	499
1107	55	500
1108	55	501
1109	55	502
1110	55	503
1111	55	504
1112	1	505
1113	54	505
1114	1	506
1115	54	506
1116	1	507
1117	54	507
1118	1	508
1119	54	508
1120	1	509
1121	54	509
1122	1	510
1123	54	510
1124	1	511
1125	54	511
1126	1	512
1127	54	512
1128	1	513
1129	54	513
1130	1	514
1131	54	514
1132	1	515
1133	54	515
1134	1	516
1135	54	516
1136	1	517
1137	54	517
1138	1	518
1139	54	518
1140	1	519
1141	54	519
1142	1	520
1143	54	520
1144	1	521
1145	54	521
1146	1	522
1147	54	522
1148	1	523
1149	54	523
1150	1	524
1151	54	524
1152	1	525
1153	54	525
1154	1	526
1155	54	526
1156	1	527
1157	54	527
1158	1	528
1159	54	528
1160	1	529
1161	54	529
1162	1	530
1163	54	530
1164	1	531
1165	54	531
1166	1	532
1167	54	532
1168	1	533
1169	54	533
1170	1	534
1171	54	534
1172	1	535
1173	54	535
1174	1	536
1175	54	536
1176	1	537
1177	54	537
1178	1	538
1179	54	538
1180	1	539
1181	54	539
1182	1	540
1183	54	540
1184	1	541
1185	54	541
1186	1	542
1187	54	542
1188	55	553
1189	54	553
1190	55	554
1191	54	554
1192	55	555
1193	54	555
1194	55	556
1195	54	556
1196	55	557
1197	54	557
1198	55	558
1199	54	558
1200	55	559
1201	54	559
1202	55	560
1203	54	560
1204	55	561
1205	54	561
1206	55	562
1207	54	562
1208	29	568
1209	30	568
1210	54	568
1211	18	569
1212	55	569
1213	54	569
1214	18	570
1215	55	570
1216	54	570
1217	18	571
1218	55	571
1219	54	571
1220	18	572
1221	55	572
1222	54	572
1223	55	573
1224	54	573
1225	53	573
1226	55	574
1227	54	574
1228	53	574
1229	55	575
1230	54	575
1231	53	575
1232	55	576
1233	54	576
1234	53	576
1235	55	577
1236	54	577
1237	53	577
1238	55	578
1239	54	578
1240	55	579
1241	54	579
1242	55	580
1243	54	580
1244	55	581
1245	54	581
1246	55	582
1247	54	582
1248	54	583
1249	56	583
1250	54	584
1251	56	584
1252	54	585
1253	56	585
1254	54	586
1255	56	586
1256	1	587
1257	1	588
1258	1	589
1259	1	590
1260	1	591
1261	1	592
1262	42	592
1263	1	593
1264	42	593
1265	1	594
1266	42	594
1267	1	595
1268	42	595
1269	1	596
1270	42	596
1271	1	597
1272	42	597
1273	1	598
1274	42	598
1275	1	599
1276	42	599
1277	1	615
1278	53	615
1279	1	616
1280	53	616
1281	1	617
1282	53	617
1283	1	618
1284	53	618
1285	1	619
1286	53	619
1287	51	629
1288	53	629
1289	54	635
1290	54	636
1291	54	637
1292	54	638
1293	54	639
1294	54	640
1295	54	641
1296	54	642
1297	54	643
1298	51	644
1299	54	644
1300	51	645
1301	54	645
1302	51	646
1303	54	646
1304	51	647
1305	54	647
1306	51	648
1307	54	648
1308	51	649
1309	54	649
1310	51	650
1311	54	650
1312	51	651
1313	54	651
1314	51	652
1315	54	652
1316	54	653
1317	2	654
1318	53	654
1319	55	655
1320	55	656
1321	55	657
1322	55	658
1323	55	659
1324	1	660
1325	55	660
1326	1	661
1327	55	661
1328	54	801
1329	1	662
1330	55	662
1331	1	663
1332	55	663
1333	1	664
1334	55	664
1335	1	665
1336	55	665
1337	1	666
1338	55	666
1339	1	667
1340	55	667
1341	1	668
1342	55	668
1343	1	669
1344	55	669
1345	1	670
1346	55	670
1347	1	671
1348	55	671
1349	1	672
1350	55	672
1351	1	673
1352	55	673
1353	1	674
1354	55	674
1355	1	675
1356	55	675
1357	1	676
1358	55	676
1359	1	677
1360	55	677
1361	1	678
1362	55	678
1363	1	679
1364	55	679
1365	1	680
1366	55	680
1367	1	681
1368	55	681
1369	1	682
1370	55	682
1371	1	683
1372	55	683
1373	1	684
1374	55	684
1375	1	685
1376	55	685
1377	1	686
1378	55	686
1379	1	687
1380	55	687
1381	1	688
1382	55	688
1383	1	689
1384	55	689
1385	1	690
1386	55	690
1387	1	691
1388	55	691
1389	1	692
1390	55	692
1391	1	693
1392	55	693
1393	1	694
1394	55	694
1395	1	695
1396	55	695
1397	1	696
1398	55	696
1399	1	697
1400	55	697
1401	1	698
1402	55	698
1403	1	699
1404	55	699
1405	1	700
1406	55	700
1407	1	701
1408	55	701
1409	1	702
1410	55	702
1411	1	703
1412	55	703
1413	1	704
1414	55	704
1415	1	705
1416	55	705
1417	1	706
1418	55	706
1419	1	707
1420	55	707
1421	1	708
1422	55	708
1423	1	709
1424	55	709
1425	1	710
1426	55	710
1427	1	711
1428	55	711
1429	1	712
1430	55	712
1431	1	713
1432	55	713
1433	1	714
1434	55	714
1435	1	715
1436	55	715
1437	1	716
1438	55	716
1439	1	717
1440	55	717
1441	1	718
1442	55	718
1443	1	719
1444	55	719
1445	1	720
1446	55	720
1447	1	721
1448	55	721
1449	1	722
1450	55	722
1451	1	723
1452	55	723
1453	1	724
1454	55	724
1455	1	725
1456	55	725
1457	55	726
1458	57	726
1459	55	727
1460	55	728
1461	57	728
1462	55	729
1463	55	730
1464	57	730
1465	55	731
1466	55	732
1467	57	732
1468	55	733
1469	55	734
1470	57	734
1471	55	735
1472	55	736
1473	57	736
1474	55	737
1475	55	738
1476	57	738
1477	55	739
1478	55	740
1479	57	740
1480	55	741
1481	55	742
1482	57	742
1483	55	743
1484	55	744
1485	55	745
1486	55	746
1487	55	747
1488	55	748
1489	55	749
1490	54	749
1491	55	750
1492	54	750
1493	55	751
1494	54	751
1495	55	752
1496	54	752
1497	55	753
1498	54	753
1499	55	754
1500	55	755
1501	55	756
1502	55	757
1503	55	758
1504	55	759
1505	55	760
1506	55	761
1507	55	762
1508	55	763
1509	54	763
1510	55	764
1511	54	764
1512	55	765
1513	54	765
1514	55	766
1515	54	766
1516	55	767
1517	54	767
1518	55	768
1519	54	768
1520	55	769
1521	54	769
1522	55	770
1523	54	770
1524	55	771
1525	54	771
1526	55	772
1527	54	772
1528	55	773
1529	54	773
1530	55	774
1531	54	774
1532	55	775
1533	54	775
1534	54	776
1535	54	777
1536	54	778
1537	54	779
1538	54	780
1539	55	781
1540	56	781
1541	55	782
1542	56	782
1543	55	783
1544	56	783
1545	55	784
1546	56	784
1547	55	785
1548	56	785
1549	54	786
1550	54	787
1551	54	788
1552	54	789
1553	54	790
1554	54	791
1555	54	792
1556	54	793
1557	20	794
1558	57	794
1559	54	795
1560	54	796
1561	54	797
1562	54	798
1563	54	799
1564	54	802
1565	54	803
1566	54	804
1567	56	805
1568	56	806
1569	56	807
1570	56	808
1571	56	809
1572	56	810
1573	56	811
1574	56	812
1575	56	813
1576	54	814
1577	56	814
1578	54	815
1579	56	815
1580	54	816
1581	56	816
1582	54	817
1583	56	817
1584	54	818
1585	56	818
1586	54	819
1587	56	819
1588	54	820
1589	56	820
1590	54	821
1591	56	821
1592	54	822
1593	56	822
1594	54	823
1595	56	823
1596	54	824
1597	56	824
1598	54	825
1599	56	825
1600	54	826
1601	56	826
1602	54	827
1603	56	827
1604	54	828
1605	56	828
1606	54	829
1607	56	829
1608	54	830
1609	56	830
1610	54	831
1611	56	831
1612	54	832
1613	56	832
1614	54	833
1615	56	833
1616	54	834
1617	56	834
1618	54	835
1619	56	835
1620	54	836
1621	56	836
1622	54	837
1623	56	837
1624	54	838
1625	56	838
1626	54	839
1627	56	839
1628	54	840
1629	56	840
1630	54	841
1631	56	841
1632	54	842
1633	56	842
1634	54	843
1635	56	843
1636	54	844
1637	56	844
1638	54	845
1639	56	845
1640	54	846
1641	56	846
1642	54	847
1643	56	847
1644	54	848
1645	56	848
1646	54	849
1647	56	849
1648	54	850
1649	56	850
1650	54	851
1651	56	851
1652	54	852
1653	56	852
1654	54	853
1655	56	853
1656	54	854
1657	56	854
1658	54	855
1659	56	855
1660	54	856
1661	56	856
1662	54	857
1663	56	857
1664	54	858
1665	56	858
1666	54	859
1667	56	859
1668	54	860
1669	56	860
1670	54	861
1671	56	861
1672	54	862
1673	56	862
1674	54	863
1675	56	863
1676	54	864
1677	56	864
1678	54	865
1679	56	865
1680	54	866
1681	56	866
1682	54	867
1683	56	867
1684	54	868
1685	56	868
1686	54	869
1687	56	869
1688	54	870
1689	56	870
1690	54	871
1691	56	871
1692	54	872
1693	56	872
1694	54	873
1695	56	873
1696	54	874
1697	56	874
1698	54	875
1699	56	875
1700	54	876
1701	56	876
1702	54	877
1703	56	877
1704	54	878
1705	56	878
1706	54	879
1707	56	879
1708	54	880
1709	56	880
1710	54	881
1711	56	881
1712	54	882
1713	56	882
1714	54	883
1715	56	883
1716	54	884
1717	56	884
1718	54	885
1719	56	885
1720	54	886
1721	56	886
1722	54	887
1723	56	887
1724	54	888
1725	56	888
1726	54	889
1727	56	889
1728	54	890
1729	56	890
1730	54	891
1731	56	891
1732	54	892
1733	56	892
1734	54	893
1735	56	893
1736	54	894
1737	56	894
1738	54	895
1739	56	895
1740	54	896
1741	56	896
1742	54	897
1743	56	897
1744	54	898
1745	56	898
1746	54	899
1747	56	899
1748	54	900
1749	56	900
1750	54	901
1751	56	901
1752	54	902
1753	56	902
1754	54	903
1755	56	903
1756	55	909
1757	55	910
1758	55	911
1759	55	912
1760	55	913
1761	55	914
1762	55	915
1763	55	916
1764	55	917
1765	55	918
1766	2	928
1767	2	929
1768	2	930
1769	2	931
1770	2	932
1771	51	969
1772	51	970
1773	51	971
1774	51	972
1775	54	973
1776	54	974
1777	54	975
1778	54	976
1779	54	977
1780	54	978
1781	54	979
1782	54	980
1783	54	981
1784	54	982
1785	54	983
1786	54	984
1787	54	985
1788	54	986
1789	56	987
1790	56	988
1791	56	989
1792	56	990
1793	56	991
1794	56	992
1795	56	993
1796	56	994
1797	56	995
1798	56	996
1799	54	997
1800	54	998
1801	54	999
1802	54	1000
1803	54	1001
1804	54	1002
1805	54	1003
1806	54	1004
1807	54	1005
1808	54	1006
1809	54	1007
1810	54	1008
1811	54	1009
1812	54	1010
1813	54	1011
1814	54	1012
1815	54	1013
1816	54	1014
1817	54	1015
1818	54	1016
1819	54	1017
1820	54	1018
1821	54	1019
1822	54	1020
1823	54	1021
1824	30	1022
1825	30	1023
1826	30	1024
1827	30	1025
1828	30	1026
1829	57	1027
1830	55	1028
1831	55	1029
1832	55	1030
1833	55	1031
1834	55	1032
1835	55	1033
1836	55	1034
1837	55	1035
1838	55	1036
1839	55	1037
1840	55	1038
1841	55	1043
1842	55	1044
1843	55	1045
1844	55	1046
1845	55	1047
1846	55	1048
1847	55	1049
1848	55	1050
1849	55	1051
1850	55	1052
1851	55	1062
1852	55	1063
1853	55	1064
1854	55	1065
1855	55	1066
1856	21	1073
1857	21	1074
1858	21	1075
1859	21	1076
1860	21	1077
1861	56	1078
1862	56	1079
1863	56	1080
1864	56	1081
1865	56	1082
1866	56	1083
1867	56	1084
1868	56	1085
1869	56	1086
1870	56	1087
1871	56	1088
1872	56	1089
1873	56	1090
1874	56	1091
1875	30	1092
1876	30	1093
1877	30	1094
1878	30	1095
1879	30	1096
1880	30	1107
1881	3	1116
1882	57	1129
1883	57	1130
1884	57	1131
1885	57	1132
1886	57	1133
1887	57	1143
1888	57	1144
1889	57	1145
1890	57	1146
1891	9	1154
1892	1	1155
1893	9	1155
1894	55	1156
1895	9	1156
1896	30	1157
1897	9	1157
1898	30	1158
1899	9	1158
1900	1	1159
1901	9	1159
1902	51	1160
1903	54	1160
1904	9	1160
1905	51	1161
1906	54	1161
1907	9	1161
1908	9	1162
1909	9	1163
1910	9	1164
1911	54	1165
1912	53	1165
1913	9	1165
1914	1	1166
1915	55	1166
1916	1	1167
1917	1	1168
1918	55	1169
1919	54	1169
1920	1	1170
1921	34	1171
1922	54	1172
1923	54	1173
1924	1	1174
1925	54	1174
1926	1	1175
1927	54	1175
1928	1	1176
1929	54	1176
1930	1	1177
1931	20	1177
1932	54	1177
1933	1	1178
1934	20	1178
1935	54	1178
1936	1	1179
1937	20	1179
1938	20	1180
1939	54	1180
1940	54	1181
1941	29	1182
1942	54	1182
1943	29	1183
1944	54	1183
1945	29	1184
1946	54	1184
1947	54	1185
1948	54	1186
1949	20	1187
1950	54	1187
1951	20	1188
1952	54	1188
1953	1	1189
1954	29	1190
1955	42	1190
1956	55	1191
1957	1	1192
1958	1	1193
1959	29	1193
1960	20	1194
1961	54	1195
1962	54	1196
1963	1	1197
1964	54	1197
1965	1	1198
1966	27	1199
1967	54	1202
1968	20	1203
1969	20	1204
1970	54	1205
1971	29	1206
1972	42	1206
1973	54	1207
1974	54	1208
1975	20	1209
1976	54	1210
1977	54	1211
1978	54	1212
1979	1	1213
1980	20	1213
1981	1	1214
1982	20	1214
1983	1	1215
1984	20	1215
1985	1	1216
1986	20	1216
1987	1	1217
1988	20	1217
1989	1	1218
1990	54	1218
1991	1	1219
1992	54	1219
1993	1	1220
1994	54	1220
1995	1	1221
1996	54	1221
1997	1	1222
1998	54	1222
1999	1	1223
2000	54	1223
2001	1	1224
2002	54	1224
2003	1	1225
2004	54	1225
2005	30	1226
2006	1	1227
2007	20	1227
2008	54	1228
2009	53	1228
2010	55	1229
2011	54	1229
2012	1	1230
2013	30	1230
2014	1	1231
2015	30	1231
2016	1	1232
2017	20	1232
2018	54	1232
2019	55	1233
2020	54	1233
2021	56	1234
2022	20	1235
2023	20	1236
2024	1	1237
2025	54	1237
2026	53	1237
2027	55	1238
2028	54	1238
2029	56	1238
2030	53	1238
2031	55	1239
2032	54	1239
2033	55	1240
2034	54	1240
2035	55	1241
2036	54	1241
2037	55	1242
2038	54	1242
2039	53	1242
2040	55	1243
2041	54	1243
2042	56	1243
2043	53	1243
2044	54	1244
2045	20	1245
2046	54	1245
2047	20	1246
2048	54	1246
2049	20	1247
2050	54	1247
2051	20	1248
2052	54	1248
2053	20	1249
2054	54	1249
2055	20	1250
2056	54	1250
2057	20	1251
2058	54	1251
2059	20	1252
2060	54	1252
2061	1	1253
2062	1	1254
2063	1	1255
2064	55	1255
2065	29	1256
2066	42	1256
2067	53	1257
2068	16	1258
2069	51	1258
2070	53	1258
2071	16	1259
2072	53	1259
2073	3	1260
2074	29	1260
2075	42	1260
2076	55	1261
2077	54	1263
2078	53	1263
2079	20	1264
2080	1	1265
2081	1	1266
2082	20	1266
2083	1	1267
2084	30	1267
2085	1	1268
2086	30	1268
2087	1	1269
2088	54	1269
2089	53	1270
2090	29	1275
2091	30	1275
2092	56	1275
2093	53	1418
2094	20	1276
2095	30	1276
2096	20	1277
2097	30	1277
2098	55	1278
2099	54	1278
2100	53	1278
2101	54	1279
2102	51	1280
2103	54	1281
2104	30	1282
2105	54	1282
2106	54	1283
2107	51	1284
2108	56	1284
2109	54	1287
2110	53	1288
2111	1	1289
2112	53	1289
2113	1	1290
2114	53	1290
2115	1	1291
2116	53	1291
2117	55	1292
2118	53	1292
2119	2	1293
2120	30	1294
2121	54	1294
2122	53	1294
2123	30	1304
2124	54	1304
2125	53	1304
2126	52	1305
2127	54	1305
2128	53	1305
2129	52	1306
2130	54	1306
2131	53	1306
2132	3	1307
2133	52	1307
2134	53	1307
2135	3	1308
2136	52	1308
2137	53	1308
2138	43	1309
2139	9	1309
2140	43	1310
2141	9	1310
2142	9	1311
2143	29	1312
2144	9	1312
2145	1	1313
2146	9	1313
2147	9	1314
2148	9	1315
2149	9	1316
2150	9	1317
2151	30	1318
2152	53	1318
2153	9	1318
2154	1	1320
2155	55	1321
2156	1	1322
2157	1	1324
2158	20	1324
2159	1	1325
2160	1	1326
2161	20	1326
2162	49	1327
2163	54	1327
2164	54	1328
2165	54	1329
2166	54	1330
2167	54	1331
2168	54	1332
2169	54	1333
2170	20	1334
2171	57	1335
2172	56	1335
2173	1	1336
2174	1	1337
2175	1	1338
2176	1	1339
2177	1	1340
2178	54	1340
2179	1	1341
2180	20	1341
2181	54	1341
2182	20	1342
2183	20	1343
2184	20	1344
2185	20	1345
2186	54	1346
2187	54	1347
2188	54	1348
2189	54	1349
2190	54	1350
2191	54	1351
2192	54	1352
2193	54	1353
2194	54	1354
2195	54	1355
2196	54	1356
2197	54	1357
2198	55	1358
2199	1	1359
2200	29	1362
2201	30	1362
2202	29	1363
2203	42	1363
2204	29	1364
2205	42	1364
2206	57	1364
2207	29	1365
2208	42	1365
2209	29	1366
2210	42	1366
2211	57	1366
2212	29	1367
2213	42	1367
2214	29	1368
2215	42	1368
2216	29	1369
2217	42	1369
2218	29	1370
2219	42	1370
2220	29	1371
2221	42	1371
2222	29	1372
2223	42	1372
2224	29	1373
2225	42	1373
2226	57	1373
2227	29	1374
2228	42	1374
2229	29	1375
2230	42	1375
2231	57	1375
2232	29	1376
2233	42	1376
2234	29	1377
2235	42	1377
2236	20	1382
2237	1	1383
2238	1	1384
2239	1	1385
2240	57	1385
2241	1	1386
2242	57	1386
2243	1	1387
2244	54	1387
2245	1	1388
2246	54	1388
2247	20	1389
2248	53	1390
2249	1	1391
2250	53	1391
2251	1	1392
2252	56	1392
2253	1	1394
2254	51	1396
2255	30	1397
2256	1	1398
2257	1	1401
2258	54	1401
2259	2	1402
2260	27	1402
2261	57	1403
2262	57	1404
2263	57	1405
2264	57	1406
2265	57	1407
2266	1	1408
2267	57	1408
2268	54	1408
2269	53	1408
2270	20	1409
2271	29	1409
2272	30	1409
2273	20	1410
2274	29	1410
2275	30	1410
2276	54	1412
2277	53	1412
2278	29	1413
2279	30	1414
2280	57	1414
2281	57	1415
2282	53	1416
2283	53	1417
2284	53	1419
2285	53	1420
2286	53	1421
2287	57	1422
2288	20	1424
2289	51	1424
2290	20	1425
2291	30	1426
2292	20	1427
2293	20	1428
2294	54	1429
2295	30	1430
2296	54	1431
2297	42	1432
2298	53	1433
2299	54	1434
2300	54	1435
2301	54	1436
2302	54	1437
2303	54	1438
2304	54	1439
2305	30	1440
2306	30	1441
2307	30	1442
2308	54	1443
2309	54	1444
2310	54	1445
2311	54	1446
2312	30	1447
2313	54	1448
2314	20	1449
2315	20	1450
2316	20	1451
2317	51	1452
2318	20	1453
2319	42	1454
2320	30	1455
2321	54	1455
2322	54	1456
2323	20	1457
2324	20	1458
2325	54	1459
2326	54	1460
2327	53	1460
2328	43	1461
2329	54	1461
2330	54	1462
2331	30	1463
2332	54	1463
2333	20	1464
2334	30	1464
2335	56	1464
2336	1	1465
2337	53	1465
2338	29	1466
2339	30	1466
2340	1	1468
2341	1	1469
2342	1	1470
2343	30	1470
2344	1	1471
2345	1	1473
2346	53	1473
2347	1	1474
2348	53	1474
2349	57	1476
2350	57	1477
2351	57	1478
2352	57	1479
2353	57	1480
2354	57	1481
2355	57	1482
2356	57	1483
2357	57	1484
2358	57	1485
2359	57	1486
2360	57	1487
2361	57	1488
2362	57	1489
2363	57	1490
2364	57	1491
2365	57	1492
2366	57	1493
2367	1	1494
2368	51	1494
2369	53	1494
2370	29	1495
2371	30	1495
2372	53	1495
2373	29	1496
2374	30	1496
2375	53	1496
2376	57	1497
2377	57	1498
2378	1	1499
2379	30	1499
2380	57	1501
2381	53	1502
2382	55	1503
2383	53	1503
2384	55	1504
2385	53	1504
2386	57	1505
2387	53	1505
2388	57	1506
2389	53	1506
2390	57	1507
2391	53	1507
2392	3	1508
2393	30	1508
2394	57	1509
2395	57	1510
2396	53	1510
2397	52	1511
2398	53	1511
2399	57	1512
2400	57	1513
2401	53	1513
2402	57	1514
2403	53	1514
2404	57	1515
2405	53	1515
2406	55	1516
2407	53	1516
2408	54	1518
2409	54	1520
2410	53	1520
2411	54	1521
2412	51	1523
2413	51	1524
2414	53	1528
2415	51	1530
2416	53	1530
2417	54	1531
2418	53	1531
2419	54	1532
2420	53	1532
2421	51	1533
2422	54	1533
2423	51	1534
2424	30	1534
2425	30	1535
2426	57	1535
2427	53	1535
2428	53	1536
2429	30	1537
2430	53	1537
2431	30	1538
2432	53	1538
2433	30	1539
2434	53	1539
2435	30	1540
2436	53	1540
2437	30	1541
2438	53	1541
2439	30	1542
2440	53	1542
2441	30	1543
2442	53	1543
2443	30	1544
2444	53	1544
2445	30	1545
2446	53	1545
2447	30	1546
2448	53	1546
2449	30	1547
2450	53	1547
2451	3	1548
2452	53	1548
2453	30	1549
2454	52	1550
2455	53	1550
2456	9	1551
2457	9	1552
2458	29	1553
2459	1	1555
2460	29	1556
2461	1	1559
2462	1	1560
2463	29	1562
2464	1	1564
2465	55	1566
2466	55	1567
2467	55	1571
2468	56	1571
2469	55	1572
2470	56	1572
2471	57	1575
2472	54	1575
2473	20	1576
2474	20	1581
2475	54	1583
2476	54	1584
2477	20	1585
2478	20	1586
2479	54	1587
2480	54	1588
2481	54	1589
2482	20	1592
2483	20	1594
2484	54	1595
2485	20	1596
2486	20	1599
2487	54	1600
2488	54	1601
2489	20	1602
2490	1	1603
2491	55	1605
2492	55	1606
2493	55	1607
2494	30	1609
2495	1	1610
2496	1	1611
2497	1	1613
2498	1	1614
2499	1	1615
2500	1	1617
2501	55	1618
2502	1	1619
2503	1	1620
2504	30	1620
2505	1	1621
2506	1	1622
2507	53	1623
2508	53	1624
2509	27	1625
2510	57	1625
2511	53	1626
2512	53	1627
2513	53	1629
2514	57	1638
2515	54	1639
2516	20	1643
2517	53	1644
2518	56	1645
2519	30	1647
2520	54	1649
2521	54	1650
2522	54	1651
2523	54	1652
2524	54	1653
2525	54	1654
2526	54	1655
2527	54	1656
2528	54	1657
2529	54	1658
2530	54	1659
2531	54	1660
2532	54	1661
2533	54	1662
2534	56	1663
2535	51	1664
2536	51	1668
2537	51	1669
2538	51	1670
2539	51	1671
2540	30	1673
2541	30	1674
2542	43	1675
2543	57	1678
2544	30	1679
2545	51	1680
2546	51	1681
2547	51	1682
2548	30	1684
2549	54	1685
2550	51	1686
2551	51	1687
2552	56	1687
2553	54	1688
2554	54	1689
2555	53	1690
2556	53	1691
2557	20	1692
2558	54	1693
2559	51	1694
2560	51	1695
2561	51	1696
2562	51	1697
2563	51	1698
2564	51	1699
2565	51	1700
2566	30	1701
2567	30	1702
2568	51	1703
2569	30	1704
2570	30	1705
2571	53	1708
2572	51	1709
2573	51	1710
2574	51	1711
2575	53	1715
2576	53	1716
2577	57	1717
2578	53	1717
2579	30	1719
2580	3	1720
2581	30	1721
2582	30	1722
2583	30	1723
2584	30	1724
2585	30	1725
2586	30	1726
2587	30	1727
2588	30	1728
2589	30	1729
2590	30	1730
2591	30	1731
2592	30	1732
2593	30	1733
2594	30	1735
2595	51	1736
2596	53	1736
2597	53	1737
2598	51	1738
2599	30	1738
2600	51	1739
2601	30	1739
2602	30	1740
2603	53	1741
2604	30	1742
2605	51	1743
2606	51	1744
2607	43	1745
2608	51	1747
2609	29	1749
2610	57	1750
2611	29	1751
2612	29	1752
2613	29	1753
2614	57	1754
2615	1	1755
2616	57	1755
2617	1	1759
2618	27	1760
2619	55	1761
2620	57	1762
2621	57	1763
2622	55	1764
2623	57	1774
2624	56	1797
2625	54	1798
2626	56	1799
2627	54	1803
2628	20	1808
2629	30	1830
2630	42	1836
2631	30	1837
2632	30	1838
2633	30	1841
2634	30	1842
2635	30	1843
2636	30	1844
2637	30	1845
2638	30	1846
2639	53	1859
2640	53	1860
2641	30	1862
2642	3	1864
2643	3	1865
2644	3	1866
2645	3	1867
2646	3	1868
2647	3	1869
2648	3	1870
2649	3	1871
2650	3	1872
2651	57	1873
2652	57	1874
2653	57	1875
2654	53	1885
2655	51	1887
2656	57	1887
2657	51	1888
2658	57	1888
2659	57	1897
2660	30	1903
2661	30	1904
2662	30	1905
2663	57	1923
2664	57	1926
2665	57	1982
2666	1	1993
2667	29	1993
2668	1	1994
2669	29	1994
2670	1	1995
2671	29	1995
2672	54	1996
2673	1	1997
2674	1	1998
2675	29	1998
2676	29	1999
2677	1	2000
2678	29	2000
2679	57	2000
2680	1	2001
2681	57	2001
2682	1	2002
2683	57	2002
2684	1	2003
2685	1	2004
2686	55	2005
2687	29	2008
2688	1	2009
2689	57	2009
2690	29	2011
2691	29	2012
2692	29	2013
2693	29	2014
2694	57	2015
2695	2	2018
2696	9	2018
2697	1	2019
2698	9	2019
2699	1	2020
2700	55	2020
2701	9	2020
2702	56	2021
2703	9	2021
2704	20	2022
2705	9	2022
2706	8	2023
2707	9	2023
2708	1	2024
2709	54	2024
2710	9	2024
2711	1	2025
2712	30	2026
2713	9	2026
2714	7	2026
2715	1	2027
2716	1	2028
2717	1	2029
2718	20	2029
2719	55	2029
2720	55	2031
2721	20	2032
2722	55	2032
2723	20	2033
2724	55	2033
2725	20	2034
2726	55	2034
2727	34	2035
2728	53	2035
2729	20	2036
2730	55	2037
2731	54	2037
2732	56	2037
2733	55	2038
2734	54	2038
2735	56	2038
2736	20	2040
2737	29	2040
2738	1	2041
2739	53	2041
2740	1	2042
2741	30	2042
2742	54	2042
2743	54	2043
2744	56	2044
2745	20	2045
2746	55	2046
2747	51	2046
2748	53	2046
2749	52	2047
2750	53	2047
2751	53	2048
2752	1	2049
2753	30	2049
2754	53	2049
2755	1	2050
2756	30	2050
2757	53	2050
2758	1	2051
2759	30	2051
2760	53	2051
2761	1	2052
2762	30	2052
2763	53	2052
2764	1	2053
2765	30	2053
2766	53	2053
2767	51	2054
2768	52	2054
2769	53	2054
2770	2	2057
2771	2	2058
2772	9	2058
2773	2	2059
2774	9	2059
2775	55	2060
2776	9	2060
2777	48	2061
2778	9	2061
2779	39	2061
2780	54	2062
2781	9	2062
2782	1	2063
2783	55	2063
2784	1	2064
2785	21	2064
2786	57	2064
2787	1	2065
2788	1	2066
2789	1	2067
2790	1	2068
2791	1	2069
2792	1	2070
2793	1	2071
2794	55	2071
2795	20	2072
2796	55	2072
2797	5	2073
2798	54	2074
2799	1	2075
2800	54	2075
2801	1	2076
2802	1	2077
2803	1	2078
2804	54	2078
2805	20	2079
2806	57	2079
2807	20	2080
2808	20	2081
2809	55	2081
2810	54	2081
2811	54	2082
2812	54	2083
2813	20	2084
2814	56	2085
2815	54	2086
2816	56	2086
2817	1	2087
2818	1	2088
2819	55	2088
2820	53	2088
2821	1	2089
2822	1	2090
2823	55	2090
2824	55	2091
2825	1	2092
2826	53	2092
2827	1	2093
2828	53	2093
2829	1	2094
2830	53	2094
2831	1	2095
2832	51	2095
2833	1	2099
2834	1	2100
2835	54	2100
2836	20	2101
2837	57	2101
2838	53	2102
2839	20	2103
2840	57	2103
2841	51	2104
2842	54	2104
2843	20	2108
2844	1	2109
2845	30	2110
2846	53	2111
2847	3	2113
2848	53	2113
2849	3	2114
2850	53	2114
2851	3	2115
2852	53	2115
2853	3	2116
2854	53	2116
2855	3	2117
2856	53	2117
2857	3	2118
2858	53	2118
2859	3	2119
2860	53	2119
2861	3	2120
2862	53	2120
2863	3	2121
2864	53	2121
2865	3	2122
2866	53	2122
2867	3	2123
2868	53	2123
2869	3	2124
2870	53	2124
2871	3	2125
2872	53	2125
2873	3	2126
2874	53	2126
2875	3	2127
2876	53	2127
2877	3	2128
2878	53	2128
2879	3	2129
2880	53	2129
2881	3	2130
2882	53	2130
2883	3	2131
2884	53	2131
2885	3	2132
2886	53	2132
2887	3	2133
2888	53	2133
2889	3	2134
2890	53	2134
2891	3	2135
2892	53	2135
2893	3	2136
2894	53	2136
2895	3	2137
2896	53	2137
2897	3	2138
2898	53	2138
2899	3	2139
2900	53	2139
2901	3	2140
2902	53	2140
2903	3	2141
2904	53	2141
2905	3	2142
2906	53	2142
2907	3	2143
2908	53	2143
2909	3	2144
2910	53	2144
2911	3	2145
2912	53	2145
2913	3	2146
2914	53	2146
2915	3	2147
2916	53	2147
2917	54	2150
2918	53	2150
2919	54	2151
2920	53	2151
2921	51	2153
2922	3	2154
2923	53	2154
2924	3	2155
2925	53	2155
2926	3	2156
2927	53	2156
2928	3	2157
2929	53	2157
2930	3	2158
2931	53	2158
2932	3	2159
2933	53	2159
2934	3	2160
2935	53	2160
2936	3	2161
2937	53	2161
2938	3	2162
2939	53	2162
2940	3	2163
2941	53	2163
2942	3	2164
2943	53	2164
2944	3	2165
2945	53	2165
2946	3	2166
2947	53	2166
2948	3	2167
2949	53	2167
2950	3	2168
2951	53	2168
2952	3	2169
2953	53	2169
2954	3	2170
2955	53	2170
2956	3	2171
2957	53	2171
2958	3	2172
2959	53	2172
2960	3	2173
2961	53	2173
2962	3	2174
2963	53	2174
2964	30	2175
2965	3	2177
2966	53	2177
2967	30	2178
2968	54	2181
2969	9	2181
2970	9	2182
2971	34	2183
2972	1	2184
2973	1	2185
2974	1	2186
2975	1	2187
2976	1	2188
2977	1	2189
2978	1	2191
2979	55	2191
2980	1	2192
2981	55	2192
2982	55	2193
2983	39	2193
2984	1	2194
2985	1	2195
2986	1	2196
2987	1	2197
2988	1	2198
2989	1	2199
2990	29	2200
2991	1	2202
2992	1	2204
2993	1	2205
2994	1	2206
2995	1	2208
2996	1	2209
2997	1	2211
2998	1	2212
2999	1	2213
3000	1	2216
3001	1	2217
3002	1	2218
3003	1	2219
3004	1	2220
3005	1	2221
3006	1	2222
3007	1	2223
3008	1	2224
3009	1	2225
3010	1	2226
3011	1	2227
3012	1	2228
3013	1	2233
3014	20	2234
3015	57	2235
3016	54	2238
3017	55	2240
3018	55	2242
3019	55	2243
3020	55	2244
3021	54	2244
3022	55	2246
3023	57	2246
3024	54	2246
3025	20	2252
3026	54	2256
3027	56	2257
3028	20	2258
3029	20	2259
3030	20	2260
3031	54	2261
3032	51	2262
3033	51	2263
3034	51	2264
3035	57	2264
3036	55	2265
3037	55	2266
3038	30	2267
3039	1	2268
3040	53	2268
3041	1	2269
3042	1	2270
3043	1	2271
3044	1	2272
3045	3	2272
3046	1	2273
3047	3	2273
3048	1	2274
3049	3	2274
3050	1	2275
3051	3	2275
3052	1	2276
3053	57	2279
3054	53	2280
3055	51	2281
3056	51	2282
3057	55	2283
3058	2	2284
3059	2	2285
3060	54	2293
3061	20	2294
3062	30	2296
3063	57	2296
3064	51	2297
3065	51	2298
3066	53	2299
3067	51	2307
3068	56	2307
3069	54	2308
3070	53	2308
3071	21	2309
3072	53	2309
3073	53	2310
3074	53	2311
3075	57	2312
3076	53	2312
3077	53	2313
3078	3	2314
3079	53	2314
3080	53	2315
3081	30	2316
3082	30	2317
3083	30	2318
3084	57	2318
3085	30	2319
3086	2	2320
3087	30	2321
3088	42	2321
3089	30	2325
3090	30	2326
3091	30	2328
3092	30	2329
3093	34	2330
3094	1	2331
3095	1	2332
3096	1	2333
3097	1	2334
3098	1	2335
3099	1	2336
3100	1	2337
3101	1	2338
3102	1	2340
3103	1	2341
3104	1	2342
3105	1	2343
3106	1	2344
3107	1	2345
3108	1	2346
3109	1	2349
3110	1	2350
3111	1	2351
3112	1	2352
3113	1	2353
3114	1	2354
3115	1	2355
3116	1	2356
3117	1	2357
3118	1	2358
3119	1	2359
3120	1	2360
3121	29	2361
3122	1	2362
3123	1	2363
3124	1	2395
3125	1	2396
3126	1	2397
3127	1	2398
3128	1	2399
3129	1	2400
3130	1	2401
3131	1	2402
3132	1	2403
3133	1	2406
3134	1	2407
3135	1	2408
3136	1	2409
3137	1	2411
3138	1	2412
3139	1	2413
3140	1	2414
3141	1	2415
3142	1	2416
3143	29	2417
3144	1	2418
3145	1	2419
3146	27	2421
3147	57	2421
3148	55	2428
3149	55	2429
3150	55	2430
3151	55	2435
3152	55	2437
3153	54	2461
3154	20	2470
3155	20	2477
3156	20	2479
3157	30	2490
3158	30	2491
3159	30	2493
3160	57	2493
3161	42	2494
3162	30	2501
3163	30	2509
3164	30	2510
3165	30	2511
3166	30	2512
3167	30	2513
3168	30	2514
3169	30	2515
3170	30	2516
3171	30	2517
3172	30	2518
3173	30	2519
3174	30	2520
3175	30	2521
3176	30	2522
3177	30	2523
3178	30	2524
3179	30	2525
3180	30	2526
3181	30	2527
3182	30	2528
3183	30	2529
3184	30	2530
3185	42	2531
3186	57	2532
3187	30	2534
3188	57	2543
3189	57	2563
3190	57	2582
3191	57	2587
3192	29	2806
3193	9	2806
3194	7	2806
3195	29	2807
3196	9	2807
3197	7	2807
3198	29	2808
3199	9	2808
3200	7	2808
3201	29	2809
3202	9	2809
3203	7	2809
3204	1	2810
3205	54	2810
3206	1	2811
3207	53	2811
3208	1	2813
3209	55	2813
3210	54	2813
3211	54	2819
3212	54	2820
3213	55	2821
3214	54	2821
3215	54	2822
3216	54	2823
3217	54	2824
3218	54	2825
3219	54	2826
3220	54	2827
3221	54	2828
3222	54	2829
3223	20	2830
3224	55	2830
3225	54	2830
3226	53	2830
3227	1	2831
3228	55	2832
3229	42	2832
3230	55	2833
3231	30	2833
3232	54	2833
3233	53	2833
3234	55	2834
3235	20	2835
3236	30	2835
3237	20	2836
3238	30	2836
3239	20	2837
3240	30	2837
3241	20	2838
3242	30	2838
3243	1	2839
3244	9	2839
3245	27	2840
3246	9	2840
3247	7	2840
3248	27	2841
3249	9	2841
3250	7	2841
3251	27	2842
3252	9	2842
3253	7	2842
3254	27	2843
3255	9	2843
3256	7	2843
3257	54	2844
3258	34	2844
3259	54	2845
3260	34	2845
3261	54	2846
3262	34	2846
3263	54	2847
3264	34	2847
3265	54	2848
3266	34	2848
3267	54	2849
3268	34	2849
3269	1	2850
3270	55	2850
3271	55	2851
3272	1	2853
3273	17	2853
3274	20	2853
3275	55	2854
3276	55	2855
3277	55	2856
3278	34	2866
3279	53	2866
3280	34	2867
3281	53	2867
3282	34	2868
3283	53	2868
3284	34	2869
3285	53	2869
3286	29	2870
3287	53	2870
3288	1	2871
3289	30	2871
3290	29	2872
3291	53	2872
3292	29	2873
3293	53	2873
3294	29	2874
3295	53	2874
3296	1	2875
3297	30	2875
3298	1	2876
3299	30	2876
3300	1	2877
3301	30	2877
3302	54	2878
3303	55	2879
3304	55	2880
3305	55	2881
3306	55	2882
3307	54	2882
3308	30	2883
3309	30	2884
3310	1	2885
3311	1	2886
3312	30	2887
3313	30	2888
3314	30	2889
3315	30	2890
3316	30	2891
3317	30	2892
3318	30	2893
3319	30	2894
3320	55	2896
3321	55	2897
3322	29	2899
3323	1	2900
3324	55	2901
3325	57	2901
3326	29	2902
3327	29	2903
3328	29	2904
3329	1	2905
3330	57	2905
3331	1	2906
3332	57	2906
3333	57	2907
3334	1	2908
3335	1	2909
3336	57	2909
3337	1	2910
3338	57	2910
3339	1	2911
3340	57	2911
3341	1	2912
3342	57	2912
3343	1	2913
3344	57	2913
3345	1	2914
3346	57	2914
3347	1	2915
3348	57	2915
3349	1	2919
3350	54	2919
3351	54	2920
3352	54	2934
3353	54	2935
3354	54	2936
3355	54	2937
3356	20	2938
3357	20	2939
3358	20	2940
3359	20	2941
3360	20	2942
3361	20	2943
3362	34	2944
3363	53	2944
3364	57	2945
3365	1	2946
3366	55	2948
3367	51	2950
3368	1	2951
3369	30	2951
3370	55	2952
3371	55	2953
3372	55	2954
3373	55	2955
3374	55	2956
3375	55	2957
3376	55	2959
3377	55	2960
3378	55	2961
3379	51	2972
3380	30	2972
3381	51	2975
3382	1	2978
3383	1	2979
3384	57	2981
3385	1	2982
3386	57	2982
3387	57	2983
3388	57	2984
3389	57	2985
3390	57	2986
3391	1	2988
3392	1	2989
3393	1	2990
3394	1	2993
3395	1	2994
3396	1	2995
3397	1	2996
3398	1	2997
3399	1	2999
3400	57	3003
3401	57	3004
3402	57	3005
3403	55	3020
3404	55	3021
3405	55	3022
3406	55	3023
3407	57	3028
3408	54	3028
3409	57	3032
3410	54	3032
3411	57	3033
3412	54	3033
3413	57	3034
3414	54	3034
3415	20	3043
3416	54	3044
3417	53	3046
3418	42	3049
3419	53	3053
3420	53	3054
3421	53	3055
3422	30	3057
3423	30	3058
3424	30	3059
3425	30	3060
3426	30	3064
3427	53	3072
3428	57	3074
3429	53	3076
3430	53	3077
3431	53	3078
3432	42	3085
3433	42	3086
3434	42	3087
3435	53	3097
3436	53	3098
3437	53	3099
3438	53	3100
3439	53	3101
3440	53	3102
3441	53	3103
3442	53	3104
3443	53	3105
3444	30	3118
3445	30	3119
3446	30	3120
3447	53	3141
3448	53	3142
3449	53	3143
3450	53	3144
3451	53	3145
3452	57	3152
3453	57	3154
3454	57	3156
3455	57	3159
3456	57	3160
3457	57	3161
3458	57	3201
3459	57	3202
3460	57	3211
3461	57	3212
3462	57	3213
3463	57	3218
3464	57	3219
3465	57	3220
3466	57	3221
3467	57	3225
3468	57	3226
3469	57	3227
3470	57	3234
3471	57	3235
3472	57	3236
3473	57	3237
3474	57	3238
3475	57	3239
3476	57	3240
3477	57	3241
3478	57	3372
3479	57	3373
3480	57	3374
3481	57	3375
3482	57	3376
3483	57	3377
3484	57	3378
3485	57	3379
3486	57	3380
3487	57	3381
3488	22	1
3489	46	1
3490	22	2
3491	46	2
3492	22	3
3493	46	3
3494	22	4
3495	46	4
3496	22	5
3497	22	6
3498	22	7
3499	22	8
3500	22	9
3501	19	23
3502	19	24
3503	19	25
3504	19	26
3505	19	27
3506	19	28
3507	19	29
3508	19	30
3509	19	31
3510	19	32
3511	19	33
3512	19	34
3513	19	35
3514	19	36
3515	19	37
3516	19	38
3517	19	39
3518	19	40
3519	19	41
3520	19	42
3521	19	43
3522	19	44
3523	19	45
3524	19	46
3525	19	47
3526	19	48
3527	19	49
3528	19	50
3529	19	51
3530	19	52
3531	19	53
3532	19	54
3533	19	55
3534	19	56
3535	19	57
3536	19	58
3537	19	59
3538	19	60
3539	19	61
3540	19	62
3541	19	63
3542	19	64
3543	19	65
3544	19	66
3545	19	67
3546	19	68
3547	19	69
3548	19	70
3549	19	71
3550	19	72
3551	19	73
3552	19	74
3553	22	88
3554	22	89
3555	22	90
3556	22	91
3557	22	92
3558	22	93
3559	22	94
3560	22	95
3561	22	96
3562	22	97
3563	22	98
3564	22	99
3565	22	100
3566	31	101
3567	31	102
3568	31	103
3569	31	104
3570	31	105
3571	31	106
3572	31	107
3573	31	108
3574	31	109
3575	31	110
3576	31	111
3577	31	112
3578	31	113
3579	31	114
3580	31	115
3581	31	116
3582	31	117
3583	31	118
3584	31	119
3585	22	120
3586	31	120
3587	22	121
3588	31	121
3589	22	122
3590	31	122
3591	22	123
3592	31	123
3593	22	128
3594	22	129
3595	22	130
3596	22	131
3597	22	132
3598	31	138
3599	22	139
3600	22	140
3601	22	141
3602	22	142
3603	22	143
3604	31	144
3605	31	145
3606	31	146
3607	31	147
3608	31	148
3609	31	149
3610	31	150
3611	31	151
3612	31	152
3613	31	153
3614	31	154
3615	31	155
3616	31	156
3617	47	157
3618	31	157
3619	47	158
3620	31	158
3621	47	159
3622	31	159
3623	47	160
3624	31	160
3625	47	161
3626	31	161
3627	47	162
3628	31	162
3629	47	163
3630	31	163
3631	47	164
3632	31	164
3633	47	165
3634	31	165
3635	47	166
3636	31	166
3637	47	167
3638	31	167
3639	47	168
3640	31	168
3641	47	169
3642	31	169
3643	47	170
3644	31	170
3645	31	184
3646	31	185
3647	31	186
3648	31	187
3649	31	188
3650	4	189
3651	31	189
3652	4	190
3653	31	190
3654	4	191
3655	31	191
3656	4	192
3657	31	192
3658	31	193
3659	31	194
3660	22	195
3661	31	195
3662	22	196
3663	31	196
3664	22	197
3665	31	197
3666	22	198
3667	31	198
3668	22	199
3669	31	199
3670	4	200
3671	31	200
3672	4	201
3673	31	201
3674	4	202
3675	31	202
3676	4	203
3677	31	203
3678	4	204
3679	31	204
3680	4	205
3681	31	205
3682	4	206
3683	31	206
3684	4	207
3685	31	207
3686	4	208
3687	31	208
3688	4	209
3689	31	209
3690	4	210
3691	31	210
3692	4	211
3693	31	211
3694	4	212
3695	31	212
3696	4	213
3697	31	213
3698	4	214
3699	31	214
3700	4	215
3701	31	215
3702	4	216
3703	31	216
3704	4	217
3705	31	217
3706	4	218
3707	31	218
3708	4	219
3709	31	219
3710	4	220
3711	31	220
3712	4	221
3713	31	221
3714	4	222
3715	31	222
3716	4	223
3717	31	223
3718	4	224
3719	31	224
3720	4	225
3721	31	225
3722	4	226
3723	31	226
3724	4	227
3725	31	227
3726	4	228
3727	31	228
3728	4	229
3729	31	229
3730	4	230
3731	31	230
3732	4	231
3733	31	231
3734	4	232
3735	31	232
3736	4	233
3737	31	233
3738	4	234
3739	31	234
3740	4	235
3741	31	235
3742	4	236
3743	31	236
3744	4	237
3745	31	237
3746	4	238
3747	31	238
3748	4	239
3749	31	239
3750	4	240
3751	31	240
3752	4	241
3753	31	241
3754	4	242
3755	31	242
3756	4	243
3757	31	243
3758	4	244
3759	31	244
3760	4	245
3761	31	245
3762	4	246
3763	31	246
3764	4	247
3765	31	247
3766	4	248
3767	31	248
3768	31	249
3769	31	250
3770	31	251
3771	31	252
3772	22	253
3773	31	253
3774	31	254
3775	31	255
3776	31	256
3777	31	257
3778	31	258
3779	31	259
3780	31	260
3781	31	261
3782	31	262
3783	31	263
3784	31	264
3785	31	265
3786	31	266
3787	31	267
3788	31	268
3789	31	269
3790	31	270
3791	31	271
3792	31	272
3793	31	273
3794	31	274
3795	31	275
3796	31	276
3797	31	277
3798	31	278
3799	31	279
3800	31	280
3801	31	281
3802	31	282
3803	31	283
3804	31	284
3805	31	285
3806	31	286
3807	31	287
3808	31	288
3809	31	289
3810	31	290
3811	31	291
3812	31	292
3813	22	293
3814	31	293
3815	22	294
3816	31	294
3817	22	295
3818	31	295
3819	22	296
3820	31	296
3821	22	297
3822	31	297
3823	22	298
3824	31	298
3825	22	299
3826	31	299
3827	22	300
3828	31	300
3829	22	301
3830	31	301
3831	22	302
3832	31	302
3833	22	303
3834	31	303
3835	22	304
3836	31	304
3837	22	305
3838	31	305
3839	22	306
3840	31	306
3841	22	307
3842	31	307
3843	22	308
3844	31	308
3845	22	309
3846	31	309
3847	22	310
3848	31	310
3849	22	311
3850	31	311
3851	22	312
3852	31	312
3853	22	313
3854	31	313
3855	22	314
3856	31	314
3857	22	315
3858	31	315
3859	22	316
3860	31	316
3861	22	317
3862	31	317
3863	22	318
3864	31	318
3865	22	319
3866	31	319
3867	22	320
3868	31	320
3869	22	321
3870	31	321
3871	22	322
3872	31	322
3873	22	323
3874	31	323
3875	22	324
3876	31	324
3877	22	325
3878	31	325
3879	22	326
3880	31	326
3881	22	327
3882	31	327
3883	22	328
3884	31	328
3885	22	329
3886	31	329
3887	22	330
3888	31	330
3889	22	331
3890	31	331
3891	22	332
3892	31	332
3893	22	333
3894	31	333
3895	22	334
3896	31	334
3897	22	335
3898	31	335
3899	22	336
3900	31	336
3901	22	337
3902	31	337
3903	22	338
3904	31	338
3905	22	339
3906	31	339
3907	22	340
3908	31	340
3909	22	341
3910	31	341
3911	22	342
3912	31	342
3913	22	343
3914	31	343
3915	22	344
3916	31	344
3917	22	345
3918	31	345
3919	22	346
3920	31	346
3921	22	347
3922	31	347
3923	22	348
3924	31	348
3925	22	349
3926	31	349
3927	22	350
3928	31	350
3929	22	351
3930	31	351
3931	22	352
3932	31	352
3933	22	353
3934	31	353
3935	22	354
3936	31	354
3937	22	355
3938	31	355
3939	22	356
3940	31	356
3941	22	357
3942	31	357
3943	22	358
3944	31	358
3945	31	359
3946	31	360
3947	31	361
3948	31	362
3949	31	363
3950	31	364
3951	31	365
3952	31	366
3953	31	367
3954	31	368
3955	31	369
3956	31	370
3957	31	371
3958	31	372
3959	22	383
3960	41	383
3961	22	384
3962	41	384
3963	22	385
3964	41	385
3965	22	386
3966	41	386
3967	46	387
3968	46	388
3969	19	394
3970	19	395
3971	19	396
3972	19	397
3973	19	398
3974	19	399
3975	19	400
3976	19	401
3977	19	402
3978	19	403
3979	19	404
3980	19	405
3981	19	406
3982	19	407
3983	19	408
3984	19	409
3985	19	410
3986	19	411
3987	19	412
3988	19	413
3989	19	414
3990	22	416
3991	22	417
3992	22	418
3993	22	419
3994	22	420
3995	22	421
3996	22	422
3997	22	423
3998	22	424
3999	22	425
4000	22	426
4001	22	427
4002	22	428
4003	22	429
4004	22	430
4005	22	431
4006	22	432
4007	22	457
4008	22	458
4009	22	459
4010	22	460
4011	22	476
4012	22	477
4013	22	478
4014	22	479
4015	22	480
4016	22	481
4017	31	481
4018	22	482
4019	31	482
4020	22	483
4021	31	483
4022	22	484
4023	31	484
4024	22	485
4025	31	485
4026	31	486
4027	31	487
4028	31	488
4029	31	489
4030	22	490
4031	31	490
4032	22	491
4033	31	491
4034	22	492
4035	31	492
4036	22	493
4037	31	493
4038	22	494
4039	31	494
4040	31	495
4041	31	496
4042	31	497
4043	31	498
4044	31	499
4045	31	500
4046	31	501
4047	31	502
4048	31	503
4049	31	504
4050	31	505
4051	31	506
4052	31	507
4053	31	508
4054	31	509
4055	31	510
4056	31	511
4057	31	512
4058	31	513
4059	31	514
4060	31	515
4061	31	516
4062	31	517
4063	31	518
4064	31	519
4065	31	520
4066	31	521
4067	31	522
4068	31	523
4069	31	524
4070	31	525
4071	31	526
4072	31	527
4073	31	528
4074	31	529
4075	31	530
4076	31	531
4077	31	532
4078	31	533
4079	31	534
4080	31	535
4081	31	536
4082	31	537
4083	31	538
4084	31	539
4085	31	540
4086	31	541
4087	31	542
4088	22	543
4089	31	543
4090	22	544
4091	31	544
4092	22	545
4093	31	545
4094	22	546
4095	31	546
4096	22	547
4097	31	547
4098	22	548
4099	31	548
4100	22	549
4101	31	549
4102	22	550
4103	31	550
4104	22	551
4105	31	551
4106	22	552
4107	31	552
4108	22	563
4109	31	563
4110	22	564
4111	31	564
4112	22	565
4113	31	565
4114	22	566
4115	31	566
4116	22	567
4117	31	567
4118	31	583
4119	31	584
4120	31	585
4121	31	586
4122	31	587
4123	31	588
4124	31	589
4125	31	590
4126	31	591
4127	31	592
4128	31	593
4129	31	594
4130	31	595
4131	31	596
4132	31	597
4133	31	598
4134	31	599
4135	22	600
4136	31	600
4137	22	601
4138	31	601
4139	22	602
4140	31	602
4141	22	603
4142	31	603
4143	22	604
4144	31	604
4145	25	605
4146	31	605
4147	25	606
4148	31	606
4149	25	607
4150	31	607
4151	25	608
4152	31	608
4153	25	609
4154	31	609
4155	22	610
4156	31	610
4157	22	611
4158	31	611
4159	22	612
4160	31	612
4161	22	613
4162	31	613
4163	22	614
4164	31	614
4165	31	615
4166	31	616
4167	31	617
4168	31	618
4169	31	619
4170	22	620
4171	31	620
4172	22	621
4173	31	621
4174	22	622
4175	31	622
4176	22	623
4177	31	623
4178	22	624
4179	31	624
4180	22	625
4181	31	625
4182	22	626
4183	31	626
4184	22	627
4185	31	627
4186	22	628
4187	31	628
4188	22	629
4189	31	630
4190	31	631
4191	31	632
4192	31	633
4193	31	634
4194	31	635
4195	31	636
4196	31	637
4197	31	638
4198	31	639
4199	31	640
4200	31	641
4201	31	642
4202	31	643
4203	31	644
4204	31	645
4205	31	646
4206	31	647
4207	31	648
4208	31	649
4209	31	650
4210	31	651
4211	31	652
4212	31	653
4213	4	654
4214	22	655
4215	22	656
4216	22	657
4217	22	658
4218	22	659
4219	22	726
4220	22	727
4221	22	728
4222	22	729
4223	22	730
4224	22	731
4225	22	732
4226	22	733
4227	22	734
4228	22	735
4229	22	736
4230	22	737
4231	22	738
4232	22	739
4233	22	740
4234	22	741
4235	22	742
4236	22	743
4237	22	776
4238	22	777
4239	22	778
4240	22	779
4241	22	780
4242	22	786
4243	22	787
4244	22	788
4245	22	789
4246	22	790
4247	22	791
4248	22	792
4249	22	793
4250	22	904
4251	31	904
4252	22	905
4253	31	905
4254	22	906
4255	31	906
4256	22	907
4257	31	907
4258	22	908
4259	31	908
4260	31	909
4261	31	910
4262	31	911
4263	31	912
4264	31	913
4265	31	914
4266	31	915
4267	31	916
4268	31	917
4269	31	918
4270	22	919
4271	31	919
4272	22	920
4273	31	920
4274	22	921
4275	31	921
4276	22	922
4277	31	922
4278	22	923
4279	31	923
4280	31	924
4281	31	925
4282	31	926
4283	31	927
4284	31	933
4285	31	934
4286	31	935
4287	31	936
4288	31	937
4289	31	938
4290	31	939
4291	31	940
4292	31	941
4293	31	942
4294	31	943
4295	31	944
4296	31	945
4297	31	946
4298	31	947
4299	31	948
4300	31	949
4301	31	950
4302	31	951
4303	31	952
4304	31	953
4305	31	954
4306	31	955
4307	31	956
4308	31	957
4309	31	958
4310	31	959
4311	31	960
4312	31	961
4313	31	962
4314	31	963
4315	31	964
4316	31	965
4317	31	966
4318	31	967
4319	31	968
4320	31	973
4321	31	974
4322	31	975
4323	31	976
4324	31	977
4325	31	978
4326	31	979
4327	31	980
4328	31	981
4329	31	982
4330	31	983
4331	31	984
4332	31	985
4333	31	986
4334	31	992
4335	31	993
4336	31	994
4337	31	995
4338	31	996
4339	31	1002
4340	31	1003
4341	31	1004
4342	31	1005
4343	31	1006
4344	31	1007
4345	31	1008
4346	31	1009
4347	31	1010
4348	31	1011
4349	31	1012
4350	31	1013
4351	31	1014
4352	31	1015
4353	31	1016
4354	31	1022
4355	31	1023
4356	31	1024
4357	31	1025
4358	31	1026
4359	4	1027
4360	31	1027
4361	46	1039
4362	46	1040
4363	46	1041
4364	46	1042
4365	22	1053
4366	22	1054
4367	22	1055
4368	22	1056
4369	22	1057
4370	22	1058
4371	22	1059
4372	22	1060
4373	22	1061
4374	31	1097
4375	31	1098
4376	31	1099
4377	31	1100
4378	31	1101
4379	31	1102
4380	31	1103
4381	31	1104
4382	31	1105
4383	22	1154
4384	31	1154
4385	31	1155
4386	31	1156
4387	4	1157
4388	31	1157
4389	4	1158
4390	31	1158
4391	31	1159
4392	22	1160
4393	22	1161
4394	22	1162
4395	31	1162
4396	22	1163
4397	31	1163
4398	22	1164
4399	31	1164
4400	31	1165
4401	22	1166
4402	31	1166
4403	19	1167
4404	31	1167
4405	19	1168
4406	31	1168
4407	19	1169
4408	31	1169
4409	22	1170
4410	31	1170
4411	19	1171
4412	22	1171
4413	31	1171
4414	19	1172
4415	22	1172
4416	31	1172
4417	19	1173
4418	31	1173
4419	31	1174
4420	31	1175
4421	31	1176
4422	31	1179
4423	22	1180
4424	22	1181
4425	31	1181
4426	31	1182
4427	31	1183
4428	31	1184
4429	22	1185
4430	31	1185
4431	22	1186
4432	31	1186
4433	22	1187
4434	31	1188
4435	19	1189
4436	22	1189
4437	31	1189
4438	19	1190
4439	22	1190
4440	19	1191
4441	22	1191
4442	31	1191
4443	19	1192
4444	31	1192
4445	31	1193
4446	19	1194
4447	22	1194
4448	31	1194
4449	19	1195
4450	22	1195
4451	31	1195
4452	19	1196
4453	22	1196
4454	31	1196
4455	19	1197
4456	31	1197
4457	22	1198
4458	31	1198
4459	22	1199
4460	31	1199
4461	22	1200
4462	46	1200
4463	22	1201
4464	46	1201
4465	19	1202
4466	22	1202
4467	31	1202
4468	19	1203
4469	22	1203
4470	31	1203
4471	19	1204
4472	22	1204
4473	31	1204
4474	19	1205
4475	22	1205
4476	31	1205
4477	22	1206
4478	31	1206
4479	19	1207
4480	22	1207
4481	31	1207
4482	19	1208
4483	22	1208
4484	31	1208
4485	19	1209
4486	22	1209
4487	31	1209
4488	19	1210
4489	22	1210
4490	31	1210
4491	19	1211
4492	22	1211
4493	31	1211
4494	19	1212
4495	22	1212
4496	31	1212
4497	31	1213
4498	31	1214
4499	31	1215
4500	31	1216
4501	31	1217
4502	31	1218
4503	31	1219
4504	31	1220
4505	31	1221
4506	31	1222
4507	31	1223
4508	31	1224
4509	31	1225
4510	25	1226
4511	31	1226
4512	31	1227
4513	19	1228
4514	31	1228
4515	31	1229
4516	31	1230
4517	31	1231
4518	31	1232
4519	31	1233
4520	22	1234
4521	31	1234
4522	22	1235
4523	31	1235
4524	22	1236
4525	31	1236
4526	31	1237
4527	31	1239
4528	31	1240
4529	31	1241
4530	31	1242
4531	4	1244
4532	31	1244
4533	31	1245
4534	31	1246
4535	31	1247
4536	31	1248
4537	31	1249
4538	31	1250
4539	31	1251
4540	31	1252
4541	22	1253
4542	31	1253
4543	19	1254
4544	31	1254
4545	31	1255
4546	19	1256
4547	31	1256
4548	19	1257
4549	22	1257
4550	31	1257
4551	22	1258
4552	22	1259
4553	22	1260
4554	19	1261
4555	4	1261
4556	19	1262
4557	22	1262
4558	31	1262
4559	19	1263
4560	31	1263
4561	22	1264
4562	4	1264
4563	31	1264
4564	4	1265
4565	31	1265
4566	31	1266
4567	31	1267
4568	31	1268
4569	31	1269
4570	22	1270
4571	31	1270
4572	22	1271
4573	4	1271
4574	31	1271
4575	19	1272
4576	4	1272
4577	31	1272
4578	19	1273
4579	4	1273
4580	31	1273
4581	47	1274
4582	31	1274
4583	31	1275
4584	22	1418
4585	31	1418
4586	22	1276
4587	31	1276
4588	22	1277
4589	31	1277
4590	31	1278
4591	4	1279
4592	31	1279
4593	31	1280
4594	31	1281
4595	31	1282
4596	4	1283
4597	31	1283
4598	31	1284
4599	4	1285
4600	31	1285
4601	4	1286
4602	31	1286
4603	31	1287
4604	22	1288
4605	31	1288
4606	31	1289
4607	31	1290
4608	31	1291
4609	31	1292
4610	4	1293
4611	31	1293
4612	31	1294
4613	4	1295
4614	31	1295
4615	4	1296
4616	31	1296
4617	4	1297
4618	31	1297
4619	4	1298
4620	31	1298
4621	4	1299
4622	31	1299
4623	4	1300
4624	31	1300
4625	4	1301
4626	31	1301
4627	4	1302
4628	31	1302
4629	4	1303
4630	31	1303
4631	31	1304
4632	31	1305
4633	31	1306
4634	31	1307
4635	31	1308
4636	25	1309
4637	25	1310
4638	31	1311
4639	31	1313
4640	22	1314
4641	22	1315
4642	31	1315
4643	22	1316
4644	31	1316
4645	31	1317
4646	19	1319
4647	25	1319
4648	31	1319
4649	19	1320
4650	31	1320
4651	22	1321
4652	22	1322
4653	31	1322
4654	19	1323
4655	22	1323
4656	31	1323
4657	31	1325
4658	31	1327
4659	19	1328
4660	31	1328
4661	19	1329
4662	31	1329
4663	19	1330
4664	31	1330
4665	19	1331
4666	31	1331
4667	19	1332
4668	31	1332
4669	19	1333
4670	31	1333
4671	19	1334
4672	31	1334
4673	22	1335
4674	31	1335
4675	31	1336
4676	31	1337
4677	31	1338
4678	31	1339
4679	31	1340
4680	22	1342
4681	31	1343
4682	31	1344
4683	31	1345
4684	31	1346
4685	31	1347
4686	31	1348
4687	31	1349
4688	31	1350
4689	31	1351
4690	31	1352
4691	31	1353
4692	31	1354
4693	31	1355
4694	31	1356
4695	31	1357
4696	19	1358
4697	31	1358
4698	19	1359
4699	31	1359
4700	19	1360
4701	22	1360
4702	31	1360
4703	19	1361
4704	22	1361
4705	31	1361
4706	22	1362
4707	22	1363
4708	22	1364
4709	22	1365
4710	22	1366
4711	22	1367
4712	22	1368
4713	22	1369
4714	22	1370
4715	22	1371
4716	22	1372
4717	22	1373
4718	22	1374
4719	22	1375
4720	22	1376
4721	22	1377
4722	19	1378
4723	22	1378
4724	31	1378
4725	19	1379
4726	22	1379
4727	31	1379
4728	19	1380
4729	22	1380
4730	31	1380
4731	19	1381
4732	22	1381
4733	31	1381
4734	19	1382
4735	31	1382
4736	31	1383
4737	31	1384
4738	31	1385
4739	31	1386
4740	31	1387
4741	31	1388
4742	19	1389
4743	31	1389
4744	22	1390
4745	31	1391
4746	31	1392
4747	19	1393
4748	31	1393
4749	31	1394
4750	19	1395
4751	4	1395
4752	31	1395
4753	19	1396
4754	31	1396
4755	25	1397
4756	31	1397
4757	31	1398
4758	19	1399
4759	4	1399
4760	22	1400
4761	31	1400
4762	31	1401
4763	31	1402
4764	22	1403
4765	31	1403
4766	22	1404
4767	31	1404
4768	22	1405
4769	31	1405
4770	22	1406
4771	31	1406
4772	22	1407
4773	31	1407
4774	22	1411
4775	31	1411
4776	19	1412
4777	31	1413
4778	22	1414
4779	31	1414
4780	22	1415
4781	31	1415
4782	22	1416
4783	31	1416
4784	22	1417
4785	31	1417
4786	22	1419
4787	31	1419
4788	22	1420
4789	31	1420
4790	22	1421
4791	31	1421
4792	22	1422
4793	31	1422
4794	47	1423
4795	31	1423
4796	22	1424
4797	31	1425
4798	31	1426
4799	31	1427
4800	31	1428
4801	31	1429
4802	31	1430
4803	31	1431
4804	31	1432
4805	31	1433
4806	31	1434
4807	31	1435
4808	31	1436
4809	31	1437
4810	31	1438
4811	31	1439
4812	31	1440
4813	31	1441
4814	31	1442
4815	31	1443
4816	31	1444
4817	31	1445
4818	31	1446
4819	31	1447
4820	31	1448
4821	31	1449
4822	31	1450
4823	31	1451
4824	31	1452
4825	31	1453
4826	31	1454
4827	31	1456
4828	31	1457
4829	31	1458
4830	31	1459
4831	31	1460
4832	31	1462
4833	31	1463
4834	31	1465
4835	19	1467
4836	4	1467
4837	31	1467
4838	31	1468
4839	31	1469
4840	31	1470
4841	31	1471
4842	19	1472
4843	31	1472
4844	31	1473
4845	31	1474
4846	19	1475
4847	31	1475
4848	22	1476
4849	31	1476
4850	22	1477
4851	31	1477
4852	22	1478
4853	31	1478
4854	22	1479
4855	31	1479
4856	22	1480
4857	31	1480
4858	22	1481
4859	31	1481
4860	22	1482
4861	31	1482
4862	22	1483
4863	31	1483
4864	22	1484
4865	31	1484
4866	22	1485
4867	31	1485
4868	22	1486
4869	31	1486
4870	22	1487
4871	31	1487
4872	22	1488
4873	31	1488
4874	22	1489
4875	31	1489
4876	22	1490
4877	31	1490
4878	22	1491
4879	31	1491
4880	22	1492
4881	31	1492
4882	22	1493
4883	31	1493
4884	22	1497
4885	31	1497
4886	22	1498
4887	31	1498
4888	31	1499
4889	19	1500
4890	31	1500
4891	22	1501
4892	31	1501
4893	22	1502
4894	31	1502
4895	31	1503
4896	31	1504
4897	22	1505
4898	31	1505
4899	22	1506
4900	31	1506
4901	22	1507
4902	31	1507
4903	22	1508
4904	22	1509
4905	31	1509
4906	22	1510
4907	31	1510
4908	22	1511
4909	22	1512
4910	31	1512
4911	22	1513
4912	31	1513
4913	22	1514
4914	31	1514
4915	22	1515
4916	31	1515
4917	31	1516
4918	31	1517
4919	31	1518
4920	4	1519
4921	31	1519
4922	31	1520
4923	31	1521
4924	31	1522
4925	31	1523
4926	31	1524
4927	31	1525
4928	31	1526
4929	4	1527
4930	31	1527
4931	31	1528
4932	4	1529
4933	31	1529
4934	31	1530
4935	31	1531
4936	31	1532
4937	31	1533
4938	31	1535
4939	31	1536
4940	31	1537
4941	31	1538
4942	31	1539
4943	31	1540
4944	31	1541
4945	31	1542
4946	31	1543
4947	31	1544
4948	31	1545
4949	31	1546
4950	31	1547
4951	31	1548
4952	31	1549
4953	31	1550
4954	31	1551
4955	31	1552
4956	22	1553
4957	22	1554
4958	47	1554
4959	31	1555
4960	19	1557
4961	31	1557
4962	25	1558
4963	31	1558
4964	31	1559
4965	31	1560
4966	19	1561
4967	31	1561
4968	19	1563
4969	31	1563
4970	31	1564
4971	19	1565
4972	31	1565
4973	22	1568
4974	22	1569
4975	46	1570
4976	22	1573
4977	31	1573
4978	22	1574
4979	31	1574
4980	22	1575
4981	22	1576
4982	31	1577
4983	31	1578
4984	31	1579
4985	31	1580
4986	31	1581
4987	31	1582
4988	31	1583
4989	31	1584
4990	31	1585
4991	31	1586
4992	31	1587
4993	31	1588
4994	31	1590
4995	31	1591
4996	31	1592
4997	31	1593
4998	31	1595
4999	31	1596
5000	31	1597
5001	31	1598
5002	31	1599
5003	31	1600
5004	31	1601
5005	31	1602
5006	31	1603
5007	19	1604
5008	31	1604
5009	31	1605
5010	31	1606
5011	31	1607
5012	19	1608
5013	31	1608
5014	22	1609
5015	31	1610
5016	31	1611
5017	19	1612
5018	31	1612
5019	31	1613
5020	31	1614
5021	31	1615
5022	19	1616
5023	31	1616
5024	31	1617
5025	31	1619
5026	31	1621
5027	31	1622
5028	22	1623
5029	22	1624
5030	31	1625
5031	22	1626
5032	22	1627
5033	22	1628
5034	31	1628
5035	31	1629
5036	31	1630
5037	31	1631
5038	31	1632
5039	31	1633
5040	31	1634
5041	31	1635
5042	31	1636
5043	31	1637
5044	31	1638
5045	31	1639
5046	31	1640
5047	31	1641
5048	31	1642
5049	31	1643
5050	31	1644
5051	31	1646
5052	31	1648
5053	31	1649
5054	31	1650
5055	31	1651
5056	31	1652
5057	31	1653
5058	31	1654
5059	31	1655
5060	31	1656
5061	31	1657
5062	31	1658
5063	31	1659
5064	31	1660
5065	31	1661
5066	31	1662
5067	31	1664
5068	31	1665
5069	31	1666
5070	31	1667
5071	31	1668
5072	31	1669
5073	31	1670
5074	31	1671
5075	31	1672
5076	31	1673
5077	31	1674
5078	31	1677
5079	31	1678
5080	31	1679
5081	31	1680
5082	31	1681
5083	31	1682
5084	31	1683
5085	31	1684
5086	31	1685
5087	31	1686
5088	31	1688
5089	31	1689
5090	31	1690
5091	31	1691
5092	31	1692
5093	31	1693
5094	31	1694
5095	31	1695
5096	31	1696
5097	31	1697
5098	31	1698
5099	31	1699
5100	31	1700
5101	31	1701
5102	31	1702
5103	31	1703
5104	31	1704
5105	31	1705
5106	31	1706
5107	31	1707
5108	31	1708
5109	31	1709
5110	31	1710
5111	31	1711
5112	31	1712
5113	31	1713
5114	31	1714
5115	31	1715
5116	31	1716
5117	31	1717
5118	31	1718
5119	31	1719
5120	31	1720
5121	31	1721
5122	31	1722
5123	31	1723
5124	31	1724
5125	31	1725
5126	31	1726
5127	31	1727
5128	31	1728
5129	31	1729
5130	31	1730
5131	31	1731
5132	31	1732
5133	31	1733
5134	31	1734
5135	31	1735
5136	31	1737
5137	31	1740
5138	31	1741
5139	31	1742
5140	31	1743
5141	31	1744
5142	31	1745
5143	4	1746
5144	31	1746
5145	31	1747
5146	31	1748
5147	22	1750
5148	22	1754
5149	19	1756
5150	19	1757
5151	19	1758
5152	22	1762
5153	22	1763
5154	22	1765
5155	22	1766
5156	22	1767
5157	31	1769
5158	31	1770
5159	31	1784
5160	31	1785
5161	31	1786
5162	31	1787
5163	31	1792
5164	31	1793
5165	31	1794
5166	31	1795
5167	31	1800
5168	31	1801
5169	31	1802
5170	31	1804
5171	31	1805
5172	31	1806
5173	31	1807
5174	31	1809
5175	31	1810
5176	31	1811
5177	31	1812
5178	31	1813
5179	31	1815
5180	31	1817
5181	31	1818
5182	31	1819
5183	31	1820
5184	31	1821
5185	31	1822
5186	31	1823
5187	31	1825
5188	31	1826
5189	31	1827
5190	31	1828
5191	31	1829
5192	31	1831
5193	31	1832
5194	31	1833
5195	31	1834
5196	31	1835
5197	31	1839
5198	31	1840
5199	31	1847
5200	31	1848
5201	31	1849
5202	31	1850
5203	31	1851
5204	31	1852
5205	31	1853
5206	31	1854
5207	31	1855
5208	31	1856
5209	31	1857
5210	31	1858
5211	31	1861
5212	31	1863
5213	31	1873
5214	31	1874
5215	31	1875
5216	31	1876
5217	31	1877
5218	31	1878
5219	31	1879
5220	31	1880
5221	31	1881
5222	31	1882
5223	31	1883
5224	31	1884
5225	31	1886
5226	31	1889
5227	31	1890
5228	31	1891
5229	31	1892
5230	31	1893
5231	31	1894
5232	31	1895
5233	31	1896
5234	31	1897
5235	31	1898
5236	31	1899
5237	31	1900
5238	31	1901
5239	31	1902
5240	31	1906
5241	31	1907
5242	31	1908
5243	31	1909
5244	31	1910
5245	31	1911
5246	31	1912
5247	31	1913
5248	31	1993
5249	31	1994
5250	31	1995
5251	19	1996
5252	31	1996
5253	4	1997
5254	31	1997
5255	22	1999
5256	31	2001
5257	31	2002
5258	4	2003
5259	31	2003
5260	4	2004
5261	31	2004
5262	31	2005
5263	4	2006
5264	31	2006
5265	4	2007
5266	31	2007
5267	4	2010
5268	31	2010
5269	31	2015
5270	4	2016
5271	4	2018
5272	31	2019
5273	19	2020
5274	31	2021
5275	31	2022
5276	19	2023
5277	31	2024
5278	22	2025
5279	46	2025
5280	31	2025
5281	31	2026
5282	22	2027
5283	31	2027
5284	22	2028
5285	31	2028
5286	22	2030
5287	47	2030
5288	31	2030
5289	22	2031
5290	31	2031
5291	46	2032
5292	46	2033
5293	22	2034
5294	31	2034
5295	22	2035
5296	22	2036
5297	31	2036
5298	31	2037
5299	31	2038
5300	22	2039
5301	47	2039
5302	31	2039
5303	22	2040
5304	31	2040
5305	31	2041
5306	31	2042
5307	22	2043
5308	31	2043
5309	4	2044
5310	31	2044
5311	31	2045
5312	22	2046
5313	22	2047
5314	31	2047
5315	22	2048
5316	31	2048
5317	31	2049
5318	31	2050
5319	31	2051
5320	31	2052
5321	31	2053
5322	22	2054
5323	4	2055
5324	31	2055
5325	4	2056
5326	31	2056
5327	31	2057
5328	4	2058
5329	22	2059
5330	22	2063
5331	19	2064
5332	22	2065
5333	31	2065
5334	22	2066
5335	31	2066
5336	22	2067
5337	31	2067
5338	22	2068
5339	31	2068
5340	22	2069
5341	31	2069
5342	46	2070
5343	31	2070
5344	31	2071
5345	22	2072
5346	4	2073
5347	19	2074
5348	31	2076
5349	31	2077
5350	31	2078
5351	22	2079
5352	22	2080
5353	31	2080
5354	22	2082
5355	31	2082
5356	31	2083
5357	31	2084
5358	31	2085
5359	31	2086
5360	22	2087
5361	31	2087
5362	22	2089
5363	31	2089
5364	4	2090
5365	47	2091
5366	31	2091
5367	31	2093
5368	31	2094
5369	31	2095
5370	22	2096
5371	31	2096
5372	22	2097
5373	31	2097
5374	22	2098
5375	31	2098
5376	31	2099
5377	31	2100
5378	22	2101
5379	22	2102
5380	31	2102
5381	22	2103
5382	31	2103
5383	22	2104
5384	4	2105
5385	31	2105
5386	31	2106
5387	4	2107
5388	31	2107
5389	31	2108
5390	31	2109
5391	19	2110
5392	31	2110
5393	22	2111
5394	31	2111
5395	22	2112
5396	4	2112
5397	31	2112
5398	22	2113
5399	22	2114
5400	22	2115
5401	22	2116
5402	22	2117
5403	22	2118
5404	22	2119
5405	22	2120
5406	22	2121
5407	22	2122
5408	22	2123
5409	22	2124
5410	22	2125
5411	22	2126
5412	22	2127
5413	22	2128
5414	22	2129
5415	22	2130
5416	22	2131
5417	22	2132
5418	22	2133
5419	22	2134
5420	22	2135
5421	22	2136
5422	22	2137
5423	22	2138
5424	22	2139
5425	22	2140
5426	22	2141
5427	22	2142
5428	22	2143
5429	22	2144
5430	22	2145
5431	22	2146
5432	22	2147
5433	4	2148
5434	4	2149
5435	31	2149
5436	4	2152
5437	31	2153
5438	31	2154
5439	31	2155
5440	31	2156
5441	31	2157
5442	31	2158
5443	31	2159
5444	31	2160
5445	31	2161
5446	31	2162
5447	31	2163
5448	31	2164
5449	31	2165
5450	31	2166
5451	31	2167
5452	31	2168
5453	31	2169
5454	31	2170
5455	31	2171
5456	31	2172
5457	31	2173
5458	31	2174
5459	31	2175
5460	4	2176
5461	31	2176
5462	31	2177
5463	31	2178
5464	4	2179
5465	4	2180
5466	31	2182
5467	31	2183
5468	25	2184
5469	19	2185
5470	19	2186
5471	19	2187
5472	19	2188
5473	19	2189
5474	11	2190
5475	22	2190
5476	22	2194
5477	22	2195
5478	22	2196
5479	22	2197
5480	19	2201
5481	19	2203
5482	31	2204
5483	31	2205
5484	31	2206
5485	22	2207
5486	31	2207
5487	31	2208
5488	31	2209
5489	19	2210
5490	31	2210
5491	31	2211
5492	31	2212
5493	31	2213
5494	22	2214
5495	22	2215
5496	31	2216
5497	31	2217
5498	31	2218
5499	31	2219
5500	31	2220
5501	31	2221
5502	31	2222
5503	31	2223
5504	31	2224
5505	31	2225
5506	31	2226
5507	31	2227
5508	31	2228
5509	19	2229
5510	31	2229
5511	19	2230
5512	31	2230
5513	22	2231
5514	19	2232
5515	31	2232
5516	31	2233
5517	22	2234
5518	22	2235
5519	31	2235
5520	22	2236
5521	31	2236
5522	22	2237
5523	31	2237
5524	22	2238
5525	22	2239
5526	31	2239
5527	31	2240
5528	22	2241
5529	31	2241
5530	31	2242
5531	31	2243
5532	22	2245
5533	31	2245
5534	31	2247
5535	31	2248
5536	31	2249
5537	31	2250
5538	31	2251
5539	31	2253
5540	31	2254
5541	31	2255
5542	31	2258
5543	31	2259
5544	31	2260
5545	31	2261
5546	19	2262
5547	19	2263
5548	19	2264
5549	19	2267
5550	4	2271
5551	31	2276
5552	47	2277
5553	31	2277
5554	22	2278
5555	31	2278
5556	22	2279
5557	31	2279
5558	22	2280
5559	22	2281
5560	22	2282
5561	31	2283
5562	22	2284
5563	22	2285
5564	31	2287
5565	31	2288
5566	31	2289
5567	31	2290
5568	31	2292
5569	31	2293
5570	31	2295
5571	31	2299
5572	31	2300
5573	31	2301
5574	31	2302
5575	31	2303
5576	31	2304
5577	4	2305
5578	31	2305
5579	31	2306
5580	31	2310
5581	31	2313
5582	31	2315
5583	4	2316
5584	4	2317
5585	4	2318
5586	4	2319
5587	4	2320
5588	4	2322
5589	4	2323
5590	31	2323
5591	4	2324
5592	31	2324
5593	31	2325
5594	31	2326
5595	31	2327
5596	31	2328
5597	4	2329
5598	19	2339
5599	19	2347
5600	19	2348
5601	19	2364
5602	19	2365
5603	19	2366
5604	19	2367
5605	19	2368
5606	19	2369
5607	19	2370
5608	19	2371
5609	19	2372
5610	19	2373
5611	19	2374
5612	19	2375
5613	19	2376
5614	19	2377
5615	19	2378
5616	19	2379
5617	19	2380
5618	19	2381
5619	19	2382
5620	19	2383
5621	19	2384
5622	19	2385
5623	19	2386
5624	19	2387
5625	19	2388
5626	19	2389
5627	19	2390
5628	19	2391
5629	19	2392
5630	19	2393
5631	19	2394
5632	19	2404
5633	19	2405
5634	19	2410
5635	22	2420
5636	22	2422
5637	22	2423
5638	22	2424
5639	22	2425
5640	22	2426
5641	22	2427
5642	22	2431
5643	22	2432
5644	22	2433
5645	22	2434
5646	22	2436
5647	22	2438
5648	31	2452
5649	31	2453
5650	31	2454
5651	31	2455
5652	31	2456
5653	31	2457
5654	31	2458
5655	31	2459
5656	31	2460
5657	31	2462
5658	31	2463
5659	31	2464
5660	31	2465
5661	31	2466
5662	31	2467
5663	31	2468
5664	31	2469
5665	31	2471
5666	31	2472
5667	31	2473
5668	31	2474
5669	31	2475
5670	31	2476
5671	31	2478
5672	31	2480
5673	31	2481
5674	31	2482
5675	31	2483
5676	31	2484
5677	31	2485
5678	31	2486
5679	31	2492
5680	31	2495
5681	31	2496
5682	31	2497
5683	4	2500
5684	31	2502
5685	31	2503
5686	31	2504
5687	31	2505
5688	4	2506
5689	31	2508
5690	31	2532
5691	31	2533
5692	46	2806
5693	46	2807
5694	46	2808
5695	46	2809
5696	46	2810
5697	19	2811
5698	22	2811
5699	22	2812
5700	47	2812
5701	31	2812
5702	31	2813
5703	22	2814
5704	47	2814
5705	31	2814
5706	22	2815
5707	47	2815
5708	31	2815
5709	22	2816
5710	47	2816
5711	31	2816
5712	22	2817
5713	47	2817
5714	31	2817
5715	22	2818
5716	47	2818
5717	31	2818
5718	22	2819
5719	31	2819
5720	22	2820
5721	31	2820
5722	31	2821
5723	22	2822
5724	31	2822
5725	22	2823
5726	31	2823
5727	22	2824
5728	31	2824
5729	22	2825
5730	31	2825
5731	22	2826
5732	31	2826
5733	22	2827
5734	31	2827
5735	22	2828
5736	31	2828
5737	22	2829
5738	31	2829
5739	22	2831
5740	31	2831
5741	4	2832
5742	4	2834
5743	31	2834
5744	31	2835
5745	31	2836
5746	31	2837
5747	31	2838
5748	31	2839
5749	31	2844
5750	31	2845
5751	31	2846
5752	31	2847
5753	31	2848
5754	31	2849
5755	22	2850
5756	19	2851
5757	31	2851
5758	22	2852
5759	46	2852
5760	19	2854
5761	31	2854
5762	19	2855
5763	31	2855
5764	19	2856
5765	31	2856
5766	22	2857
5767	46	2857
5768	31	2857
5769	22	2858
5770	46	2858
5771	22	2859
5772	46	2859
5773	22	2860
5774	46	2860
5775	22	2861
5776	46	2861
5777	22	2862
5778	46	2862
5779	22	2863
5780	46	2863
5781	31	2863
5782	22	2864
5783	46	2864
5784	31	2864
5785	22	2865
5786	46	2865
5787	31	2865
5788	31	2866
5789	31	2867
5790	31	2868
5791	31	2869
5792	46	2870
5793	22	2871
5794	46	2872
5795	46	2873
5796	46	2874
5797	22	2875
5798	22	2876
5799	22	2877
5800	19	2878
5801	31	2878
5802	31	2879
5803	4	2880
5804	4	2881
5805	31	2882
5806	22	2883
5807	31	2883
5808	22	2884
5809	31	2884
5810	31	2885
5811	31	2886
5812	22	2887
5813	31	2887
5814	22	2888
5815	31	2888
5816	22	2889
5817	31	2889
5818	22	2890
5819	31	2890
5820	22	2891
5821	31	2891
5822	22	2892
5823	31	2892
5824	22	2893
5825	31	2893
5826	22	2894
5827	31	2894
5828	22	2895
5829	31	2895
5830	4	2896
5831	31	2896
5832	4	2897
5833	31	2897
5834	4	2898
5835	31	2898
5836	46	2899
5837	25	2900
5838	19	2901
5839	46	2902
5840	46	2903
5841	46	2904
5842	31	2906
5843	19	2907
5844	31	2907
5845	31	2911
5846	31	2912
5847	31	2913
5848	31	2914
5849	31	2915
5850	22	2916
5851	31	2916
5852	47	2917
5853	31	2917
5854	22	2918
5855	31	2918
5856	22	2920
5857	22	2921
5858	31	2921
5859	22	2922
5860	31	2922
5861	22	2923
5862	31	2923
5863	47	2924
5864	31	2924
5865	47	2925
5866	31	2925
5867	47	2926
5868	31	2926
5869	47	2927
5870	31	2927
5871	47	2928
5872	31	2928
5873	22	2929
5874	31	2929
5875	22	2930
5876	31	2930
5877	22	2931
5878	31	2931
5879	22	2932
5880	31	2932
5881	22	2933
5882	31	2933
5883	31	2938
5884	31	2939
5885	31	2940
5886	31	2941
5887	31	2942
5888	31	2943
5889	19	2945
5890	31	2945
5891	31	2946
5892	19	2947
5893	4	2947
5894	31	2948
5895	25	2949
5896	31	2949
5897	19	2950
5898	31	2952
5899	31	2953
5900	31	2954
5901	31	2955
5902	31	2956
5903	31	2957
5904	22	2958
5905	31	2958
5906	4	2959
5907	31	2960
5908	31	2961
5909	31	2962
5910	31	2963
5911	31	2964
5912	31	2965
5913	31	2966
5914	31	2967
5915	31	2968
5916	31	2969
5917	31	2970
5918	31	2971
5919	31	2973
5920	31	2974
5921	4	2975
5922	31	2976
5923	4	2977
5924	31	2977
5925	22	2980
5926	22	2981
5927	22	2983
5928	22	2984
5929	22	2985
5930	22	2986
5931	22	2987
5932	22	2991
5933	22	2992
5934	47	2998
5935	22	3000
5936	22	3001
5937	22	3002
5938	22	3003
5939	22	3004
5940	22	3005
5941	22	3006
5942	22	3007
5943	22	3008
5944	22	3009
5945	22	3010
5946	22	3011
5947	22	3012
5948	22	3013
5949	22	3014
5950	47	3015
5951	47	3016
5952	47	3017
5953	47	3018
5954	47	3019
5955	31	3029
5956	31	3030
5957	31	3035
5958	31	3036
5959	31	3037
5960	31	3038
5961	31	3039
5962	31	3040
5963	31	3041
5964	31	3042
5965	31	3050
5966	31	3051
5967	31	3052
5968	31	3056
5969	31	3061
5970	31	3062
5971	31	3063
5972	31	3068
5973	31	3069
5974	31	3070
5975	31	3071
5976	31	3074
5977	4	3075
5978	31	3088
5979	31	3089
5980	31	3090
5981	31	3091
5982	31	3092
5983	31	3093
5984	31	3094
5985	31	3095
5986	31	3096
5987	31	3106
5988	31	3107
5989	31	3108
5990	31	3109
5991	31	3110
5992	31	3111
5993	31	3112
5994	31	3113
5995	31	3114
5996	31	3115
5997	31	3116
5998	31	3117
5999	31	3121
6000	31	3122
6001	31	3123
6002	31	3124
6003	31	3125
6004	31	3126
6005	31	3127
6006	31	3128
6007	31	3129
6008	31	3130
6009	31	3131
6010	31	3132
6011	31	3133
6012	31	3134
6013	31	3135
6014	31	3136
6015	31	3137
6016	31	3138
6017	31	3139
6018	31	3140
6019	31	3146
6020	31	3147
6021	31	3148
6022	31	3149
6023	4	3151
\.


--
-- Data for Name: user_desired_jobs; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.user_desired_jobs (id, jobs_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_jobs; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.user_jobs (id, user_id, jobs_id, status) FROM stdin;
\.


--
-- Data for Name: veterans; Type: TABLE DATA; Schema: public; Owner: joeylundquist
--

COPY public.veterans (id, user_id, mos_id, status) FROM stdin;
\.


--
-- Name: employer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.employer_id_seq', 1, false);


--
-- Name: job_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.job_skills_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: mos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.mos_id_seq', 3433, true);


--
-- Name: mos_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.mos_skills_id_seq', 6023, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.skills_id_seq', 57, true);


--
-- Name: user_desired_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.user_desired_jobs_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- Name: user_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.user_jobs_id_seq', 1, false);


--
-- Name: veterans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joeylundquist
--

SELECT pg_catalog.setval('public.veterans_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

