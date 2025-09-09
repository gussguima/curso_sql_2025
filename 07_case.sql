SELECT IdCliente,
       QtdePontos,
       CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos > 500 AND QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos > 1000 AND QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos > 5000 AND QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS Nivel

FROM clientes

WHERE Nivel = 'Mago Supremo'

ORDER BY QtdePontos DESC;