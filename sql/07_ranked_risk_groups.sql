WITH grp AS (
  SELECT
    customer_segment,
    tenure_bucket,
    subscription_plan,
    COUNT(*) AS customers,
    SUM(is_churned) AS churned_customers,
    ROUND(100.0 * SUM(is_churned) / COUNT(*), 2) AS churn_rate_pct
  FROM subscriptions
  GROUP BY customer_segment, tenure_bucket, subscription_plan
)
SELECT
  *,
  DENSE_RANK() OVER (ORDER BY churn_rate_pct DESC) AS risk_rank
FROM grp
WHERE customers >= 50
ORDER BY churn_rate_pct DESC;

