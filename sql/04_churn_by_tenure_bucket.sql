SELECT
  tenure_bucket,
  COUNT(*) AS customers,
  SUM(is_churned) AS churned_customers,
  ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct,
  ROUND(AVG(tenure_months), 2) AS avg_tenure_months
FROM subscriptions
GROUP BY tenure_bucket
ORDER BY
  CASE tenure_bucket
    WHEN 'New' THEN 1
    WHEN 'Early' THEN 2
    WHEN 'Established' THEN 3
    WHEN 'Loyal' THEN 4
    ELSE 5
  END;

