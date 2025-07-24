-- HAVING
-- =====================================================================================================================
-- PARA QUE SERVE ######################################################################################################
-- Serve para filtrar colunas agrupadas
-- Diferente do WHERE que só filtra linha por linha
-- =====================================================================================================================

-- EXEMPLOS ############################################################################################################

-- (Exemplo 1) Filtrando uma coluna agregada
-- Calcule o nº de transações e o faturamento aprovado por estado e traga o resultado
-- apenas dos estados com faturamento maior que 2 Milhões.

SELECT
    estado
  , COUNT(*)            AS transacoes
  , SUM(vlr_trans_real) AS faturamento
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
GROUP BY
    estado
HAVING
    SUM(vlr_trans_real) > 2000000
ORDER BY
    faturamento DESC;

-- (Exemplo 2) Agora é com você!
-- Calcule o nº de transacoes e o faturamento por estado e por DN, e traga o resultado
-- apenas dos estados com faturamento maior que 2 Milhões e nº de transacoes menor que 20 mil.

SELECT
    estado
  , COUNT(*)            AS transacoes
  , SUM(vlr_trans_real) AS faturamento
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
GROUP BY
    estado
HAVING
    SUM(vlr_trans_real) > 2000000
AND
    COUNT(*) < 20000
ORDER BY
    faturamento DESC;
