-- KPI Analysis for iGaming Platform

-- 1. Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM gaming_dataset;

-- 2. Total Number of Users
SELECT COUNT(DISTINCT user_id) AS total_users
FROM gaming_dataset;

-- 3. Revenue by Game Type
SELECT game_type,
       SUM(revenue) AS total_revenue
FROM gaming_dataset
GROUP BY game_type
ORDER BY total_revenue DESC;

-- 4. Average Bet Amount
SELECT AVG(bet_amount) AS avg_bet
FROM gaming_dataset;

-- 5. Daily Revenue Trend
SELECT activity_date,
       SUM(revenue) AS daily_revenue
FROM gaming_dataset
GROUP BY activity_date
ORDER BY activity_date;

-- 6. Top 10 Highest Revenue Users
SELECT user_id,
       SUM(revenue) AS total_revenue
FROM gaming_dataset
GROUP BY user_id
ORDER BY total_revenue DESC
LIMIT 10;
