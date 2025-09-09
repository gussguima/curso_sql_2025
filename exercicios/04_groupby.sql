-- Quantos produtos são de rpg?

SELECT count(*) AS quantRPG

FROM produtos

WHERE DescCateogriaProduto = 'rpg'