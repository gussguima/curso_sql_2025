-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT IdCliente,
       sum(QtdePontos) AS quantPontos

FROM transacoes

WHERE QtdePontos > 0 AND DtCriacao BETWEEN '2025-05-01' AND '2025-06-01'

GROUP BY IdCliente

ORDER BY quantPontos DESC;