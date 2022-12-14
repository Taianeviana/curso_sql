-- Databricks notebook source
SELECT * FROM silver_olist.pedido LIMIT 5

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtEntregue) as qtdDiasPromessaEntrega
FROM silver_olist.pedido
