-- Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?

WITH alunosDia01 AS (
    SELECT *
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

transacoesDiariasAlunos AS (
    SELECT t1.IdCliente,
        substr(t2.DtCriacao, 1, 10) AS Data,
        COUNT(*) AS quantTransacoes

    FROM alunosDia01 AS t1

    LEFT JOIN transacoes AS t2
    ON t1.IdCliente = t2.IdCliente
    AND t2.DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'

    GROUP BY t1.IdCliente, Data
),

tb_rn AS (
    SELECT *,
        row_number() OVER (PARTITION BY  IdCliente ORDER BY quantTransacoes DESC, Data) AS rn

    FROM transacoesDiariasAlunos
)

SELECT IdCliente,
       Data,
       quantTransacoes

FROM tb_rn

WHERE rn = 1