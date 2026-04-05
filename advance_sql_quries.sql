#Monthly Revenue Trend
  
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(amount) AS total_revenue
FROM amazon_sales
GROUP BY month
ORDER BY month;

#Top 5 Categories by Revenue
  
SELECT 
    category,
    SUM(amount) AS revenue
FROM amazon_sales
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;

#Cancellation Rate by Category
  
SELECT 
    category,
    COUNT(CASE WHEN status = 'Cancelled' THEN 1 END) * 100.0 / COUNT(*) AS cancellation_rate
FROM amazon_sales
GROUP BY category
ORDER BY cancellation_rate DESC;

#Fulfillment Performance
  
SELECT 
    fulfillment,
    COUNT(*) AS total_orders,
    SUM(amount) AS revenue
FROM amazon_sales
GROUP BY fulfillment;

#Running Total Revenue
  
SELECT 
    date,
    SUM(amount) OVER (ORDER BY date) AS running_revenue
FROM amazon_sales;

#Top Performing Day
  
SELECT 
    date,
    SUM(amount) AS revenue
FROM amazon_sales
GROUP BY date
ORDER BY revenue DESC
LIMIT 1;
