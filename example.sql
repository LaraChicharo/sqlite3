--FOREIGN KEYS USE --
PRAGMA foreign_keys = ON;

-- CREATING TABLES --
CREATE TABLE country(
	id INTEGER PRIMARY KEY ASC, name TEXT);

CREATE TABLE morra(
	id INTEGER PRIMARY KEY ASC, age INTEGER, name TEXT);

CREATE TABLE instagram(
	id INTEGER PRIMARY KEY, username TEXT,
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

-- INSERTING VALUES --
INSERT INTO country(name) VALUES ("Mexico");
INSERT INTO country(name) VALUES ("Rusia");
INSERT INTO country(name) VALUES ("Australia");


INSERT INTO morra(age, name) VALUES (20, "Angelina Danilova");
INSERT INTO morra(age, name) VALUES (19, "Anastasia Fomicheva");
INSERT INTO morra(age, name) VALUES (18, "Julia");
INSERT INTO morra(age, name) VALUES (16, "Lisa");
INSERT INTO morra(age, name) VALUES (16, "Aurora");
INSERT INTO morra(age, name) VALUES (23, "Carreño");
INSERT INTO morra(age, name) VALUES (15, "Mikaela Binns-Rorke");

INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("angelinadanilova", 569000, 920, 2400);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("anasta_fo_", 4379, 290, 703);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("jou.s_", 493, 940, 4);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("nedonebes_", 15400, 200, 61);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("wormdrool", 300, 166, 473);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("carrenopol", 2986, 442, 286);
INSERT INTO instagram(username, nfollowers, nfollowing, nposts)
VALUES ("mikibinnsrorke", 26800, 98, 299);
