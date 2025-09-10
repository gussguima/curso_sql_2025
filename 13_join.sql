SELECT tp.*,
       p.DescProduto AS nomeProduto

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto;