------------------------------------------------------------------------------------------------------------------------
-- LIMIT
------------------------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE?
-- Serve para limitar o n° de linhas da consulta.
-- Muito utilizado na etapa de exploração dos dados

-- SINTAXE
SELECT
    coluna1, coluna2, coluna3
FROM
    schema_1.tabela_1
LIMIT
    1;

------------------------------------------------------------------------------------------------------------------------
-- Exemplos
-- (Exemplo 01) Seleção das N primeiras usando LIMIT
-- Liste as 10 primeiras linhas da tabela schema_1.tabela_1
-- e salve os resultados no Excel.
SELECT
    *
FROM
    schema_1.tabela_1
LIMIT
    10;

------------------------------------------------------------------------------------------------------------------------
-- (Exemplo 02) Agora é com você!!!
-- Liste as 100 primeiras linhas da tabela schema_1.tabela_1
SELECT
    *
FROM
    schema_1.tabela_1
LIMIT
    100;

------------------------------------------------------------------------------------------------------------------------
-- (Exemplo 03) Agora é com você!!!
-- Liste as 200 primeiras linhas da tabela schema_1.tabela_1
SELECT
    *
FROM
    schema_1.tabela_1
LIMIT
    200;

------------------------------------------------------------------------------------------------------------------------
-- (Exemplo 04) Agora é com você!!!
-- Liste as 10 primeiras linhas da tabela schema_1.tabela_1
SELECT
    *
FROM
    schema_1.tabela_1
LIMIT
    10;

------------------------------------------------------------------------------------------------------------------------
-- DISTINCT
------------------------------------------------------------------------------------------------------------------------
-- PARA QUE SERVE?
-- Serve para remover linhas duplicadas e mostrar apenas linhas distintas.
-- Muito usado na etapa de exploração das bases de dados.

-- SINTAXE
SELECT
    DISTINCT coluna1, coluna2, coluna3
FROM
    schema_1.tabela_1;

------------------------------------------------------------------------------------------------------------------------
-- Exemplos
-- (Exemplo 01) Seleção de uma coluna sem DISTINCT
-- Liste os produtos que constam na tabela schema_1.tabela_1
SELECT
    produto
FROM
    schema_1.tabela_1;

------------------------------------------------------------------------------------------------------------------------
-- (Exemplo 02) Seleção de uma coluna com DISTINCT
-- Liste os produtos distintos que constam na tabela schema_1.tabela_1
SELECT
    DISTINCT produto
FROM
    schema_1.tabela_1;

------------------------------------------------------------------------------------------------------------------------
-- (Exemplo 03) Agora é com você!!!
-- Liste os num_publico distintos que constam na tabela schema_1.tabela_1
SELECT
    DISTINCT num_publico
FROM
    schema_1.tabela_1;