🔹 QUERY 1: SALES BY REGION (MATCHES MY FIRST PIVOT)


Purpose -> Identify top- and low-performing regions

SELECT 
  "Region",
  SUM("Sales") AS Total_Sales
FROM orders
GROUP BY "Region"
ORDER BY Total_Sales DESC;


Result -> West should be highest



🔹 QUERY 2: SALES BY CATEGORY (MATCHES SECOND PIVOT)


Purpose -> Identify which product category generates more revenue

SELECT 
  "Category",
  SUM("Sales") AS Total_Sales
FROM orders
GROUP BY "Category"
ORDER BY Total_Sales DESC;


Result -> Technology category generates the highest sales.

🔹 QUERY 3: MONTHLY SALES TREND 


Purpose -> Analyze sales trend over time / seasonality

SELECT
  strftime('%Y', "Order Date") AS Year,
  strftime('%m', "Order Date") AS Month,
  SUM("Sales") AS Total_Sales
FROM orders
GROUP BY Year, Month
ORDER BY Year, Month;

Result -> Sales show seasonal fluctuations with peaks in certain months.

🔹 QUERY 4: TOP 10 PRODUCTS BY SALES (EXTRA VALUE)


Purpose -> Identify top-selling products for business decisions

SELECT
  "Product Name",
  SUM("Sales") AS Total_Sales
FROM orders
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

Result -> List of top 10 products with highest sales figures.