-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente,
       count(IdTransacao) AS quantTransacoes

FROM transacoes

WHERE DtCriacao BETWEEN '2024-01-01' AND '2025-01-01'

GROUP BY IdCliente

ORDER BY quantTransacoes DESC

LIMIT 1;