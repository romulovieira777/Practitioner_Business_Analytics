------------------------------------------------------------------------------------------------------------------------
-- ORDER BY
------------------------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE ######################################################################################################
-- Servee para ordenar a seleção de acordo com uma regra definida pelo usuário.

-- SINTAXE #############################################################################################################
-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema.tabela_1
-- WHERE condicao_x DESC -- opcional
-- ORDER BY coluna_1 ASC, coluna_2 DESC, coluna_3 ASC; -- opcional

-- EXEMPLOS ############################################################################################################
-- (Exemplo 1) Ordenação de valores numéricos
-- Liste os produtos, 10 produtos da tabela workspace_db.tb_depara_produtos_final
-- Com o maior número de cartoes ativos

SELECT
    cd_prod
  , produto
  , n_clientes
FROM
    workspace_db.tb_depara_produtos_final
ORDER BY
    n_clientes
LIMIT 10;


SELECT
    cd_prod
  , produto
  , n_clientes
FROM
    workspace_db.tb_depara_produtos_final
ORDER BY
    n_clientes DESC
LIMIT 10;


-- (Exemplo 2) Ordenação de texto
-- Liste os produtos distintos da tabela workspace_db.tb_depara_produtos_final na ordem crescente.
SELECT DISTINCT
    produto
FROM
    workspace_db.tb_depara_produtos_final
ORDER BY
    produto ASC;


-- (Exemplo 3) Agora eh com voce!!
-- Liste os nomes de ramos da tabela workspace_db.tb_depara_ramos_final na ordem descrescente.
SELECT DISTINCT
    nm_ramo
FROM
    workspace_db.tb_depara_ramos_final
ORDER BY
    nm_ramo DESC;


-- (Exemplo 4) Agora eh com voce!!
-- Liste as 10 transacoes mais caras da tabela workspace_db.tb_transacoes_final
SELECT
    *
FROM
    workspace_db.tb_transacoes_final
ORDER BY
    vlr_tran_real DESC
LIMIT 10;


-- (Exemplo 5) Agora eh com voce!!
-- Liste as 10 transacoes aprovadas mais caras da tabela workspace_db.tb_transacoes_final
SELECT
    *
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
ORDER BY
    vlr_tran_real DESC
LIMIT 10;