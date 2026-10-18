SELECT
    c.customer_id,
    c.country,
    c.customer_segment,
    c.acquisition_channel,
    COUNT(DISTINCT o.order_id) AS orders,
    ROUND(SUM(o.net_revenue), 2) AS total_net_revenue,
    ROUND(SUM(o.gross_profit), 2) AS total_gross_profit,
    COUNT(DISTINCT t.transaction_id) AS transactions,
    SUM(t.fraud_flag) AS fraud_flagged_transactions,
    COUNT(DISTINCT st.ticket_id) AS support_tickets,
    ROUND(AVG(st.resolution_hours), 2) AS avg_ticket_resolution_hours,
    ROUND(AVG(st.sla_met) * 100, 2) AS support_sla_met_pct
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
LEFT JOIN transactions t
    ON o.order_id = t.order_id
LEFT JOIN support_tickets st
    ON c.customer_id = st.customer_id
GROUP BY
    c.customer_id,
    c.country,
    c.customer_segment,
    c.acquisition_channel
ORDER BY
    total_net_revenue DESC;