-- SELECT * 

-- FROM CLIENTES

-- ORDER BY QtdePontos DESC

-- LIMIT 10;

SELECT *

FROM clientes

WHERE flTwitch = 1
AND flEmail = 1

ORDER BY DtCriacao ASC, QtdePontos DESC