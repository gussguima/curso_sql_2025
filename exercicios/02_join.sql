-- Quais clientes assinaram a lista de presença no dia 2025/08/25?

SELECT DISTINCT substr(t.DtCriacao, 1, 10) AS data,
                t.IdCliente,
                count(*) AS quantAssinaturas

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE data = '2025-08-25'
AND p.DescProduto = 'Lista de presença'

GROUP BY t.IdCliente;