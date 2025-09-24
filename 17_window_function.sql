WITH sumario_dias AS (
    SELECT DISTINCT substr(DtCriacao, 1, 10) AS data,
        count(*) AS quantTransacoes

    FROM transacoes

    WHERE DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'

    GROUP BY data
)

SELECT *,
        SUM(quantTransacoes) OVER (ORDER BY data) AS quantTransacoesAcum

FROM sumario_dias