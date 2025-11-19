Anime Recommendation (SQL + Python Graph Visualization)
This project is a SQL-based Anime Recommendation System built using (MySQL Workbench) and Python (pandas + matplotlib) for data visualization.

*SQL Database Design
The project includes a well-structured relational database with multiple tables:
-Anime (anime details)
-Users (platform users)
-Ratings (user ratings for anime)
-Watchlist (user activity & status)
-Each table uses primary keys, foreign keys, and relationships to build a realistic database model.
-It demonstrates 1-to-many relationships, normalization, and real-world schema modeling.

*Data Insertion
-Using structured SQL scripts, sample anime data, user profiles, ratings, and watchlist activities are inserted into the database.
-This helps simulate a real anime platform and allows meaningful testing of queries and analytics.

*Analytics Queries
The project includes a variety of SQL queries that analyze and extract insights from the data, such as:
-Top-rated anime
-Most popular genres
-User-based recommendations

*Exporting SQL Results to CSV
-MySQL Workbench is used to export the results of key analytics queries into CSV files.
This allows external tools (like Python) to consume the data for further analysis or visualization.
It demonstrates how SQL and external tools can integrate smoothly.

*Visualizing Data with Python (Graphs)
-A Python script uses pandas to load the exported CSV files and matplotlib to create graphs such as:
-Bar charts for top anime
-Genre distribution
-Rating comparison
This shows how SQL-generated data can be visually represented to gain insights, making the project full-stack (SQL → CSV → Python → Visualization).

>>Features

*Fully normalized SQL database
-Sample dataset included
-Analytics queries
-Recommendation logic
-CSV exporting for Python
-Graph visualization for insights
