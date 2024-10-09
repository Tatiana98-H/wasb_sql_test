SELECT
    s.supplier_id,
    s.name AS supplier_name,
    COALESCE(SUM((i.invoice_amount / ((DATE_DIFF('day', CURRENT_DATE, i.due_date) / 30.0) + 1))), 0) AS payment_amount,
    COALESCE(SUM(i.invoice_amount), 0) - COALESCE(SUM((i.invoice_amount / ((DATE_DIFF('day', CURRENT_DATE, i.due_date) / 30.0) + 1))), 0) AS balance_outstanding,
    i.due_date AS payment_date
FROM
    supplier s
JOIN
    invoice i ON s.supplier_id = i.supplier_id
GROUP BY
    s.supplier_id,
    s.name,
    i.due_date;
