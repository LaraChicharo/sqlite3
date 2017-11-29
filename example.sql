--FOREIGN KEYS USE --
PRAGMA foreign_keys = ON;

-- CREATING TABLES --
CREATE TABLE country(
	id INTEGER PRIMARY KEY ASC, name TEXT);

CREATE TABLE morra(
	id INTEGER PRIMARY KEY ASC, age INTEGER, name TEXT,
	country_id INTEGER, FOREIGN KEY(country_id) REFERENCES country(id));

CREATE TABLE instagram(
	id INTEGER PRIMARY KEY, username TEXT,
	nfollowers INTEGER, nfollowing INTEGER, nposts INTEGER);

-- create one to one relation morra_instagram --
CREATE TABLE morra_instagram(
	id INTEGER PRIMARY KEY ASC,
	morra_id INTEGER UNIQUE,
	instagram_id INTEGER UNIQUE,
	FOREIGN KEY(morra_id) REFERENCES morra(id),
	FOREIGN KEY(instagram_id) REFERENCES instagram(id));

-- INSERTING VALUES --
INSERT INTO country(name) VALUES ("Mexico");
INSERT INTO country(name) VALUES ("Rusia");
INSERT INTO country(name) VALUES ("Australia");
INSERT INTO country(name) VALUES ("Senegal");
INSERT INTO country(name) VALUES ("Brasil");
INSERT INTO country(name) VALUES ("Yugslavia");
INSERT INTO country(name) VALUES ("Alemania");
INSERT INTO country(name) VALUES ("Chad");


INSERT INTO morra(age, name, country_id)
VALUES (20, "Angelina Danilova", 2);
INSERT INTO morra(age, name, country_id)
VALUES (19, "Anastasia Fomicheva", 2);
INSERT INTO morra(age, name, country_id)
VALUES (18, "Julia", 2);
INSERT INTO morra(age, name, country_id)
VALUES (16, "Lisa", 2);
INSERT INTO morra(age, name, country_id)
VALUES (16, "Aurora", 1);
INSERT INTO morra(age, name, country_id)
VALUES (23, "Carreño", 1);
INSERT INTO morra(age, name, country_id)
VALUES (15, "Mikaela Binns-Rorke", 3);

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

INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (1, 1);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (2, 2);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (3, 3);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (4, 4);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (5, 5);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (6, 6);
INSERT INTO morra_instagram(morra_id, instagram_id)
VALUES (7, 7);

