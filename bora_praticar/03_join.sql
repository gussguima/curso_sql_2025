-- Qual mês tivemos mais lista de presença assinada?

SELECT substr(DtCriacao, 1, 7) AS anoMes,
       count(DISTINCT t.IdTransacao) AS quantTransacoes

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE p.DescProduto = 'Lista de presença'

GROUP BY anoMes

ORDER BY quantTransacoes DESC;