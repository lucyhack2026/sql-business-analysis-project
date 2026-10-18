SELECT
    COUNT(DISTINCT o.order_id) AS total_orders,
    COUNT(DISTINCT o.customer_id) AS active_customers,
    ROUND(SUM(o.net_revenue), 2) AS total_net_revenue,
    ROUND(SUM(o.gross_profit), 2) AS total_gross_profit,
    ROUND(AVG(o.net_revenue), 2) AS avg_order_value,
    ROUND(AVG(o.gross_profit), 2) AS avg_profit_per_order,
    ROUND(SUM(o.gross_profit) / NULLIF(SUM(o.net_revenue), 0) * 100, 2) AS gross_margin_pct
FROM orders o;