-- INSERTING MOCK DATA --
insert into morra (age, name, country_id) values (28, 'Leah', 1);
insert into morra (age, name, country_id) values (17, 'Isabella', 7);
insert into morra (age, name, country_id) values (24, 'Appolonia', 2);
insert into morra (age, name, country_id) values (31, 'Heinrik', 4);
insert into morra (age, name, country_id) values (25, 'Ewan', 6);
insert into morra (age, name, country_id) values (41, 'Hunter', 5);
insert into morra (age, name, country_id) values (16, 'Abbie', 3);
insert into morra (age, name, country_id) values (33, 'Grove', 4);
insert into morra (age, name, country_id) values (27, 'Jolie', 1);
insert into morra (age, name, country_id) values (23, 'Chandal', 1);
insert into morra (age, name, country_id) values (23, 'Rozalin', 1);
insert into morra (age, name, country_id) values (28, 'Julienne', 6);
insert into morra (age, name, country_id) values (24, 'Loretta', 6);
insert into morra (age, name, country_id) values (42, 'Gordon', 8);
insert into morra (age, name, country_id) values (36, 'Rufe', 2);
insert into morra (age, name, country_id) values (38, 'Minnie', 2);
insert into morra (age, name, country_id) values (16, 'Darline', 1);
insert into morra (age, name, country_id) values (38, 'Ivy', 3);
insert into morra (age, name, country_id) values (33, 'Leela', 4);
insert into morra (age, name, country_id) values (37, 'Babara', 2);
insert into morra (age, name, country_id) values (43, 'Jemima', 8);
insert into morra (age, name, country_id) values (43, 'Allyn', 2);
insert into morra (age, name, country_id) values (15, 'Redford', 6);
insert into morra (age, name, country_id) values (26, 'Bancroft', 5);
insert into morra (age, name, country_id) values (15, 'Marga', 3);
insert into morra (age, name, country_id) values (33, 'Franz', 7);
insert into morra (age, name, country_id) values (38, 'Rodrigo', 2);
insert into morra (age, name, country_id) values (26, 'Chandler', 6);
insert into morra (age, name, country_id) values (38, 'Ania', 8);
insert into morra (age, name, country_id) values (39, 'Maia', 3);
insert into morra (age, name, country_id) values (28, 'Zelig', 6);
insert into morra (age, name, country_id) values (37, 'Bella', 1);
insert into morra (age, name, country_id) values (43, 'Faunie', 4);
insert into morra (age, name, country_id) values (22, 'Lilllie', 1);
insert into morra (age, name, country_id) values (31, 'Ilsa', 4);
insert into morra (age, name, country_id) values (27, 'Biddy', 6);
insert into morra (age, name, country_id) values (18, 'Dorena', 6);
insert into morra (age, name, country_id) values (18, 'Griffin', 7);
insert into morra (age, name, country_id) values (28, 'Wat', 7);
insert into morra (age, name, country_id) values (40, 'Gaylor', 1);
insert into morra (age, name, country_id) values (25, 'Bruce', 5);
insert into morra (age, name, country_id) values (39, 'Ellynn', 2);
insert into morra (age, name, country_id) values (37, 'Westley', 5);
insert into morra (age, name, country_id) values (24, 'Lenore', 3);
insert into morra (age, name, country_id) values (17, 'Arlen', 2);
insert into morra (age, name, country_id) values (30, 'Tiffanie', 6);
insert into morra (age, name, country_id) values (40, 'Kym', 1);
insert into morra (age, name, country_id) values (27, 'Rory', 5);
insert into morra (age, name, country_id) values (19, 'Kerry', 4);
insert into morra (age, name, country_id) values (26, 'Walliw', 6);
insert into morra (age, name, country_id) values (17, 'Gilligan', 3);
insert into morra (age, name, country_id) values (17, 'Janeczka', 2);
insert into morra (age, name, country_id) values (29, 'Pet', 3);
insert into morra (age, name, country_id) values (15, 'Micki', 3);
insert into morra (age, name, country_id) values (36, 'Flore', 4);
insert into morra (age, name, country_id) values (32, 'Adrien', 8);
insert into morra (age, name, country_id) values (15, 'Amitie', 3);
insert into morra (age, name, country_id) values (39, 'Had', 8);
insert into morra (age, name, country_id) values (18, 'Alia', 8);
insert into morra (age, name, country_id) values (40, 'Rycca', 7);
insert into morra (age, name, country_id) values (37, 'Mandie', 3);
insert into morra (age, name, country_id) values (15, 'Batholomew', 1);
insert into morra (age, name, country_id) values (36, 'Thorn', 3);
insert into morra (age, name, country_id) values (15, 'Asa', 8);
insert into morra (age, name, country_id) values (22, 'Lotty', 1);
insert into morra (age, name, country_id) values (27, 'Brandyn', 6);
insert into morra (age, name, country_id) values (39, 'Archibald', 7);
insert into morra (age, name, country_id) values (30, 'Jeanelle', 7);
insert into morra (age, name, country_id) values (23, 'Alix', 8);
insert into morra (age, name, country_id) values (34, 'Tobe', 2);
insert into morra (age, name, country_id) values (20, 'Hildagard', 6);
insert into morra (age, name, country_id) values (17, 'Verna', 8);
insert into morra (age, name, country_id) values (29, 'Emiline', 7);
insert into morra (age, name, country_id) values (21, 'Janette', 4);
insert into morra (age, name, country_id) values (41, 'Dolores', 1);
insert into morra (age, name, country_id) values (42, 'Ricki', 1);
insert into morra (age, name, country_id) values (21, 'Ranice', 7);
insert into morra (age, name, country_id) values (37, 'Damaris', 7);
insert into morra (age, name, country_id) values (35, 'Mira', 5);
insert into morra (age, name, country_id) values (37, 'Fielding', 3);
insert into morra (age, name, country_id) values (30, 'Alfy', 8);
insert into morra (age, name, country_id) values (23, 'Lil', 8);
insert into morra (age, name, country_id) values (34, 'Jehanna', 6);
insert into morra (age, name, country_id) values (39, 'Florian', 5);
insert into morra (age, name, country_id) values (21, 'Camey', 2);
insert into morra (age, name, country_id) values (21, 'Dominga', 3);
insert into morra (age, name, country_id) values (17, 'Hal', 7);
insert into morra (age, name, country_id) values (23, 'Ramona', 5);
insert into morra (age, name, country_id) values (26, 'Anthe', 8);
insert into morra (age, name, country_id) values (41, 'Ward', 3);
insert into morra (age, name, country_id) values (17, 'Cosmo', 5);
insert into morra (age, name, country_id) values (16, 'Manon', 8);
insert into morra (age, name, country_id) values (40, 'Michaelina', 2);
insert into morra (age, name, country_id) values (35, 'Martie', 6);
insert into morra (age, name, country_id) values (42, 'Ilaire', 5);
insert into morra (age, name, country_id) values (17, 'Simeon', 5);
insert into morra (age, name, country_id) values (38, 'Stephanie', 8);
insert into morra (age, name, country_id) values (35, 'Kaela', 3);
insert into morra (age, name, country_id) values (21, 'Vail', 5);
insert into morra (age, name, country_id) values (43, 'Velma', 1);

