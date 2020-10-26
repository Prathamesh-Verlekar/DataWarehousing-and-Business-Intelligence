# Designing Advanced Data Architectures for Business Intelligence

#### Team Information:

| NAME              |     NUID        |
|------------------ |-----------------|
| Priyanka Malpekar |   001302741     |
| Tanvi Gurav       |   001306848     |
| Siddhi Prabhu     |   001342165     |

## Final Project  - IMDB Data and Analysis

### Description:

1. Designed dimensional data models in ER Studio Data Architect comprising of facts and dimensions
2. Created Staging tables using SQL scripts on Microsoft SQL Server
3. Maintained SOR (System of Record) table to maintain authorized sources for a particular data subject
4. Performed data profiling and loaded data from tsv/csv files into the staging tables using Talend
5. Performed data consistency and cleansing processes
6. Implemented error handling and inserted the unwanted data into reject tables along with their respective reject codes and reject reasons
7. Performed data integration by populating data from staging tables into the dimensional tables using Talend
8. Implemented dashboards on each subject area using Tableau and Power BI for answering business questions

## IMDB Datasets:

1. title.akas.tsv.gz, title.basics.tsv.gz - Contains information for titles

2. title.crew.tsv.gz – Contains the director and writer information for all the titles in IMDB

3. title.episode.tsv.gz – Contains the tv episode information

4. title.principals.tsv.gz – Contains the principal cast/crew for titles

5. title.ratings.tsv.gz – Contains the IMDb rating and votes information for titles

6. name.basics.tsv.gz – Contains information for names

7. IMDB ISO Datasets - countries_iso.tsv,language-codes-iso.tsv - Contains information for countries and languages

8. World Wide Box Office All Time Top 1000.tsv - Contains information about the world wide Top 1000 Movies

9. IMDb BoxOfficeMojo-Franchises.tsv – Contains aggregate data for all franchises

10. IMDb BoxOfficeMojo-Brands.tsv - Contains aggregate data for all brands

11. Movie Lens Data:
• Ratings Data File Structure (MovieLens_ ratings.csv)
• Tags Data File Structure (MovieLens_ tags.csv)
• Links Data File Structure (MovieLens_ links.csv)
• Tag Genome (MovieLens_ genome-scores.csv and MovieLens_ genome-tags.csv)

## IMDB Dimensional Model:

![IMDB_Dimensional_Model](https://user-images.githubusercontent.com/59594174/97101083-a7a9bf80-1670-11eb-9252-f33b2f55a2bd.PNG)

1. Basic information about people in cast, crew, writers and directors
2. Basic titles information
3. Enhanced title information such as aliases, languages, countries
4. Director and writer information for all the titles
5. TV episodes information and Principal cast/crew for titles
6. Title Ratings and Box Office revenue
7. Movie franchises and Movie brands
8. Dimensional tables for Country, Languages, Movie Genres, Job Categories and Types of Titles

## Staging and Dimensional Tables


![DimensionalTables](https://user-images.githubusercontent.com/59594174/97101086-bb552600-1670-11eb-8786-3b16e6f16491.PNG)


## Talend Jobs

![dim_imdb_genres](https://user-images.githubusercontent.com/59594174/97101095-c740e800-1670-11eb-9cb2-ace62b4af8e9.PNG)


![dim_imdb_titles](https://user-images.githubusercontent.com/59594174/97101097-c9a34200-1670-11eb-857a-33a580c649b7.PNG)


![dim_name_PP](https://user-images.githubusercontent.com/59594174/97101099-cb6d0580-1670-11eb-8cfd-08b8b7780dee.PNG)


![fact_imdb_brands](https://user-images.githubusercontent.com/59594174/97101100-ce67f600-1670-11eb-8cf6-10fc62978eb1.PNG)


![fact_rejects](https://user-images.githubusercontent.com/59594174/97101102-d0ca5000-1670-11eb-9379-29848d757955.PNG)


## Tableau Dashboard

![IMDBDashboard](https://user-images.githubusercontent.com/59594174/97101106-d32caa00-1670-11eb-9a88-ebdbe644404d.png)

