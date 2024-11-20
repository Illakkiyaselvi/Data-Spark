{
 "cells": [],
 "metadata": {
  "kernelspec": {
   "display_name": ".venv",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "name": "python",
   "version": "3.12.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
-----------------------------------
SELECT * FROM customers1;
SELECT * FROM sales;
SELECT * FROM stores;
SELECT * FROM product;
SELECT * FROM ex_rates;
SELECT * FROM merged_data;

---1.Total Sales per Category
SELECT Category, SUM(Unit_Price_USD * Quantity) AS Total_Sales
FROM Merged_Data
GROUP BY Category
ORDER BY Total_Sales DESC;

--2.Top 10 Customers by Total Purchase
SELECT CustomerKey, SUM(Unit_Price_USD * Quantity) AS Total_Spent
FROM Merged_Data
GROUP BY CustomerKey
ORDER BY Total_Spent DESC
LIMIT 10;

---3.Popular Products by Quantity Sold
SELECT Product_Name, SUM(Quantity) AS Total_Quantity
FROM Merged_Data
GROUP BY product_Name
ORDER BY Total_Quantity DESC
LIMIT 10;

--4.Average Order Value (AOV)
SELECT AVG(Unit_Price_USD * Quantity) AS Average_Order_Value
FROM Merged_Data;

--5.Sales by Continent
SELECT Continent, SUM(Unit_Price_USD * Quantity) AS Total_Sales
FROM Merged_Data
GROUP BY Continent
ORDER BY Total_Sales DESC;

--6.Product Performance by Brand
SELECT Brand, SUM(Unit_Price_USD * Quantity) AS Sales, COUNT(DISTINCT ProductKey) AS Unique_Products
FROM Merged_Data
GROUP BY Brand
ORDER BY Sales DESC;

---7.Customer Demographics: Age Group Analysis
SELECT 
    CASE 
        WHEN Age < 20 THEN 'Below 20'
        WHEN Age BETWEEN 20 AND 29 THEN '20-29'
        WHEN Age BETWEEN 30 AND 39 THEN '30-39'
        WHEN Age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50 and above'
    END AS Age_Group,
    COUNT(*) AS Customer_Count
FROM Merged_Data
GROUP BY Age_Group
ORDER BY Customer_Count DESC;

--8.Store-Level Sales Insights
SELECT StoreKey, State_y, SUM(Unit_Price_USD * Quantity) AS Total_Sales
FROM Merged_Data
GROUP BY StoreKey, State_y
ORDER BY Total_Sales DESC;

-- 9.Total Revenue by Gender
SELECT Gender, SUM(Quantity * Unit_Price_USD) As TotalRevenue
From Merged_Data
GROUP BY Gender ORDER BY TotalRevenue DESC;


--10.Highest ordered quantity of product category
select Product_Name,Category,Unit_Cost_USD,
Unit_Price_USD, Quantity,(Unit_Price_USD * Quantity) as TotalRevenue
from Merged_Data
order by TotalRevenue DESC;
