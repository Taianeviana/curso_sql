-- Databricks notebook source
SELECT * FROM silver_olist.cliente
LIMIT 10

-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'SC' THEN 'Catarinense' 
        ELSE 'outros'
      END AS descNacionalidade
  FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'SC' THEN 'Catarinense' 
        ELSE 'outros'
      END AS descNacionalidade,
      CASE
        WHEN descCidade like '%sao%' THEN 'Tem são no nome'
        ELSE 'não tem'
      END AS teste
  FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF in ('SP', 'RJ', 'ES', 'MG') THEN 'Sudeste' 
        ELSE 'outros'
      END AS descNacionalidade
  FROM silver_olist.vendedor


-- COMMAND ----------


