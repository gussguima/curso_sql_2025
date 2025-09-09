SELECT sum(
           CASE
           WHEN QtdePontos > 0 THEN QtdePontos
           END) AS QtdePontosPositivos,

        sum(
            CASE
            WHEN QtdePontos < 0 THEN QtdePontos
            END) AS QtdePontosNegativos

FROM transacoes

WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-08-01';