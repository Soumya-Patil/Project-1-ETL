-- check if the tables been Populated
--tble #1
SELECT * FROM happiness;

--table #2
SELECT * FROM population;

--table #3
SELECT * FROM life_expectancy;

-- join tables on the country column
SELECT
     a.country AS Country,
     b.population_2020 AS Population_2020,
	 b.migrants_net AS Net_Migrants,
     b.world_share_percent AS World_Share_percent,
	 c.life_expectancy_both_sexes AS Life_Expectency_both_sexes,
     a.happiness_score AS Happiness_Score
    
FROM
    happiness AS a
    INNER JOIN population AS b
        ON (a.country = b.country)
    INNER JOIN life_expectancy AS c
        ON (a.country = c.country);
