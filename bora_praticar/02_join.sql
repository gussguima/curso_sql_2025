-- Em 2024, quantas transações de Lovers tivemos?

SELECT p.DescCateogriaProduto,
       count(t.IdTransacao) AS quantTransacoes

FROM transacoes AS t

LEFT JOIN transacao_produto as tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE t.DtCriacao BETWEEN '2024-01-01' AND '2025-01-01'
AND p.DescCateogriaProduto = 'lovers';