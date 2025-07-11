-------------------------------------------------------------------------------------------------------
-- CONVERSÃO DE UNIDADES (CAST)
-------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE ####################################################################################
-- Para transformar os valores de uma coluna em valores de uma unidade diferente

-- UNIDADES MAIS USADAS ##############################################################################
-- VARCHAR
-- DECIMAL (Valores Inteiros)
-- DOUBLE (Valores Quebrados)
-- DATE
-- TIMESTAMP

-- EXEMPLOS ###########################################################################################

-- (Exemplo 1) Conversao de numero em texto
-- Transforme a data_abertura da tabela workspace_db.tb_contas_final em uma coluna de texto (varchar)

SELECT
    CAST(data_abertura AS VARCHAR)
FROM
    workspace_db.tb_contas_final;


-- (Exemplo 2) Agora é com você!
-- Transforme o cod_tran da tabela workspace_db.tb_transacoes_final em uma coluna de texto (varchar)

SELECT
    CAST(cod_tran AS VARCHAR)
FROM
    workspace_db.tb_transacoes_final;


-- (Exemplo 3) Agora é com você!
-- Transforme o cod_prod da tabela workspace_db.tb_produtos_final em uma coluna de texto (varchar)

SELECT
    CAST(cod_prod AS VARCHAR)
FROM
    workspace_db.tb_produtos_final;
