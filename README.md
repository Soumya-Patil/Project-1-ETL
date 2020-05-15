# Project-1-ETL

###### EXTRACTION : ORIGINAL DATA SOURCES , DATA FORMATTING 

We used three different data sources for our Project.
-	Data Source#1 https://www.kaggle.com/londeen/world-happiness-report-2020
-	Data Source#2 https://www.worldometers.info/
-	Data Source#3 https://www.worldometers.info/demographics/life-expectancy/#countries-ranked-by-life-expectancy
-	Python’s BeautifulSoup library was used to pull data out of the websites. The websites were parsed to navigate and fetch the tables , which were later-on converted to dataframes. 
-	Splinter was used to automate browser actions like visiting an URL , copying URL and closing it later ;  also, to interact  with items like clicking links based on Text and hrefs. 

###### TRANSFORM : WHAT DATA TRANSFORMATION  WAS REQUIRED
- Converted data source tables from URL (HTML) to CSVs using  Pandas read_html method.
- Cleaned the data by getting rid of NaN values of countries that did not match other tables (ended with 142 countries).
-	Columns were renamed to eliminate spaces 
-	Filtered  specific columns that would be used to load later
-	Converted datatypes to maintain consistency across all Tables.
-	Truncated symbols in the cells , and kept data  like percentages (%) at their face value.

###### LOAD : DATABASE CONNECTIONS, AND CHOICE OF DATBASE

- We chose Postgres as our Database because the data after formatting was not abundantly  unstructured or varied.
- A total of 3 tables were created , and the records were  inserted to the database using Pandas.
- The insertions were later confirmed by reading and joining tables using pandas. 








































---------------------------------------------------------------------------------------------------------------------------------------
### Extraction:

We used three different data sources for our Project.
##### - Data Source 1 (CSV): https://www.kaggle.com/londeen/world-happiness-report-2020 
##### - Data Source 2 (Web Scraping): https://www.worldometers.info/world-population/population-by-country/ 
##### - Splinter was used to automate browser actions on our second data source like visiting a URL and closing it later; and also to interact with items.
##### - Data Source 3 (HTML to CSV): https://www.worldometers.info/demographics/life-expectancy/#countries-ranked-by-life-expectancy


### Transformation: 

##### - Converted both the Life Expectancy & Population tables from URL (HTML) sources to CSVs using an föstring in Pandas.
##### - Cleaned the data by getting rid of NaN values of countries that did not match other tables (ended with 142 countries).
##### - Joined all three tables by renaming columns & joining them based on countries.
##### - PythonÆs BeautifulSoup library was used to pull data out of the websites. The websites were parsed to navigate and fetch the tables which were later-on converted to dataframes. 
##### - Converted datatypes to maintain consistency across all Tables.
##### - Converted the World_Share_Percent column from object datatype to string
##### - Stripped the percent symbol from the World Share column and store their face value.
##### - Renamed the columns.
##### - Filtered the columns based on what would be used in analysis.
##### - Truncated symbols in the cells and kept data like percentages at their face value.
   
### Load

##### We chose Postgres as our Database because we did not have to deal with a lot of unstructured and variety of data.
A total of 3 tables were created and record insertions was done using pandas.

