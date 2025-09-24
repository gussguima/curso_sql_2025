WITH primeiro_dia AS (

    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'

)

SELECT substr(t2.DtCriacao, 1, 10) AS data,
       count(DISTINCT t1.IdCliente) AS quantCliente,
       1.* count(DISTINCT t1.IdCliente) / (SELECT count(*) FROM primeiro_dia) AS retencao

FROM primeiro_dia AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

WHERE t2.DtCriacao BETWEEN '2025-08-25' AND '2025-08-30'

GROUP BY data;