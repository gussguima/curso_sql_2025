WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE substr(dtCriacao, 1, 10) = '2025-08-25'
),

tb_cliente_ultimo_dia AS (
    SELECT IdCliente

    FROM transacoes

    WHERE substr(dtCriacao, 1, 10) = '2025-08-29'
)

SELECT DISTINCT t1.IdCliente

FROM tb_cliente_primeiro_dia AS t1

LEFT JOIN tb_cliente_ultimo_dia AS t2
ON t1.IdCliente = t2.IdCliente;