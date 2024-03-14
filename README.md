# Grocery Chain Database

This is database for a small but growing grocery store chain. Its use is to organize their data, which is expanding in both quantity and variety. 

It contains three tables:
- product_price
- location_info
- product_info, 
as well as code to populate some data for each:
- fill_product.sql
- fill_location.sql
- fill_product_location.sql.

You will also find SQL queries that can be used to obtain useful info about the products in the stores and about the chain locations. The aim is to be able to perform functional analysis to promote growth of the small business.

For reference, see the image of Entity Relationship Diagram in ERD.png and the ERD tool in grocery_chain_DB_ERD.pgerd.

To get started, create a new empty database and then run create_tables.sql. This will create empty versions of the 3 tables listed above. Next, update the 3 queries containing the data as needed, and then run them in order to insert data into the tables. Now you are ready to run the queries in grocery_chain_DB_queries.sql as needed.
