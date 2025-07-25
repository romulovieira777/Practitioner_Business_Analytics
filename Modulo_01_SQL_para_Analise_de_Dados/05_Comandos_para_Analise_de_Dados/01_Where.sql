-- WHERE
-- PARA QUE SERVE *******************************************************************************************
-- Serve para filtrar linhas de acordo com uma condição específica.
-- ***********************************************************************************************************

-- SINTAXE GERAL *********************************************************************************************
-- SELECT coluna_1, coluna_2, coluna_3
-- FROM schema_1.tabela_1
-- WHERE condição_X;
-- ***********************************************************************************************************

-- EXEMPLO 1) Filtro com condição única
-- Liste os emails dos clientes da nossa base que moram no estado do Rio Grande do Sul.

SELECT
    email,
    estado
FROM
    workspace.db.tb_contas_final
WHERE
    estado = 'RS';

-- Exemplo 2) Filtro com mais de uma condição
-- Liste os emails dos clientes da nossa base que moram nos estados do Rio Grande do Sul
-- ou Mato Grosso do Sul.

SELECT
    email,
    estado
FROM
    workspace.db.tb_contas_final
WHERE
    estado = 'RS'
OR
    estado = 'MS';

-- Exemplo 3) Filtro com mais de uma condição
-- Liste os emails dos clientes da nossa base que moram nos estados do Rio Grande do Sul
-- Santa Catarina ou São Paulo.

SELECT
    email,
    estado
FROM
    workspace.db.tb_contas_final
WHERE
    estado IN ('RS', 'SC', 'SP');

-- Exemplo 4) Filtro com BETWEEN
-- Liste os emails dos clientes da nossa base que moram nos estados do Rio Grande do Sul
-- e que abriram a conta em abril/2023.

SELECT
    email,
    estado,
    data_abertura
FROM
    workspace.db.tb_contas_final
WHERE
    estado = 'RS'
AND
    data_abertura >= 20230402 AND data_abertura < 20230501;