insert into instagram (username, nfollowers, nfollowing, nposts) values ('egirke0', 1647, 596, 2639);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mwickrath1', 1180, 494, 1719);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('emcdonnell2', 8275, 687, 2187);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mvoisey3', 9364, 755, 1838);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('bkittle4', 8714, 340, 1693);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('asanto5', 7862, 891, 3612);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('pmonkman6', 3021, 1153, 781);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ekippins7', 9403, 561, 3029);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('icardinale8', 40, 1332, 4582);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ebluschke9', 4800, 1387, 4509);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('pjakobssena', 1126, 807, 2988);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ebirchenoughb', 2843, 470, 2696);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('anorthallc', 9317, 1573, 3954);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ucoded', 8716, 193, 4405);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('hduetschee', 4597, 133, 190);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mwheadonf', 2269, 681, 2446);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mmemoryg', 2441, 1245, 2302);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('trounceh', 6684, 1716, 4659);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('bdeeneri', 1756, 1580, 2533);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('wbohljej', 7895, 589, 2859);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jlayk', 3557, 1334, 289);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('croparsl', 8278, 1277, 641);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('bemsdenm', 6516, 1297, 3216);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ehargreavesn', 1566, 1649, 4510);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jwoodroofeo', 6553, 998, 4225);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dkornyakovp', 655, 101, 3639);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('flenoirq', 2985, 635, 4306);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ocooksonr', 9230, 1384, 3880);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ltolchards', 9091, 823, 4628);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ntremmilt', 7038, 915, 4900);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('kormrodu', 6855, 1597, 2766);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('hmoresbyv', 7592, 1003, 2930);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ajeansw', 605, 781, 3796);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('sroartyx', 3587, 946, 3476);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jsticklery', 1010, 1076, 2861);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mmccarrickz', 7924, 1053, 3214);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dsieur10', 677, 1422, 4508);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('scalafato11', 2668, 1368, 1417);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('fazema12', 9374, 163, 2421);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('cmckim13', 6038, 660, 4200);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dcastilljo14', 141, 176, 4749);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jdibdale15', 873, 7, 3695);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('msweetlove16', 1237, 198, 4772);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jmilward17', 8879, 1563, 3885);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('hsize18', 4153, 1668, 502);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('tchipping19', 3441, 1550, 2749);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('btreher1a', 3958, 885, 3837);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('etissier1b', 6955, 1286, 267);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dbatts1c', 2681, 654, 3795);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('bshambrook1d', 2108, 889, 3670);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('hnaris1e', 843, 591, 3275);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('aleyburn1f', 2501, 1314, 2046);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('achelam1g', 2037, 1474, 196);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mkay1h', 6887, 1043, 3093);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('gfigin1i', 3689, 872, 3425);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('scampagne1j', 723, 1419, 1474);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('sirce1k', 7009, 430, 3369);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('cbarus1l', 1552, 1614, 1359);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('rturbard1m', 6906, 1318, 523);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('scellone1n', 8939, 1235, 4261);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dbrowne1o', 7384, 580, 2519);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('akettel1p', 7483, 1037, 4190);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ggalpin1q', 9743, 799, 878);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('adows1r', 6916, 399, 1538);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ealelsandrovich1s', 5610, 1742, 1384);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jgray1t', 1856, 1132, 3422);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('cduny1u', 8759, 1371, 1099);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('snorgate1v', 2085, 1629, 2033);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('jpoplee1w', 3511, 746, 3923);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('sfeatenby1x', 8605, 1262, 3216);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('pniece1y', 4911, 1313, 1550);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('pambrosi1z', 3676, 744, 1768);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('tmarlin20', 2453, 1527, 4554);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('apixton21', 9175, 834, 1362);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('mphetteplace22', 3390, 412, 3777);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ocoit23', 4813, 587, 2800);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('ileale24', 7, 896, 478);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('rdraper25', 742, 245, 4213);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('gpace26', 7024, 181, 353);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('cklimas27', 3522, 1041, 2282);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('brahl28', 4129, 1406, 976);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dreveley29', 8560, 303, 709);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('amasham2a', 8157, 1086, 4395);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('lalpine2b', 324, 931, 704);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('rdeavenell2c', 7856, 650, 410);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('fstratten2d', 3245, 1424, 4813);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('rjahnke2e', 9754, 1535, 1645);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('kjiruca2f', 4608, 1761, 2435);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('sknowlman2g', 3281, 1046, 4006);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('kburrass2h', 9354, 956, 3292);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('bwhife2i', 7182, 407, 387);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('arichardes2j', 4997, 1463, 931);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('nblankenship2k', 2214, 166, 393);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('kroostan2l', 8498, 889, 4969);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('csarfatti2m', 3535, 1736, 2147);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('wtopley2n', 7791, 931, 3338);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('aschout2o', 6462, 1663, 412);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('acarlsen2p', 1202, 1617, 1022);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('broxburgh2q', 9270, 1396, 4228);
insert into instagram (username, nfollowers, nfollowing, nposts) values ('dcoggell2r', 4576, 449, 3999);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (8, 8);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (9, 9);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (10, 10);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (11, 11);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (12, 12);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (13, 13);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (14, 14);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (15, 15);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (16, 16);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (17, 17);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (18, 18);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (19, 19);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (20, 20);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (21, 21);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (22, 22);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (23, 23);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (24, 24);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (25, 25);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (26, 26);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (27, 27);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (28, 28);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (29, 29);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (30, 30);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (31, 31);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (32, 32);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (33, 33);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (34, 34);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (35, 35);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (36, 36);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (37, 37);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (38, 38);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (39, 39);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (40, 40);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (41, 41);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (42, 42);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (43, 43);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (44, 44);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (45, 45);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (46, 46);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (47, 47);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (48, 48);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (49, 49);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (50, 50);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (51, 51);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (52, 52);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (53, 53);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (54, 54);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (55, 55);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (56, 56);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (57, 57);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (58, 58);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (59, 59);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (60, 60);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (61, 61);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (62, 62);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (63, 63);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (64, 64);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (65, 65);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (66, 66);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (67, 67);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (68, 68);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (69, 69);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (70, 70);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (71, 71);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (72, 72);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (73, 73);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (74, 74);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (75, 75);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (76, 76);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (77, 77);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (78, 78);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (79, 79);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (80, 80);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (81, 81);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (82, 82);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (83, 83);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (84, 84);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (85, 85);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (86, 86);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (87, 87);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (88, 88);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (89, 89);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (90, 90);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (91, 91);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (92, 92);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (93, 93);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (94, 94);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (95, 95);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (96, 96);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (97, 97);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (98, 98);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (99, 99);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (100, 100);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (101, 101);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (102, 102);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (103, 103);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (104, 104);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (105, 105);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (106, 106);
INSERT INTO morra_instagram(morra_id, instagram_id)VALUES (107, 107);
