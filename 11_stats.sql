 SELECT round(avg(QtdePontos), 2) AS mediaCarteira,
        1. * sum(QtdePontos) / count(IdCliente) AS mediaCarteiraRaiz,
        min(QtdePontos) AS minCarteira,
        max(QtdePontos) AS maxCarteira
 
 FROM clientes