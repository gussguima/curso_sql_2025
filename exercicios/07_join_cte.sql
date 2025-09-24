-- Dentre os clientes de janeiro de 2025, quantos assistiram o curso de SQL?

WITH clientes_janeiro AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE DtCriacao BETWEEN '2025-01-01' AND '2025-02-01' 
),

clientes_curso AS (
    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE DtCriacao BETWEEN '2025-08-25' AND '2025-08-30' 
)

SELECT COUNT(DISTINCT t1.IdCliente) AS clientesJaneiro,
       COUNT(DISTINCT t2.IdCliente) AS clientesCurso

FROM clientes_janeiro AS t1

LEFT JOIN clientes_curso AS t2
ON t1.IdCliente = t2.IdCliente;