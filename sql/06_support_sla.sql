SELECT
    ticket_category,
    priority,
    COUNT(DISTINCT ticket_id) AS tickets,
    ROUND(AVG(resolution_hours), 2) AS avg_resolution_hours,
    SUM(sla_met) AS sla_met_tickets,
    ROUND(AVG(sla_met) * 100, 2) AS sla_met_pct
FROM support_tickets
GROUP BY
    ticket_category,
    priority
ORDER BY
    tickets DESC;