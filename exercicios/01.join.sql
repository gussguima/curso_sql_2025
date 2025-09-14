-- Quais clientes mais perderam pontos por Lover?

SELECT t.IdCliente,
       sum(t.QtdePontos) AS quantPontos

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE DescCateogriaProduto = 'lovers'

GROUP BY t.IdCliente

ORDER BY quantPontos ASC

LIMIT 5;