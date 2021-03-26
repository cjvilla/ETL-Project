# ETL PROJECT
Using APIs from Kaggle, this project will use the ETL (extract, transform, and load) procedure to analyze Airbnb data from Chicago and other U.S. cities


## Source Data
* [U.S Airbnb Listings](https://www.kaggle.com/kritikseth/us-airbnb-open-data)
* [Chicago Airbnb Listings](https://www.kaggle.com/jinbonnie/chicago-airbnb-open-data/version/1)

Data files used in this project:

<b>listings.csv:</b> This file contains data from Chicago about the Airbnb host, listings, property information, price, and minimum number of nights allowed<br>
<b>AB_US_2020.csv:</b> This file contains data from U.S.cities about the Airbnb host, listings, property information, price, and minimum number of nights allowed

## Data Cleanup and Analysis

* The type of transofrmations performed on the data (cleaning, joining, filtering, aggregating, etc.)
    * Download csv files from datasource and push to github.
    * Import pandas and sqlalchemy in Jupyter notebook.<br>
    ![import](images/import.png)
    * Read the datafiles in Jupyter using read_csv.<br>
    ![read_csv](images/read_csv.png)
    * Clean the data and create relevant dataframes.<br>
    ![create_df](images/create_df.png)<br>
    ![dropna](images/drop_na.png)
    * Connect engine to postgres.<br>
    ![create_engine](images/create_engine.png)
    * Push tables to sql using to_sql.<br>
    ![to_sql](images/to_sql.png)

    * The type of final production database to load the data into (relational or non-relational)
    * The final tables or collections that will be used in the production database

## Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

•	The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
•	The type of final production database to load the data into (relational or non-relational).
•	 The final tables or collections that will be used in the production database.
•	You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.

#Project Report
•	At the end of the week, your team will submit a Final Report that describes the following:
•	* **E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
•	* **T**ransform: what data cleaning or transformation was required.
•	* **L**oad: the final database, tables/collections, and why this was chosen.

