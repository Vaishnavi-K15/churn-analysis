SELECT
  COUNT(*) AS total_customers,
  SUM(is_active_customer) AS active_customers,
  SUM(is_churned) AS churned_customers,
  ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct,

  ROUND(AVG(monthly_revenue), 2) AS avg_monthly_revenue,
  ROUND(SUM(CASE WHEN is_active_customer = 1 THEN monthly_revenue ELSE 0 END), 2) AS active_mrr,
  ROUND(SUM(CASE WHEN is_churned = 1 THEN monthly_revenue ELSE 0 END), 2) AS churned_mrr,

  ROUND(SUM(lifetime_value), 2) AS total_lifetime_value,
  ROUND(AVG(lifetime_value), 2) AS avg_lifetime_value
FROM subscriptions;

