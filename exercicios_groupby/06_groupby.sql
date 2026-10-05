-- -- Qual dia da semana quem mais pedidos em 2025?

-- SELECT *, 

-- CASE strftime('%w', datetime(substr(DtCriacao,1,19)))
--     WHEN '0' THEN 'Domingo'
--     WHEN '1' THEN 'Segunda'
--     WHEN '2' THEN 'Terça'
--     WHEN '3' THEN 'Quarta'
--     WHEN '4' THEN 'Quinta'
--     WHEN '5' THEN 'Sexta'
--     WHEN '6' THEN 'Sábado'
-- END AS diaSemana

-- FROM transacoes


SELECT

    CASE strftime('%w', datetime(substr(DtCriacao,1,19)))
        WHEN '0' THEN 'Domingo'
        WHEN '1' THEN 'Segunda'
        WHEN '2' THEN 'Terça'
        WHEN '3' THEN 'Quarta'
        WHEN '4' THEN 'Quinta'
        WHEN '5' THEN 'Sexta'
        WHEN '6' THEN 'Sábado'
    END AS diaSemana,

    count(DISTINCT IdTransacao) AS qtdeTransacao

FROM transacoes

WHERE substr(DtCriacao,1,4) =  '2025'

GROUP BY diaSemana
