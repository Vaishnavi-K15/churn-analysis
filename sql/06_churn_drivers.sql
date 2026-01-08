-- A) Churn by subscription plan
SELECT
  subscription_plan,
  COUNT(*) AS customers,
  SUM(is_churned) AS churned_customers,
  ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct
FROM subscriptions
GROUP BY subscription_plan
ORDER BY churn_rate_pct DESC;

-- B) Churn by payment method
SELECT
  payment_method,
  COUNT(*) AS customers,
  SUM(is_churned) AS churned_customers,
  ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct
FROM subscriptions
GROUP BY payment_method
ORDER BY churn_rate_pct DESC;

