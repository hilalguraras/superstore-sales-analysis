--Commerical Performance Dasboard--

--Total Sales 
SELECT SUM(Sales) AS Total_Sales FROM superstore_orders
--Total Profit
SELECT SUM(Profit) AS Total_Profit FROM superstore_orders 
--Profit Margin
SELECT 
	ROUND( SUM(Profit) / NULLIF(SUM(Sales), 0) * 100,2) AS Profit_Margin_Pct 
FROM superstore_orders

--Total Profit by Product Name
SELECT TOP 10 
	Product_Name, 
	SUM(Profit) AS Total_Profit
FROM superstore_orders
	GROUP BY Product_Name
	ORDER BY Total_Profit DESC 

--Total Profit by Product Name
Select TOP 10 
	Product_Name, 
	SUM(Profit) AS Total_Profit,
	ROUND(SUM(Profit)/1000000.0,1) AS Total_Profit_M
FROM superstore_orders 
	GROUP BY Product_Name
	ORDER BY Total_Profit ASC

--Total Profit and Total Sales by Segment 
SELECT 
	Segment,
	sum(profit) As Total_Profit,
	sum(sales) As Total_Sales
FROM superstore_orders
	GROUP BY Segment
	ORDER BY Total_Sales DESC

--Total Sales by Year

SELECT 
	Order_Year,
	sum(sales)
FROM superstore_orders
	GROUP BY Order_Year
	ORDER BY Order_Year