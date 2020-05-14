CREATE TABLE PERSON ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	GENDER VARCHAR(10) NOT NULL, CONSTRAINT C1 CHECK 
	(GENDER IN ('male', 'female', 'other')), 
	AGE INTEGER NOT NULL
)

CREATE TABLE LEANING ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	FOREIGN KEY (QKEY) REFERENCES PERSON (QKEY)
	ON DELETE CASCADE ON UPDATE CASCADE,
	CONG VARCHAR(40) NOT NULL, CONSTRAINT C1 CHECK (CONG IN 
	('democrat', 'republican', 'other', 'unsure')),
	CONGA VARCHAR(40), CONSTRAINT C1 CHECK (CONGA IN 
	('democrat', 'republican', 'other', 'unsure')),
)

CREATE TABLE VOTE ( QKEY VARCHAR(10) NOT NULL PRIMARY KEY,
	FOREIGN KEY (QKEY) REFERENCES PERSON (QKEY)
	ON DELETE CASCADE ON UPDATE CASCADE,
	VTPLAN VARCHAR(40),
	CONSTRAINT C1 CHECK (VTPLAN IN 
	('on', 'before', 'not voting', 'unsure')
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
	ON DELETE CASCADE ON UPDATE CASCADE
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
	'When a form or online profile asks about a person’s gender, do you think it should include options other than “man” and “woman” for people who don’t identify as either?'
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











































