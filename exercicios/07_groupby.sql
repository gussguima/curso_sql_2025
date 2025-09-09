-- Qual o produto mais transacionado?

-- SELECT *

-- FROM produtos;

SELECT IdProduto,
       count(*) AS quantTransacoes

FROM transacao_produto

GROUP BY IdProduto

ORDER BY quantTransacoes DESC

LIMIT 1;