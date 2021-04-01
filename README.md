# DataWarehousing-and-Business-Intelligence
This repository includes all the Data Warehouse and Business Intelligence Projects and Assignments

## AdventureWorks Purchasing Project

#### Created a DataWarehouse containing data from AdventureWorks2017 that can be used by the business to answer questions on:

• All product purchases made by AdventureWorks from vendors, i.e. purchase orders.\
• List of products that might be purchased from Vendors, in other words, all the products that are not made by AdventureWorks.\
• Vendors that AdventureWorks might purchase products from.\
• Products that AdventureWorks might purchase from vendors and associated with the vendors that sell them.\
• Vendors’ employees who interact with AdventureWorks.\
• AdventureWorks’ employees who have bought products from vendors and include attributes about those people.\
• AdventureWorks’ sales territories.\
• AdventureWorks’ ship methods.

#### Created SCD's for particular dimensions based on the requirement and also a geography dimension that can be used as outrigger.

• A slowly changing dimension (SCD) for AdventureWorks employee pay.\
• A slowly changing dimension (SCD) for list prices for products above.\
• A slowly changing dimension (SCD) for standards costs for products above.\
• A geography dimension that AdventureWorks could use as outrigger.\
• A calendar dimension that AdventureWorks could use for facts and dimensions.


#### Steps Invloved:

**Step 1:** Performed Data profiling using SQL and Microsoft PowerBI and listed tables from source system that was needed to asnwer the questions.\
**Step 2:** Created a DataWarehouse in target database, by initially creating a Data Model using ER Studio then generating DDL script and finally creating tables in target database.\
**Step 3:** Loaded data from source systems to our target database using Alteryx and Talend ETL tools.\
**Step 4:** Created data visualization using Tableau and Microsoft PowerBI to answer the above questions.

## IMDB Project

#### Project Deliverables

• Ingest initial set of tsv and csv files into staging tables.\
• Design and load dimensional model to store all the data.\
• Perform data consistency and cleansing processes.\
• Add supplementat data to model.\
• Design and create BI Visualizations answering business questions.

#### Dimensional Model

[Click here](https://user-images.githubusercontent.com/55213702/81252687-90104900-8ff4-11ea-9630-2943b7620e94.JPG) to view dimensional model.

#### Steps Invloved:

**Step 1:** Performed Data Integration:
1) Loaded staging tables.
2) Loaded dimensional tables.

**Step 2:** Created dashboards to be able to track entities in dimensional model such as movies, TV episodes and other titles with the people involved with associated revenue and ratings.
1) Used Microsoft PowerBI for all BI.
2) Used Tableau for selected analysis.



