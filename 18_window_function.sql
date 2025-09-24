WITH transacoes_clientes AS (
    SELECT IdCliente,
        substr(DtCriacao, 1, 10) AS data,
        COUNT(DISTINCT IdTransacao) AS quantTransacoes

    FROM transacoes

    WHERE DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'

    GROUP BY IdCliente, data
),

tb_lag AS (
    SELECT *,
        SUM(quantTransacoes) OVER (PARTITION BY IdCliente ORDER BY data) AS pontosAcumulado,
        LAG(quantTransacoes) OVER (PARTITION BY IdCliente ORDER BY data) AS lagTransacoes

    FROM transacoes_clientes
)

SELECT *,
       ROUND(1.* quantTransacoes / lagTransacoes, 2)

FROM tb_lag