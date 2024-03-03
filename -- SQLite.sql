SELECT
  o.order_id AS id_pedido,
  c.customer_state AS estado_cliente,
  c.customer_city AS cidade_cliente,
  o.order_status AS status_pedido,
  p.product_category_name AS categoria_produto,
  oi.price AS preco,
  s.seller_city AS cidade_vendedor,
  s.seller_state AS estado_vendedor,
  op.payment_type AS tipo_pagamento
FROM
  orders o
  INNER JOIN customer c ON (o.customer_id = c.customer_id)
  INNER JOIN order_items oi ON (o.order_id = oi.order_id)
  INNER JOIN products p ON (oi.product_id = p.product_id)
  INNER JOIN sellers s ON (oi.seller_id = s.seller_id)
  INNER JOIN order_payments op ON (o.order_id = op.order_id)
WHERE
  op.payment_type = "boleto"