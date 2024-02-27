SELECT
  op.payment_type,
  COUNT(op.order_id) AS pedidos
FROM
  order_payments op
GROUP BY
  op.payment_type