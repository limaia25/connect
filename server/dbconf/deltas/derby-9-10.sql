DROP TABLE TEMPLATE;

RENAME TABLE CHANNEL_STATISTICS TO __CHANNEL_STATISTICS;
RENAME TABLE ATTACHMENT TO __ATTACHMENT;
RENAME TABLE MESSAGE TO __MESSAGE;
RENAME TABLE ALERT TO __ALERT;
RENAME TABLE CHANNEL_ALERT TO __CHANNEL_ALERT;
RENAME TABLE ALERT_EMAIL TO __ALERT_EMAIL;

ALTER TABLE CHANNEL ADD COLUMN NEXT_METADATA_ID INTEGER NOT NULL;

CREATE TABLE CHANNEL_TAGS (
	CHANNEL_ID CHAR(36) NOT NULL,
	TAG VARCHAR(255) NOT NULL,
	CONSTRAINT CHANNEL_TAGS_PKEY PRIMARY KEY (channel_id, tag)
);

CREATE TABLE ALERT (
	ID VARCHAR(36) NOT NULL PRIMARY KEY,
	NAME VARCHAR(256) NOT NULL UNIQUE,
	ALERT CLOB NOT NULL
);