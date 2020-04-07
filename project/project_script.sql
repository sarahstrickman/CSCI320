CREATE TABLE PERSON ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	GENDER VARCHAR(10) NOT NULL, CONSTRAINT C1 CHECK 
	(GENDER IN ('male', 'female', 'other')), 
	AGECAT VARCHAR(10) NOT NULL,
	CONSTRAINT C2 CHECK (AGECAT IN 
	('18-44', '45-61', '62-88', '89-120'))
)

CREATE TABLE LEANING ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	FOREIGN KEY (QKEY) REFERENCES PERSON (QKEY)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONG VARCHAR(40) NOT NULL, CONSTRAINT C1 CHECK (CONG IN 
	('democrat', 'republican', 'other', 'unsure')),
	CONGA VARCHAR(40) DEFAULT NULL, CONSTRAINT C1 CHECK (CONGA IN 
	('democrat', 'republican', 'other', 'unsure')),
)

CREATE TABLE VOTE ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	FOREIGN KEY (QKEY) REFERENCES PERSON (QKEY)
	ON DELETE CASCADE ON UPDATE CASCADE,
	VTPLAN VARCHAR(40),
	CONSTRAINT C1 CHECK (VTPLAN IN 
	('vote on', 'vote before', 'not voting', 'unsure')
)

CREATE TABLE QUESTION ( QID VARCHAR(10) NOT NULL PRIMARY KEY,
	QUESTION VARCHAR(200) NOT NULL
)

CREATE TABLE ANSWER ( QKEY VARCHAR(10) NOT NULL,
	QID VARCHAR(10) NOT NULL,
	PRIMARY KEY (QKEY, QID),
	FOREIGN KEY (QKEY) REFERENCES PERSON (QKEY)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (QID) REFERENCES QUESTION (QID)
	ON DELETE CASCADE ON UPDATE CASCADE,
	ANSWER VARCHAR(200)
)



INSERT INTO QUESTION ( 'CONG[S]', 
	'If the elections for the U.S. House of Representatives were being held TODAY, what party would you vote for?'
)

INSERT INTO QUESTION ( 'CONGA[S]', 
	'As of TODAY, what political party do you lean more towards?'
)

INSERT INTO QUESTION ( 'VTPLAN[S]',
	'Do you plan to vote in the elections this November?'
)

INSERT INTO QUESTION ( 'GENDOPT [S]',
	'When a form or online profile asks about a person�s gender, do you think it should include options other than �man� and �woman� for people who don�t identify as either?'
}

INSERT INTO QUESTION ( 'VTSYSSEC_US [S]',
	'How confident are you that election systems in the UNITED STATES are secure from hacking and other technological threats?'
)

INSERT INTO QUESITON ( 'CANDHOUSAT [S]',
	How satisfied are you with the choice of candidates for Congress in your district this November?
)

INSERT INTO QUESTION ( 'ELCTCMMT_R [S]',
	'How committed would you say the REPUBLICAN PARTY is to making sure elections in the United States are fair and accurate?'
)

INSERT INTO QUESTION ( 'ELCTCMMT_D [S]',
	'How committed would you say the DEMOCRATIC PARTY is to making sure elections in the United States are fair and accurate?'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'100604', 'male', '45-61'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'100604', 'other', 'republican'
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'100604', 'on'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'100363', 'female', '45-61'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'100363', 'unsure', 'unsure'
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'100363', 'on'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'100197', 'female', '89-120'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'100197', 'democrat', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'100197', 'before'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'102198', 'female', '18-44'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'102198', 'republican', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'102198', 'before'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'103538', 'male', '62-88'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'103538', 'democrat', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'103538', 'before'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'106297', 'male', '89-120'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'106297', 'democrat', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'106297', 'before'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'100598', 'female', '62-88'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'100598', 'democrat', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'100598', 'before'
)



INSERT INTO PERSON(QKEY, GENDER, AGECAT) VALUES (
	'651945', 'male', '18-44'
)

INSERT INTO LEANING(QKEY, CONG, CONGA) VALUES (
	'651945', 'republican', NULL
)

INSERT INTO VOTE(QKEY, VTPLAN) VALUES (
	'651945', 'on'
)











































