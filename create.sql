CREATE TABLE drivers(
	driver_id int NOT NULL,
	driver_name char(50) NOT NULL,
	age int NOT NULL,
	number int NOT NULL);

CREATE TABLE races(
	race_id int NOT NULL ,
	date char(50) NOT NULL,
    location char(150) NOT NULL);

CREATE TABLE countries(
	country_id int NOT NULL,
	country_name char(50) NOT NULL);

CREATE TABLE race_contest(
	race_contest_id int NOT NULL,
	driver_id int NOT NULL,
	race_id int NOT NULL,
	country_id int NOT NULL);

ALTER TABLE drivers ADD CONSTRAINT PK_driver PRIMARY KEY (driver_id);
ALTER TABLE races ADD CONSTRAINT PK_race PRIMARY KEY (race_id);
ALTER TABLE countries ADD CONSTRAINT PK_country PRIMARY KEY (country_id);
ALTER TABLE race_contest ADD CONSTRAINT PK_race_contest PRIMARY KEY (race_contest_id);

ALTER TABLE race_contest
ADD CONSTRAINT FK_race_contest_drivers
FOREIGN KEY (driver_id)
REFERENCES drivers (driver_id);

ALTER TABLE race_contest
ADD CONSTRAINT FK_race_contest_races
FOREIGN KEY (race_id)
REFERENCES races (race_id);

ALTER TABLE race_contest
ADD CONSTRAINT FK_race_contest_countries
FOREIGN KEY (country_id)
REFERENCES countries (country_id);