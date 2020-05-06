# DataWarehousing-and-Business-Intelligence
This repository includes all the Data Warehouse and Business Intelligence Projects

# AdventureWorks Purchasing Project

Created a DataWarehouse containing data from AdventureWorks2017 that can be used by the business to answer questions on:
• All product purchases made by AdventureWorks from vendors, i.e. purchase orders.
• List of products that might be purchased from Vendors, in other words, all the products that are not made by AdventureWorks.
• Vendors that AdventureWorks might purchase products from.
• Products that AdventureWorks might purchase from vendors and associated with the vendors that sell them.
• Vendors’ employees who interact with AdventureWorks.
• AdventureWorks’ employees who have bought products from vendors and include attributes about those people.
• AdventureWorks’ sales territories.
• AdventureWorks’ ship methods.

Created SCD's for particular dimensions based on the requirement and also a geography dimension that can used as outrigger.
• A slowly changing dimension (SCD) for AdventureWorks employee pay
• A slowly changing dimension (SCD) for list prices for products above
• A slowly changing dimension (SCD) for standards costs for products above
• A geography dimension that AdventureWorks could use as outrigger
• A calendar dimension that AdventureWorks could use for facts and dimensions

Steps Invloved:
Step 1: Performed Data profiling using SQL and Microsoft PowerBI and listed tables from source system that was needed to asnwer the questions.
Step 2: Created a DataWarehouse in target database, by initially creating a Data Model using ER Studio then generating DDL script and finally creating tables in target database.
Step 3: Loaded data from source systems to our target database using Alteryx and Talend ETL tools.
Step 4: Created data visualization using Tableau and Microsoft PowerBI to answer the above questions.

