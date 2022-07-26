
-- USER is a reserved keyword with Postgres
-- You must use double quotes in every query that user is in:
-- ex. SELECT * FROM "user";
-- Otherwise you will have errors!
CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL,
    state VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    user_type VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR
);

CREATE TABLE employer(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES "user",
    company VARCHAR(1024) NOT NULL,
    status VARCHAR DEFAULT 'Pending'
);

CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    job_name VARCHAR(1024) NOT NULL,
    employer_id INT REFERENCES "user",
    job_description VARCHAR,
    city VARCHAR,
    state VARCHAR
);


CREATE TABLE mos(
    id SERIAL PRIMARY KEY,
    mos VARCHAR(255) NOT NULL,
    name VARCHAR(2048) NOT NULL,
    branch VARCHAR(255) NOT NULL
);


CREATE TABLE skills(
    id SERIAL PRIMARY KEY,
    skill_name VARCHAR(1024) NOT NULL
);


CREATE TABLE mos_skills(
    id SERIAL PRIMARY KEY,
    skill_id INT REFERENCES skills,
    mos_id INT REFERENCES mos
);

CREATE TABLE job_skills(
    id SERIAL PRIMARY KEY,
    skills_id INT REFERENCES skills,
    job_id INT REFERENCES jobs
);

CREATE TABLE veterans(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES "user",
    mos_id INT REFERENCES mos,
    status VARCHAR(255) DEFAULT 'Pending'
);

CREATE TABLE user_jobs(
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES "user",
    jobs_id INT REFERENCES jobs,
    status VARCHAR(255)
);

CREATE TABLE user_desired_jobs(
    id SERIAL PRIMARY KEY,
    jobs_id INT REFERENCES jobs,
    user_id INT REFERENCES "user"
);

INSERT INTO "skills" (skill_name)
	VALUES ('adapt'),
	('adaptability'),
	('admin'),
	('analyze'),
	('assessment'),
	('collaboration'),
	('commands'),
	('communication'),
	('community-relations'),
	('compromise'),
	('conduct-liaison'),
	('conflict-management'),
	('consultative'),
	('cooperation'),
	('coordinates-activities-of-subordinate-units'),
	('counseling'),
	('counterintelligence'),
	('creative-thinking'),
	('decision'),
	('decisionMaking'),
	('decision-making'),
	('dependability'),
	('designing'),
	('encourage'),
	('engineering'),
	('evaluate'),
	('formulate'),
	('improvise'),
	('intelligence'),
	('language'),
	('leadership'),
	('liaison'),
	('listening'),
	('logistic'),
	('maintains-liaison'),
	('management'),
	('motivation'),
	('negotiation'),
	('openness-to-criticism'),
	('organizational'),
	('persuasion'),
	('planning'),
	('preparation'),
	('problem-solving'),
	('reliability'),
	('resolution'),
	('resourcefulness'),
	('respond'),
	('responsibility'),
	('stress'),
	('stress-management'),
	('supervise'),
	('teamwork'),
	('time-critical'),
	('time-management'),
	('time-sensitive');