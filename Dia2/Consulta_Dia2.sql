SELECT invoice_id AS id_pedido, cidade, categoria, data_venda,
       quantidade * preco_unitario AS receita_total,
       SUM(quantidade * preco_unitario) OVER (
           PARTITION BY cidade
           ORDER BY data_venda, hora_venda, invoice_id
       ) AS receita_acumulada_cidade,
       RANK() OVER (
           PARTITION BY cidade
           ORDER BY quantidade * preco_unitario DESC
       ) AS ranking_na_cidade
FROM vendas;