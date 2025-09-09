SELECT IdTransacao,
       IdCliente,
       QtdePontos,
       CASE
            WHEN QtdePontos < 10 THEN 'baixo'
            WHEN QtdePontos < 500 THEN 'medio'
            ELSE 'alto'
        END AS Ticket

FROM transacoes

-- WHERE Ticket = 'alto'

ORDER BY QtdePontos DESC

LIMIT 10;