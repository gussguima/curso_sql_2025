SELECT IdProduto,
       DescProduto,
       DescCateogriaProduto

FROM produtos
WHERE DescCateogriaProduto = 'rpg'
LIMIT 10;