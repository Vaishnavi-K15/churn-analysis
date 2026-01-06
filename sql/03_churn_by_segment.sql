SELECT
  customer_segment,
  COUNT(*) AS customers,
  SUM(is_churned) AS churned_customers,
  ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct,

  ROUND(AVG(monthly_revenue), 2) AS avg_monthly_revenue,
  ROUND(SUM(CASE WHEN is_churned = 1 THEN monthly_revenue ELSE 0 END), 2) AS churned_mrr
FROM subscriptions
GROUP BY customer_segment
ORDER BY churn_rate_pct DESC;

