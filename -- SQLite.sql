SELECT
  p.product_category_name,
  COUNT(DISTINCT p.product_id)
FROM
  products p
WHERE
  (
    product_category_name = "perfumaria"
    OR p.product_category_name = "brinquedos"
    OR p.product_category_name = "esporte_lazer"
    OR p.product_category_name = "cama_mesa_banho"
    OR p.product_category_name = "moveis_escritorio"
  )
  AND (
    p.product_photos_qty > 5
    AND p.product_weight_g > 5
    AND p.product_height_cm > 10
    AND p.product_width_cm > 20
  )
GROUP BY
  p.product_category_name