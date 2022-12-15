-- Databricks notebook source
SELECT * FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) --linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) as linhasNaoNulas,
  count(idCliente) as idsNaoNulos --linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) as linhasNaoNulas,
  count(idCliente) as idsNaoNulos, --linhas não nulas
  count(DISTINCT idCliente) as distIds
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) as linhasNaoNulas,
  count(idCliente) as idsNaoNulos, --linhas não nulas
  count(DISTINCT idCliente) as distIds,
  count(idClienteUnico),
  count(DISTINCT idClienteUnico)
FROM silver_olist.cliente

-- COMMAND ----------

SELECT AVG(vlPreco) as meanPreco,
       AVG(vlFrete) as meanFrete,
       MAX(vlPreco) as maxPreco,
       MAX(vlFrete) as maxFrete,
       MIN(vlPreco) as minPreco,
       PERCENTILE(vlPreco, 0.5) as medianPreco
from silver_olist.item_pedido

-- COMMAND ----------

SELECT descUF, count(*) as totalClientes
FROM silver_olist.cliente
GROUP BY descUF

-- COMMAND ----------


