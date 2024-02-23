SELECT
  o.order_id,
  o.customer_id,
  o.order_status,
  o.order_approved_at
FROM
  orders o
WHERE
  o.order_approved_at < "2016-20-05"