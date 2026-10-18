SELECT
    order_month,
    COUNT(DISTINCT order_id) AS orders,
    COUNT(DISTINCT customer_id) AS active_customers,
    ROUND(SUM(net_revenue), 2) AS total_net_revenue,
    ROUND(SUM(gross_profit), 2) AS total_gross_profit,
    ROUND(AVG(net_revenue), 2) AS avg_order_value,
    ROUND(SUM(gross_profit) / NULLIF(SUM(net_revenue), 0) * 100, 2) AS gross_margin_pct
FROM orders
GROUP BY order_month
ORDER BY order_month;