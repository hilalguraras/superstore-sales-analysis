-- Geographical Sales Performance--

--Total Sales 
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore_orders
WHERE State = 'Alabama'

--Average of Profit
SELECT 
    ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore_orders
WHERE State = 'Alabama'

--Total Profit 
SELECT 
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_orders
WHERE State = 'Alabama'
 
