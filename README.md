# ETL_project

### Extraction:

We used three different data sources for our Project.
- Data Source 1 (CSV): https://www.kaggle.com/londeen/world-happiness-report-2020 
- Data Source 2 (Web Scraping): https://www.worldometers.info/
- Splinter was used to automate browser actions on our second data source like visiting a URL and closing it later; and also to interact with items.
- Data Source 3 (HTML to CSV): https://www.worldometers.info/demographics/life-expectancy/#countries-ranked-by-life-expectancy
- Python’s BeautifulSoup library was used to pull data out of the websites. The websites were parsed to navigate and fetch the tables , which were later-on converted to dataframes.


### Transformation: 

- Converted both the Life Expectancy & Population tables from URL (HTML) sources to CSVs using an F string in Pandas.
- Cleaned the data by getting rid of NaN values of countries that did not match other tables (ended with 142 countries).
- Column names were also eliminated for SQL due to space
- Joined all three tables by renaming columns & joining them based on countries.
- The Python BeautifulSoup library was used to pull data out of the websites. The websites were parsed to navigate and fetch the tables   which were later-on converted to dataframes. 
- Converted datatypes to maintain consistencys.
- Converted the World_Share_Percent column from object datatype to string
- Stripped the percent symbol from the World Share column and store their face value.
- Filtered the columns based on what would be used during analysis.
- Truncated symbols in the cells and kept data like percentages at their face value.
   
### Load

- We chose Postgres as our Database because we did not have to deal with a lot of unstructured and variety of data.
- A total of 3 tables were created and record insertions was done using pandas.
- SQLalchemy was used to the connect and access the database with PostgreSQL dialect using psycopg2 as the default DBAPI.
- Database was Queried using PostgreSQL language.
- The insertions were later confirmed by reading and joining tables using pandas.


