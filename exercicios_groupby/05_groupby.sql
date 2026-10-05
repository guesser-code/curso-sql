-- -- Qual o valor médio de pontos positivos por dia?

-- SELECT DtCriacao,
--     SUM(QtdePontos) * 1.0 / 909 AS MediaPontosPorDia



-- -- Total de dias = 909

-- FROM transacoes

-- ORDER BY MediaPontosPorDia

SELECT sum(QtdePontos) AS totalpontos,
        -- count(substr(DtCriacao,1,10)) AS QtdeDiasRepetidos,
                count(DISTINCT substr(DtCriacao,1,10)) AS QtdeDiasUnicos,

        sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS avgPontosDia



FROM transacoes

WHERE QtdePontos > 0;

SELECT substr(DtCriacao,1,10) AS dTDia,
    AVG(QtdePontos) AS mediaDia

FROM transacoes

WHERE QtdePontos > 0

GROUP BY 1
ORDER BY 2
;