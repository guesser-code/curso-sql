-- Qual cliente fez mais transações no ano de 2024?

-- SELECT IdCliente,
--         IdTransacao,
        
--         count(IdTransacao) as QtdeTransacoes

-- FROM transacoes

-- WHERE DtCriacao >= '2024-01-01'
-- AND DtCriacao < '2025-01-01'



-- GROUP BY IdCliente
-- ORDER BY QtdeTransacoes DESC

SELECT IdCliente,
        count(*),
        count(DISTINCT IdTransacao) as QtdeTransacoes

FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente
ORDER BY QtdeTransacoes DESC

limit 1