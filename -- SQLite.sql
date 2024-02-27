SELECT
  o.order_status,
  COUNT(o.order_id)
FROM
  orders o
WHERE
  (
    o.order_status = "processing"
    OR o.order_status = "canceled"
  )
  AND (
    DATE (o.order_estimated_delivery_date) >= "2017-01-01"
    OR DATE (o.order_estimated_delivery_date) <= "2016-11-23"
  )
GROUP BY
  o.order_status