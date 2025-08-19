
-- Amazon Sales SQL Project
-- SQL Queries to answer key business questions

-- 1. What is the total number of orders?
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM amazon_sales;

-- 2. Which products generate the most revenue?
SELECT product,
       SUM(total_sales) AS revenue
FROM amazon_sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

-- 3. Which cities have the highest sales?
SELECT customer_location AS city,
       SUM(total_sales) AS total_revenue
FROM amazon_sales
GROUP BY city
ORDER BY total_revenue DESC
LIMIT 10;

-- 4. What payment method is most preferred by customers?
SELECT payment_method,
       COUNT(*) AS usage_count
FROM amazon_sales
GROUP BY payment_method
ORDER BY usage_count DESC;

-- 5. Who are the highest spending customers?
SELECT customer_id,
       SUM(total_sales) AS total_spent
FROM amazon_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;
