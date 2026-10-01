SELECT invoice_id AS id_pedido, data_venda, hora_venda,
       DATEDIFF(data_venda, '2019-01-01') AS dias_desde_inicio,
       DAYOFWEEK(data_venda) AS num_dia_semana,
       ELT(DAYOFWEEK(data_venda), 'Dom','Seg','Ter','Qua','Qui','Sex','Sab') AS dia_semana,
       MONTH(data_venda) AS mes,
       HOUR(hora_venda) AS hora,
       quantidade * preco_unitario AS receita_total,
       avaliacao, forma_pagamento
FROM vendas;