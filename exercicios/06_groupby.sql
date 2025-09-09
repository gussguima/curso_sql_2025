-- Qual dia da semana tem mais pedidos em 2025?

SELECT strftime('%w', substr(DtCriacao, 1,10)) AS diaSemana,
       count(*) AS quantTransacoes

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY diaSemana

ORDER BY quantTransacoes DESC;