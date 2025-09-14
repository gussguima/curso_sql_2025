-- Do início ao fim do nosso curso (2025/08/25 a 2025/08/29), quantos clientes assinaram a lista de presença?

SELECT DISTINCT count(DISTINCT t.IdCliente) AS quantAssinaturas

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE t.DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'
AND p.DescProduto = 'Lista de presença';