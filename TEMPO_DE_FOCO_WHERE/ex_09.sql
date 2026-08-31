-- Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]


SELECT

transacoes.*,

    CASE 
        WHEN transacoes.qtdePontos < 10 THEN 'Baixo'
        WHEN transacoes.qtdePontos < 500 THEN 'Médio'
        WHEN transacoes.qtdePontos >= 500 THEN 'Alto'
    END AS CategoriaPontos

FROM transacoes

