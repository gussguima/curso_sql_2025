SELECT round(avg(QtdePontos), 2) AS mediaCarteira,
       min(QtdePontos) AS minCarteira,
       max(QtdePontos) AS maxCarteira,
       sum(FlTwitch),
       sum(FlEmail)

FROM clientes;