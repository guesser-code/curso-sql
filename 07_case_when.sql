-- Intervalos
-- De 0 a 500       -> Macio
-- De 501 a 1000    -> MACIOZINHO
-- De 1001 a 5000   -> Cuiudo
-- De 5001 a 10000  -> Muito Cuiudo
-- +10001           -> Rei da Saroba


SELECT IdCliente,
        QtdePontos,

        CASE
            WHEN QtdePontos <= 500 THEN 'Macio'
            WHEN QtdePontos <= 1000 THEN 'MACIOZINHO'
            WHEN QtdePontos <= 5000 THEN 'Cuiudo'
            WHEN QtdePontos <= 10000 THEN 'Muito Cuiudo'
            ELSE 'Rei da Saroba'
        END AS ClasseGrupo,


        CASE
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flMacio,

        CASE
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flCuiudo        


FROM clientes

    WHERE flMacio = 1

ORDER BY qtdePontos DESC