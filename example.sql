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
