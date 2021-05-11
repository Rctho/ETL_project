# ETL Project Report
Project Members: Kiril "Kiko" Ivanov, Eugene Xu, and Rachel Thorpe. 
Data Sets: IMDB Title Basics and IMDB Title Ratings.

These data sets can be used to combine movie reatings with additional information about the movie's title and release date. This could be usedful in comparing ratings for different point in time and for comparing ratings of different films.

# EXTRACT:

Our group used two publicly available datasets on IMDB titles and their ratings (which can be found at https://www.kaggle.com/komalkhetlani/imdb-dataset ). Our datasets were in the form of .csv files, which we loaded into Jupyter Notebook using Pandas.

# TRANSFORM:

In postgreSQL:

Created two empty tables with desired column headings and column data types. 

In Jupyter Lab (Python):

Reviewed the files and transformed them into data frames.

Identified the placeholder for null values (“//N”), replaced them with NaN, and then replaced null values with 0.

The “tconst” column had id numbers beginning with “tt”, and we removed the “tt”s from the column values in order to make the column type integers.

Ran a command to drop any duplicates in the “id” column. 

Removed columns “endYear” and “isAdult”.

Renamed columns so that all column headers were in lowercase and with shorter names.

Set “id” column as dataframe index.

Changed column types. 

# LOAD:
Created an engine.

Used to_sql command to send to postgreSQL.

Reviewed tables in postgreSQL database.

Reviewed tables in JupyterLab.

Joined tables on the “id” column.
