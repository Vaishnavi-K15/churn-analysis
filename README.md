[![View Dashboard](https://img.shields.io/badge/View-Dashboard-blue)](https://public.tableau.com/app/profile/vaishnavi.kurelli/viz/CustomerRetentionRevenueImpactDashboard/Dashboard1)


# Customer Retention & Revenue Impact Analysis (SaaS Case Study)

## Executive Summary

See `insights/Customer_Retention_Revenue_Insights_Visual.pdf` for leadership-ready findings, revenue impact, and retention recommendations.

---

## Project Overview

This project presents an end-to-end customer churn and revenue impact analysis for a subscription-based SaaS business. The objective is to identify churn drivers, quantify revenue loss, and provide actionable recommendations to improve customer retention and protect recurring revenue.

The project simulates a real-world business scenario and follows an enterprise analytics workflow: data cleaning, SQL analysis, executive dashboarding, and business storytelling.

---

## Business Objective

The company aims to:

* Reduce customer churn
* Protect monthly recurring revenue (MRR)
* Identify high-risk customer segments
* Improve onboarding and retention strategy

---

## Dataset

* Source: Public customer subscription dataset (reframed as SaaS business)
* Records: 7,043 customers
* Data Enrichment:

  * Churn indicator (0/1)
  * Customer segmentation (Low, Medium, High value)
  * Tenure buckets (New, Early, Established, Loyal)
  * Active customer flag

### Key Fields

* `customer_id`
* `tenure_months`
* `monthly_revenue`
* `lifetime_value`
* `is_churned`
* `customer_segment`
* `tenure_bucket`
* `subscription_plan`
* `payment_method`

---

## Data Preparation

The dataset was cleaned and enriched using Excel and SQL:

* Standardized column naming (snake_case)
* Converted revenue fields to numeric types
* Removed invalid and duplicate records
* Standardized churn labels to binary values (0/1)
* Created business features: customer_segment, tenure_bucket, is_active_customer
* Validated revenue and churn distributions

Final dataset:

```
data/cleaned_subscriptions.csv
```

---

## SQL Analysis

Advanced SQL was used to perform business analytics:

### Core KPIs

* Total customers
* Churn rate
* Active Monthly Recurring Revenue (MRR)
* Revenue lost to churn

### Analysis Areas

* Churn by customer segment
* Churn by tenure bucket
* Revenue loss by subscription plan
* Churn drivers by payment method
* High-risk customer group ranking (window functions)

SQL scripts available in:

```
sql/
```

---

## Tableau Dashboard

An executive-level dashboard was built in Tableau to visualize:

* Churn rate
* Revenue loss
* Retention risk
* Customer segmentation
* Contract strategy

### Dashboard Highlights

* KPI summary cards
* Churn by segment and tenure
* Revenue loss by subscription plan
* Risk heatmap (segment × tenure)
* Interactive filters

Dashboard file:

```
dashboard/customer_churn_dashboard.twbx
```

## Live Tableau Dashboard

🔗 View Interactive Dashboard:  
https://public.tableau.com/app/profile/vaishnavi.kurelli/viz/CustomerRetentionRevenueImpactDashboard/Dashboard1

---

## Key Insights

* Overall churn rate is 26.5%
* Churn results in over $120K in monthly revenue loss
* New customers (0–6 months) have the highest churn risk
* Month-to-month plans drive the highest revenue loss
* High-value new customers represent the highest business risk

---

## Strategic Recommendations

* Improve onboarding experience for new customers
* Incentivize long-term subscription plans
* Proactively retain high-value customers
* Implement early churn risk monitoring

---

## Tools & Technologies

* SQL (CTEs, window functions, analytics queries)
* Tableau (executive dashboards)
* Excel (data cleaning and validation)

---

## Repository Structure

```
customer-churn-saas/
├── data/
│   └── cleaned_subscriptions.csv
├── sql/
│   ├── 01_sanity_checks.sql
│   ├── 02_kpis.sql
│   ├── 03_churn_by_segment.sql
│   ├── 04_churn_by_tenure_bucket.sql
│   ├── 05_revenue_loss.sql
│   ├── 06_churn_drivers.sql
│   ├── 07_ranked_risk_groups.sql
│   └── 08_retention_by_tenure_cohort.sql
├── dashboard/
│   ├── customer_churn_dashboard.twbx
│   └── screenshots/
├── insights/
│   └── Customer_Retention_Revenue_Insights.pdf
└── README.md
```

---

## Author

Vaishnavi Kurelli
Data Analyst | SQL | Tableau | Business Analytics

---

## Hiring Manager Note

This project demonstrates end-to-end analytics ownership — from raw data to executive recommendations — simulating real-world business analytics workflows used in SaaS organizations.

