-- JOIN
-- =====================================================================================================================
-- EXEMPLOS ############################################################################################################
-- Serve para juntar tabelas com base em um critério
-- o mais usado é o LEFT JOIN
-- =====================================================================================================================

-- EXEMPLOS ############################################################################################################

-- (Exemplo 1) Left join com uma base
-- Faça o join da tabela de transacoes com a tabela de ramos dos estabelecimentos
-- Traga apenas as 100 primeiras linhas

SELECT
    *
FROM
    workspace_db.tb_transacoes_final AS transacoes
LEFT JOIN
    workspace_db.tb_depara_ramos_final AS depara_ramos
ON
    transacoes.cd_ramo_atii = depara_ramos.cd_ramo
LIMIT 100;

-- (Exemplo 2) Left join com uma base e filtro em uma das tabelas
-- Liste as transacoes no ramo de ‘fast food’
-- Traga apenas as 100 primeiras linhas

SELECT
    *
FROM
    workspace_db.tb_transacoes_final AS transacoes
LEFT JOIN
    workspace_db.tb_depara_ramos_final AS depara_ramos
ON
    transacoes.cd_ramo_atii = depara_ramos.cd_ramo
WHERE
    depara_ramos.nm_ramo = 'fast food'
LIMIT 100;

-- (Exemplo 3) Left join com uma base e múltiplos filtros
-- Liste as transações aprovadas no ramo de ‘fast food’ pelo meio e pagamento contactless

SELECT
    *
FROM
    workspace_db.tb_transacoes_final AS transacoes
LEFT JOIN
    workspace_db.tb_depara_ramos_final AS depara_ramos
ON
    transacoes.cd_ramo_atii = depara_ramos.cd_ramo
WHERE
    depara_ramos.nm_ramo = 'fast food'
AND
    transacoes.status = 'APROVADO'
AND
    transacoes.flag_contactless = 'Contactless';

-- (Exemplo 4) Left join com uma base, múltiplos filtros e funcoes agregadas
-- Calcule o nº de transações aprovado por ramo de ‘fast food’

SELECT
    COUNT(*)            AS transacoes
  , SUM(vlr_trans_real) AS faturamento
FROM
    workspace_db.tb_transacoes_final AS transacoes
LEFT JOIN
    workspace_db.tb_depara_ramos_final AS depara_ramos
ON
    transacoes.cd_ramo_atii = depara_ramos.cd_ramo
WHERE
    depara_ramos.nm_ramo = 'fast food'
AND
    transacoes.status = 'APROVADO';
