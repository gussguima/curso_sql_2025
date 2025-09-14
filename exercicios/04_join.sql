-- Clientes mais antigos, tem mais frequência de transação?

SELECT c.IdCliente, 
       julianday('now') - julianday(substr(c.DtCriacao, 1, 10)) AS age,
       count(1) AS quantAssinaturas

FROM clientes AS c

LEFT JOIN transacoes as t
ON c.IdCliente = t.idcliente

GROUP BY c.IdCliente, age