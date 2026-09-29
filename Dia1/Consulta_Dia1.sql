SELECT invoice_id AS id_pedido, data_venda, categoria, cidade,
       quantidade, preco_unitario,
       (quantidade * preco_unitario) AS receita_total,
       forma_pagamento
FROM vendas;