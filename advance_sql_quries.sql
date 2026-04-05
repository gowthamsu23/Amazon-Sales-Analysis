#Total Revenue by Category
  
SELECT category, SUM(amount) AS revenue
FROM amazon_sales
GROUP BY category;

#Monthly Revenue Trend
  
SELECT MONTH(date) AS month, SUM(amount) AS revenue
FROM amazon_sales
GROUP BY MONTH(date);

#Top 5 Products
  
SELECT category, SUM(amount) AS revenue
FROM amazon_sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;
