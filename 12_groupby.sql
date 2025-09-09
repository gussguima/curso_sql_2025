-- SELECT IdProduto,
--        count(*) AS quantTransacoes

-- FROM transacao_produto

-- GROUP BY IdProduto;

SELECT IdCliente,
       sum(QtdePontos) AS quantPontos,
       count(IdTransacao) AS quantTransacoes

FROM transacoes

WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-08-01'

GROUP BY IdCliente
HAVING quantPontos >= 4000 

ORDER BY quantPontos DESC

LIMIT 10;