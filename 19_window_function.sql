WITH transacoes_clientes AS (
    SELECT IdCliente,
        COUNT(DISTINCT IdTransacao) AS quant_transacoes

    FROM transacoes

    WHERE DtCriacao BETWEEN '2025-08-25' AND '2025-08-30' 

    GROUP BY IdCliente
)

SELECT *,
       RANK() OVER (ORDER BY quant_transacoes DESC) AS ranking

FROM transacoes_clientes

LIMIT 10;