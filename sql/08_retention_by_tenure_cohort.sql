SELECT
  tenure_bucket,
  COUNT(*) AS customers,
  SUM(is_active_customer) AS active_customers,
  ROUND(100.0 * SUM(is_active_customer) / COUNT(*), 2) AS retention_pct
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


