-----------------------------------------------------------------------------------------------------------------------
-- SELECT
-----------------------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE?
-- Serve para selecionar colunas de uma tabela.

-- SINTAXE
--SELECT coluna1, coluna2, coluna3
--FROM schema_1.tabela_1;
-----------------------------------------------------------------------------------------------------------------------
-- EXEMPLOS
-- (Exemplo 01) Seleção de uma coluna de uma tabela
-- Liste os e-mails dos clientes da tabela schema_1.tabela_1
SELECT
    email
FROM
    schema_1.tabela_1;

-----------------------------------------------------------------------------------------------------------------------

-- (Exemplo 02) Seleção de mais de uma coluna de uma tabela
-- Liste os e-mails e os nomes dos clientes da tabela schema_1.tabela_1
SELECT
    email
  , nome
FROM
    schema_1.tabela_1;

-----------------------------------------------------------------------------------------------------------------------

-- (Exemplo 03) Seleção de todas as colunas de uma tabela
-- Liste todas as informações dos clientes da tabela schema_1.tabela_1
SELECT
    *
FROM
    schema_1.tabela_1;
