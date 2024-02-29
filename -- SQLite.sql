SELECT
  c.customer_city AS cidade,
  c.customer_state AS estado,
  COUNT(c.customer_id) AS qnt_clientes
FROM
  customer c
WHERE
  c.customer_city LIKE "m%o%a"
GROUP BY
  c.customer_state,
  c.customer_city
HAVING
  COUNT(c.customer_id) > 10