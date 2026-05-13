-- total deposits
SELECT SUM(deposit) AS total_deposits
FROM gaming_dataset;

-- betting volume
SELECT SUM(bet_amount) AS total_bets
FROM gaming_dataset;

-- gross gaming revenue
SELECT SUM(bet_amount - win_amount) AS GGR
FROM gaming_dataset;

-- top players by betting volume
SELECT
user_id,
SUM(bet_amount) AS total_bet
FROM gaming_dataset
GROUP BY user_id
ORDER BY total_bet DESC;

-- daily betting activity
SELECT
date,
SUM(bet_amount) AS daily_bets
FROM gaming_dataset
GROUP BY date
ORDER BY date;
