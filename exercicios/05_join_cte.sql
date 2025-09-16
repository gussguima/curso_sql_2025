-- Quem iniciou o curso no primeiro dia, assistiu em média quantas aulas?

WITH primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

dias_curso AS (
    SELECT DISTINCT IdCliente,
                    substr(DtCriacao, 1, 10) AS data
    FROM transacoes
    WHERE DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'
),

cliente_dias AS (
    SELECT t1.IdCliente,
        count(t2.data) AS diasPresente
    FROM primeiro_dia AS t1 
    LEFT JOIN dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.IdCliente
)

SELECT round(avg(diasPresente), 0) AS media
FROM cliente_dias;