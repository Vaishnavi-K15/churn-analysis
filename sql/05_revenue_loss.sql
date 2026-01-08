SELECT
  ROUND(SUM(CASE WHEN is_churned = 1 THEN monthly_revenue ELSE 0 END), 2) AS lost_monthly_revenue,
  ROUND(
    100.0 * SUM(CASE WHEN is_churned = 1 THEN monthly_revenue ELSE 0 END) 
    / SUM(monthly_revenue),
    2
  ) AS lost_revenue_share_pct
FROM subscriptions;


