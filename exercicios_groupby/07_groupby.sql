-- Qual o produto mais transacionado?

-- SELECT IdProduto,  

--     count(IdTransacao) AS qtdeTransacao


-- FROM transacao_produto

-- GROUP BY IdProduto
-- ORDER BY qtdeTransacao DESC;

select IdProduto,
        count(*)

FROM transacao_produto

GROUP BY IdProduto
ORDER BY count(*) DESC

LIMIT 10