-- Create tables for raw data to be loaded into
CREATE TABLE happiness (
	country TEXT PRIMARY KEY,
	happiness_score real
);

CREATE TABLE population (
	country TEXT PRIMARY KEY,
	population_2020 int,
	migrants_net numeric,
	world_share_percent numeric
);

CREATE TABLE life_expectancy (
	country TEXT PRIMARY KEY,
	life_expectancy_both_sexes numeric
);

SELECT * FROM happiness;
SELECT * FROM population;
SELECT * FROM life_expectancy;