###### EXTRACTION : ORIGINAL DATA SOURCES , DATA FORMATTING 

We used three different data sources for our Project.
-	Data Source#1 https://www.kaggle.com/londeen/world-happiness-report-2020
-	Data Source#2 https://www.worldometers.info/
-	Data Source#3 https://www.worldometers.info/demographics/life-expectancy/#countries-ranked-by-life-expectancy
-	Python’s BeautifulSoup library was used to pull data out of the websites. The websites were parsed to navigate and fetch the tables , which were later-on converted to dataframes. 
-	Splinter was used to automate browser actions like visiting an URL , copying URL and closing it later ;  also, to interact  with items like clicking links based on Text and hrefs. 

###### TRANSFORM : WHAT DATA TRANSFORMATION  WAS REQUIRED
-	Columns were renamed
-	Filtered the specific list of columns that would be worked on.
-	Converted datatypes to maintain consistency across all Tables.
-	Truncated symbols in the cells , and kept data like percentages at their face value.

###### LOAD : DATABASE CONNECTIONS, AND CHOICE OF DATBASE
- We chose Postgres as our Database because the data after formatting was not abundantly  unstructured or varied.
- A total of 3 tables were created , and the records were  inserted to the database using Pandas.
