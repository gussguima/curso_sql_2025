-- Qual o produto com mais pontos transacionados?

SELECT IdProduto,
       sum(VlProduto * QtdeProduto) AS quantPontos

FROM transacao_produto

GROUP BY IdProduto

ORDER BY quantPontos DESC

LIMIT 1;