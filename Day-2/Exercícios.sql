-- Databricks notebook source
SELECT *
  FROM silver_olist.cliente

-- COMMAND ----------

-- Clientes do estado de são Paulo
SELECT *
  FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

SELECT *
  FROM silver_olist.vendedor
WHERE descUF IN ('SP', 'RJ')

-- COMMAND ----------

SELECT *
  FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'

-- COMMAND ----------

SELECT * FROM silver_olist.produto
WHERE descCategoria in ('perfumaria', 'bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

SELECT *
  FROM silver_olist.item_pedido
  WHERE idPedidoItem > 1

-- COMMAND ----------

SELECT *
  FROM silver_olist.item_pedido
  WHERE vlFrete > vlPreco

-- COMMAND ----------

SELECT *
  FROM silver_olist.pedido


-- COMMAND ----------


