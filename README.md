# DataSpark: Illuminating Insights for Global Electronics
-------
**Project Overview**
-----------

  DataSpark: Illuminating Insights for Global Electronics is a retail analytics project that looks at the electronics industry. It aims to give useful insights into the sales data of a global electronics retailer. The project has an impact on different areas, including how products perform, who the customers are how stores do, and how currency exchange rates affect sales.
  
**Objective**
----------
  The main goal of this project is to use data analytics methods to get insights that can help make smart business choices. The specific aims are:

-To find the best-selling products and groups.

-To find the best-selling products and groups.

-To study customer details and how they act.

-To check how stores do in different areas.

-To see how changes in currency rates affect sales.

-To create dashboards you can interact with to show the insights .

Data Description
-------------
The project utilizes multiple datasets related to products, sales, customers, stores, and exchange rates. The key datasets are:

**Customers Dataset:**

Columns: birthday, city, continent, country, customerkey, gender, name, state, state code, zip code

**Sales Dataset:**

Columns: currency code, customerkey, delivery date, line item, order date, order number, productkey, quantity, storekey

**Stores Dataset:**

Columns: country, open date, square meters, state, storekey

**Products Dataset:**

Columns: brand, category, categorykey, color, productkey, subcategory, subcategorykey, unit cost usd, unit price usd

**Exchange Rates Dataset:**

Columns: currency, date, exchange

Tools and Technologies
--------------
The following tools and technologies were used in the project:

  -Data Cleaning and Preprocessing: Python 

  -Data Management: Progresql

  -Data Visualization: Power BI

Data Preprocessing
-----------
**Data Cleaning:**

Handling missing values, particularly in the Delivery Date column by dropping rows with missing values.
Removing duplicates and irrelevant columns.


**Data Transformation:**

Merging datasets using common keys (e.g., productkey, customerkey, storekey).
Standardizing data formats across datasets (e.g., date formats).


**Data Loading:**

Importing cleaned and merged datasets into Progresql
Loading data into Power BI for analysis and visualization.


Visualizations and Dashboard
----------
An interactive dashboard was created in Power BI to visualize the insights derived from the data analysis. The key features of the dashboard include:

**Sales Overview:** A comprehensive view of total sales, top-selling products, and sales by region.

**Customer Insights:** Visual representations of customer demographics and purchasing patterns.

**Store Performance:** A comparison of store performance metrics across different regions.

**Currency Analysis:** Visualization of the impact of exchange rates on sales.

Conclusion
------
  The DataSpark project successfully provided valuable insights into the sales data of a global electronics retailer. The analysis helped in identifying key trends, customer segments, and high-performing products, enabling data-driven decision-making.

