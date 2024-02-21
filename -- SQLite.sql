SELECT
  c.customer_id,
  c.customer_state
FROM
  customer c
WHERE
  c.customer_city = 'florianopolis'