-- SUM #################################################################################################################

-- Calcule quantos clientes ativos existem nos produtos do itau
SELECT
    SUM(n_clientes) AS clientes_ativos
FROM
    workspace_db.tb_depara_produtos_final;

-- (Exemplo 1) Soma dos valores de uma coluna
-- Calcule o faturamento aprovado no 1º trimestre
SELECT
    SUM(vlr_tran_real) AS faturamento
FROM
    workspace_db.tb_transacoes_final
WHERE
    dt_tran BETWEEN CAST('2023-01-01' AS DATE) AND CAST('2023-03-30' AS DATE)
    AND
        situacao = 'APROVADO';

-- (Exemplo 2) Funções agregadas em mais de uma coluna
-- Calcule o ticket medio das transacoes aprovadas no 1º trimestre
SELECT
    COUNT(*)                      AS transacoes
  , SUM(vlr_tran_real)            AS faturamento
  , SUM(vlr_tran_real) / COUNT(*) AS ticket_medio
FROM
    workspace_db.tb_transacoes_final
WHERE
    dt_tran BETWEEN CAST('2023-01-01' AS DATE) AND CAST('2023-03-30' AS DATE)
    AND
        situacao = 'APROVADO';
