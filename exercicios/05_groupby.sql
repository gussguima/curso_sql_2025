-- Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS quantPontos,
       count(DISTINCT substr(DtCriacao, 1, 10)) AS quantDias,
       round(sum(QtdePontos) / substr(DtCriacao, 1, 10), 2) AS avgPontosDia

FROM transacoes

WHERE QtdePontos > 0;