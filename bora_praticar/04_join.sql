-- Qual o total de pontos trocados no Stream Elements em Junho de 2025?

SELECT p.DescCateogriaProduto,
       sum(t.QtdePontos) AS quantPontos

FROM transacoes AS t

LEFT JOIN transacao_produto AS tp
ON t.IdTransacao = tp.IdTransacao

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

WHERE DtCriacao BETWEEN '2025-06-01' AND '2025-07-01'
AND t.QtdePontos < 0
AND p.DescCateogriaProduto = 'streamelements';