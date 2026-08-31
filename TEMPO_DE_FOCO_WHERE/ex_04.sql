-- Lista de clientes com 100 a 200 pontos (inclusive ambos);


/* ESSE TA ERRADO

SELECT * 

FROM clientes

WHERE qtdePontos IN (100, 200)
*/

SELECT IdCliente,
    QtdePontos

FROM clientes

-- WHERE QtdePontos >= 100
-- AND QtdePontos <= 200

WHERE QtdePontos BETWEEN 100 AND 200