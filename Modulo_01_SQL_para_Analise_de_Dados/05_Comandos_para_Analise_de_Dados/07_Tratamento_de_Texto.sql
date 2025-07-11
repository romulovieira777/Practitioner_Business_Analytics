------------------------------------------------------------------------------------------------------------------------
-- TRATAMENTO DE TEXTO
------------------------------------------------------------------------------------------------------------------------

-- (Exemplo 1)  Uso do LOWER
-- Transforme os nomes dos clientes da tabela workspace_db.tb_contas_final em letras minúsculas
SELECT
    LOWER(nome) AS Nome_Cliente_Lower
FROM
    workspace_db.tb_contas_final;

-- (Exemplo 2) Uso do UPPER
-- Transforme os nomes dos ramos da tabela workspace_db.tb_contas_final em letras maiúsculas
SELECT
    UPPER(nm_ramo) AS Ramo_Maiusculo
FROM
    workspace_db.tb_contas_final;

-- (Exemplo 3) Uso do conector Pipe ||
-- Crie um "gmail" padrao dos clientes com o primeiro nome. Ex nome=VITORIA, gmail=vitoria@gmail.com
SELECT
    LOWER(nome) || '@gmail.com' AS Gmail_Padrao
FROM
    workspace_db.tb_contas_final;

-- (Exemplo 4) Uso do SUBSTRING
-- Selecione o ano de abertura da conta dos clientes da tabela workspace_db.tb_contas_final
SELECT
    SUBSTRING(CAST(data_abertura AS VARCHAR), 1, 4) AS Ano_Abertura
FROM
    workspace_db.tb_contas_final;


-- (Exemplo 5) Agora eh com voce!
-- Selecione o nome do cliente com a primeira letra em maiúsculo
SELECT
    UPPER(SUBSTRING(nome, 1, 1)) || LOWER(SUBSTRING(nome, 2)) AS Nome_Corrigido
FROM
    workspace_db.tb_contas_final;

-- (Exemplo 6) Uso do TRIM
-- Corrija o nome do estabelecimento '        MERCADO         DO           ITAUSHOP                   ' removendo os espaços laterais
SELECT
    TRIM(nome_estabelecimento) AS Nome_Estabelecimento_Corrigido
FROM
    workspace_db.tb_contas_final;
