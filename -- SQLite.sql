SELECT
  o.order_id AS id_pedido,
  o.customer_id AS id_cliente,
  o.order_status AS status_pedido,
  oi.product_id AS id_produto,
  oi.price AS preco
FROM
  orders o INNER JOIN order_items oi ON (oi.order_id = o.order_id)
