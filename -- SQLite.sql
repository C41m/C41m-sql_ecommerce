SELECT
  o.order_id AS id_pedido,
  o.order_status AS status_pedido,
  oi.product_id AS id_produto,
  p.product_category_name AS categoria_produto,
  or2.review_score AS nota_produto,
  op.payment_value AS valor_pagamento,
  op.payment_type AS tipo_pagamento,
  s.seller_city AS cidade_vendedor,
  g.geolocation_lat AS latitude,
  g.geolocation_lng AS longitude
FROM
  orders o
  LEFT JOIN order_items oi ON (oi.order_id = o.order_id)
  LEFT JOIN order_reviews or2 ON (or2.order_id = o.order_id)
  LEFT JOIN order_payments op ON (op.order_id = o.order_id)
  LEFT JOIN products p ON (p.product_id = oi.product_id)
  LEFT JOIN sellers s ON (s.seller_id = oi.seller_id)
  LEFT JOIN geolocation g ON (
    g.geolocation_zip_code_prefix = s.seller_zip_code_prefix
  )
LIMIT
  20;