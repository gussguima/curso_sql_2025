SELECT 
       count(*),
       count(DISTINCT IdTransacao   ),
       count(DISTINCT IdCliente)

FROM transacoes

WHERE DtCriacao BETWEEN '2025-07-01' AND '2025-08-01';