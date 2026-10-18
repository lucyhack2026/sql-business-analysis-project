SELECT
    c.country,
    c.customer_segment,
    COUNT(DISTINCT c.customer_id) AS customers,
    COUNT(DISTINCT o.order_id) AS orders,
    ROUND(SUM(o.net_revenue), 2) AS total_net_revenue,
    ROUND(SUM(o.gross_profit), 2) AS total_gross_profit,
    ROUND(AVG(o.net_revenue), 2) AS avg_order_value,
    ROUND(SUM(o.gross_profit) / NULLIF(SUM(o.net_revenue), 0) * 100, 2) AS gross_margin_pct
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.country,
    c.customer_segment
ORDER BY
    total_net_revenue DESC;