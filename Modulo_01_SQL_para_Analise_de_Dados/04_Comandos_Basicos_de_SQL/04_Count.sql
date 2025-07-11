------------------------------------------------------------------------------------------------------------------------
-- FUNCOES AGREGADAS
------------------------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE ######################################################################################################
-- Servem para executar operações aritméticas nos registros de uma coluna.

-- TIPOS DE FUNCOES AGREGADAS ##########################################################################################
-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()

-- COUNT ###############################################################################################################
-- (Exemplo 1) Contagem de todas as linhas de uma tabela
-- Conte todas as transacoes realizadas no itau (aprovadas ou negadas)

SELECT 
    COUNT(*) AS transacoes
FROM 
    workspace_db.tb_transacoes_final;


-- (Exemplo 2) Contagem com filtro
-- Conte todas as transacoes que ocorreram no 1º trimestre (aprovadas ou negadas)

SELECT 
    COUNT(*) AS transacoes
FROM 
    workspace_db.tb_transacoes_final
WHERE 
    dt_tran BETWEEN CAST('2023-01-01' AS DATE) AND CAST('2023-03-30' AS DATE);


-- (Exemplo 3) Contagem distinta de uma coluna
-- Conte todos os clientes distintos que transacionaram no 1º trimestre (aprovadas ou negadas)

SELECT 
    COUNT(DISTINCT num_cont) AS contas
FROM 
    workspace_db.tb_transacoes_final
WHERE 
    dt_tran BETWEEN CAST('2023-01-01' AS DATE) AND CAST('2023-03-30' AS DATE);
