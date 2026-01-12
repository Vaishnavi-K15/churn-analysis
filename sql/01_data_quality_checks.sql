-- ============================================
-- Data Quality Checks for subscriptions table
-- ============================================

-- 1) Row count
SELECT COUNT(*) AS total_rows
FROM subscriptions;

-- 2) Unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM subscriptions;

-- 3) Churn distribution
SELECT is_churned, COUNT(*) AS customers
FROM subscriptions
GROUP BY is_churned;

-- 4) Null checks for key fields
SELECT
  SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
  SUM(CASE WHEN tenure_months IS NULL THEN 1 ELSE 0 END) AS null_tenure,
  SUM(CASE WHEN monthly_revenue IS NULL THEN 1 ELSE 0 END) AS null_monthly_revenue,
  SUM(CASE WHEN lifetime_value IS NULL THEN 1 ELSE 0 END) AS null_lifetime_value
FROM subscriptions;

-- 5) Revenue sanity (no negatives)
SELECT
  MIN(monthly_revenue) AS min_monthly_revenue,
  MAX(monthly_revenue) AS max_monthly_revenue,
  MIN(lifetime_value) AS min_lifetime_value,
  MAX(lifetime_value) AS max_lifetime_value
FROM subscriptions;

-- 6) Negative value checks
SELECT
  SUM(CASE WHEN monthly_revenue < 0 THEN 1 ELSE 0 END) AS negative_monthly_revenue,
  SUM(CASE WHEN lifetime_value < 0 THEN 1 ELSE 0 END) AS negative_lifetime_value,
  SUM(CASE WHEN tenure_months < 0 THEN 1 ELSE 0 END) AS negative_tenure
FROM subscriptions;


