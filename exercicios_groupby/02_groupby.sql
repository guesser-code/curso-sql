-- Qual cliente juntou mais pontos positivos em 2025-05?

-- SELECT IdCliente,

--         sum(QtdePontos) AS QtTotal,

--         sum(CASE
--         WHEN QtdePontos > 0 THEN QtdePontos
--         END) AS QtdePontosPos, 

--         sum(CASE
--         WHEN QtdePontos < 0 THEN QtdePontos
--         END) AS QtdePontosNeg

-- FROM transacoes

-- WHERE DtCriacao >= '2025-05-01'
-- AND DtCriacao < '2025-06-01'

-- GROUP BY IdCliente
-- ORDER BY qtdePontosPos DESC

-- LIMIT 1;


SELECT IdCliente,
        sum(QtdePontos) AS totalPontos

FROM transacoes

WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND QtdePontos > 0

GROUP BY IdCliente

ORDER BY sum(QtdePontos) DESC

LIMIT 1


