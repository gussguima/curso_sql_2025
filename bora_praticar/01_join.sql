-- Qual categoria tem mais produtos vendidos?

SELECT p.DescCateogriaProduto,
       count(DISTINCT tp.IdTransacao) AS quantVendas

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON p.IdProduto = tp.IdProduto

GROUP BY p.DescCateogriaProduto
ORDER BY quantVendas DESC;