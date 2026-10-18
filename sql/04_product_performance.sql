SELECT
    p.category,
    COUNT(DISTINCT o.order_id) AS orders,
    SUM(o.quantity) AS units_sold,
    ROUND(SUM(o.net_revenue), 2) AS total_net_revenue,
    ROUND(SUM(o.gross_profit), 2) AS total_gross_profit,
    ROUND(AVG(o.net_revenue), 2) AS avg_order_value,
    ROUND(SUM(o.gross_profit) / NULLIF(SUM(o.net_revenue), 0) * 100, 2) AS gross_margin_pct
FROM orders o
LEFT JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_net_revenue DESC;