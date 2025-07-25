-- GROUP BY
-- PARA QUE SERVE #################################################################################################
-- Serve para agrupar registros semelhantes de uma coluna
-- Normalmente utilizado em conjunto com as funções de agregacao (COUNT, SUM, AVG, MIN, MAX)
-- ###############################################################################################################

-- EXEMPLOS ######################################################################################################

-- (Exemplo 1) Agrupamento de uma coluna com uma coluna agregada
-- Calcule o n° de transações aprovadas por estado

SELECT
    estado,
    COUNT(*) AS transacoes
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
GROUP BY
    estado
ORDER BY
    transacoes DESC;

-- (Exemplo 2) Agrupamento de uma coluna com varias colunas agregadas
-- Calcule o n° transações, faturamento e o ticket medio aprovado por estado
-- Mostre apenas os 10 primeiros estados com maior faturamento

SELECT
    estado,
    COUNT(*)            AS transacoes,
    SUM(vlr_trans_real) AS faturamento,
    AVG(vlr_trans_real) AS ticket_medio
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
GROUP BY
    estado
ORDER BY
    faturamento DESC
LIMIT 10;

-- (Exemplo 3) Agrupamento de varias colunas com uma coluna agregada
-- Calcule n° transacoes aprovadas por estado e por forma de pagamento

SELECT
    estado,
    forma_pagamento,
    COUNT(*) AS transacoes
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
GROUP BY
    estado,
    forma_pagamento
ORDER BY
    estado, transacoes DESC;
