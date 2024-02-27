SELECT
  op.payment_type,
  op.payment_installments,
  MIN(op.payment_value) AS min_val_parc,
  MAX(op.payment_value) AS max_val_parc,
  AVG(op.payment_value) AS med_val_parc,
  SUM(op.payment_value) AS som_val_parc
FROM
  orders o
GROUP BY
  op.payment_type,
  op.payment_installments