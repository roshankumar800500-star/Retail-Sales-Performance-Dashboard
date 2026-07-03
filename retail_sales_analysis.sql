CREATE DATABASE retail_sales_db;
USE retail_sales_db;
SELECT * FROM sales_data;

-- KPI REQUIREMENTS
SELECT ROUND(SUM(Sales),2) AS Total_Sales FROM sales_data;
SELECT ROUND(SUM(Profit),2) AS Total_Profit FROM sales_data;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders FROM sales_data;
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers FROM sales_data;
SELECT SUM(Quantity) AS Total_Quantity FROM sales_data;
SELECT ROUND(SUM(Sales) /COUNT(DISTINCT `Order ID`),2) AS Avg_Order_Value FROM sales_data;
SELECT ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percent FROM sales_data;
SELECT ROUND(AVG(Discount)*100,2) AS Avg_Discount_Percent FROM sales_data;

-- CHARTS REQUIREMENTS
SELECT Region,ROUND(SUM(Sales),2) AS Total_Sales FROM sales_data GROUP BY Region ORDER BY Total_Sales DESC;
SELECT Category,ROUND(SUM(Profit),2) AS Total_Profit FROM sales_data GROUP BY Category ORDER BY Total_Profit DESC;
SELECT `Customer Name`,ROUND(SUM(Sales),2) AS Revenue FROM sales_data GROUP BY `Customer Name` ORDER BY Revenue DESC LIMIT 10;
SELECT `Product Name`,ROUND(SUM(Sales),2) AS Revenue FROM sales_data GROUP BY `Product Name` ORDER BY Revenue DESC LIMIT 10;
SELECT `Product Name`,ROUND(SUM(Profit),2) AS Profit FROM sales_data GROUP BY `Product Name` HAVING Profit < 0 ORDER BY Profit;
