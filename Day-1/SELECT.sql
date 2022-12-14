-- Databricks notebook source
SELECT * FROM silver_olist.pedido LIMIT 5

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtEntregue) as qtdDiasPromessaEntrega
FROM silver_olist.pedido

-- COMMAND ----------

--WHERE


-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE descSituacao = 'canceled'

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE (descSituacao = 'shipped'
OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'


-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * FROM silver_olist.pedido
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
