SELECT
    t.payment_method,
    COUNT(DISTINCT t.transaction_id) AS transactions,
    SUM(CASE WHEN t.transaction_status = 'approved' THEN 1 ELSE 0 END) AS approved_transactions,
    SUM(CASE WHEN t.transaction_status = 'declined' THEN 1 ELSE 0 END) AS declined_transactions,
    SUM(CASE WHEN t.transaction_status = 'refunded' THEN 1 ELSE 0 END) AS refunded_transactions,
    SUM(CASE WHEN t.transaction_status = 'chargeback' THEN 1 ELSE 0 END) AS chargebacks,
    SUM(t.fraud_flag) AS fraud_flagged_transactions,
    ROUND(SUM(t.net_revenue), 2) AS total_transaction_value,
    ROUND(AVG(t.net_revenue), 2) AS avg_transaction_value,
    ROUND(SUM(t.fraud_flag) * 100.0 / COUNT(DISTINCT t.transaction_id), 2) AS fraud_rate_pct,
    ROUND(
        SUM(CASE WHEN t.transaction_status = 'chargeback' THEN 1 ELSE 0 END) * 100.0
        / COUNT(DISTINCT t.transaction_id),
        2
    ) AS chargeback_rate_pct
FROM transactions t
GROUP BY
    t.payment_method
ORDER BY
    fraud_rate_pct DESC;