--Bussiness Performance Overview--

--Total Sales 
select sum(sales) As Total_Sales from superstore_orders
--Total Profit
select sum(profit) As Total_Profit from superstore_orders
--Profit Margin %
select ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS profit_margin_pct  from superstore_orders

--Profitability by Category (Kategori bazýnda kârlýlýk)
SELECT 
  Category,
  SUM(Profit) AS total_profit,
  SUM(Sales) AS total_sales,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales),0) * 100, 2) AS profit_margin_pct
FROM dbo.superstore_orders
GROUP BY Category
ORDER BY profit_margin_pct DESC

--Profit Margin % and Total Profit by Discount 
--(Discount kâra nasýl etki ediyor? (indirim seviyesi vs margin))
SELECT
  Discount,
  ROUND(SUM(Profit),2) AS total_profit,
  ROUND(SUM(Profit)/NULLIF(SUM(Sales),0)*100, 2) AS profit_margin_pct
FROM dbo.superstore_orders
GROUP BY Discount
ORDER BY Discount

--Total Sales and Total Profit by Region
--Region bazýnda satýþ ve kâr
SELECT 
  Region,
  SUM(Profit) AS total_profit,
  SUM(Sales)  AS total_sales
FROM dbo.superstore_orders
GROUP BY Region
ORDER BY total_sales DESC

--Avg. Shipping Days by Region
--(Region bazýnda satýþ/kâr + ortalama shipping)
SELECT
  Region,
  ROUND(AVG(CAST(Shipping_Days AS float)), 2) AS avg_shipping_days
FROM dbo.superstore_orders
GROUP BY Region  
ORDER BY avg_shipping_days DESC
