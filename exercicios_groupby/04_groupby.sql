-- -- Quantos produtos são de rpg?

SELECT DescCategoriaProduto,

        count(DescCategoriaProduto) as QtdeRPG

        

FROM produtos

WHERE DescCategoriaProduto = 'rpg';



SELECT count(*) 

FROM produtos

WHERE DescCategoriaProduto = 'rpg';



SELECT DescCategoriaProduto,
        count(*)

FROM produtos

GROUP BY DescCategoriaProduto;