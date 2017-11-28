--FOREIGN KEYS USE --
PRAGMA foreign_keys = ON;

-- CREATING TABLES --
CREATE TABLE country(
	id INTEGER PRIMARY KEY ASC, name TEXT);

CREATE TABLE morra(
	id INTEGER PRIMARY KEY ASC, age INTEGER, name TEXT);

CREATE TABLE instagram(
	id INTEGER PRIMARY KEY, profile_url TEXT,
	nfollowers INTEGER, nfollowing INTEGER, nposts INTEGER);

-- CREATING RELATIONS --

CREATE TABLE morra_country(id INTEGER PRIMARY KEY ASC,
	id_country INTEGER, id_morra INTEGER);

-- create one to one relation morra_instagram --
CREATE TABLE morra_instagram(
	id INTEGER PRIMARY KEY ASC, morra_id INTEGER, instagram_id INTEGER
	 FOREIGN KEY(morra_id) REFERENCES morra(id),
	 FOREIGN KEY(instagram_id) REFERENCES instagram(id));

--CREATING THE DATABASE--
INSERT INTO country (id,name) VALUES (1, 'Mexico');