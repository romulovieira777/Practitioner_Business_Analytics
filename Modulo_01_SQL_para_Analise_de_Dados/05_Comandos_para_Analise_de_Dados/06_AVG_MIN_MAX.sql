------------------------------------------------------------------------------------------------------------------------
-- AVG, MAX, MIN #######################################################################################################
------------------------------------------------------------------------------------------------------------------------

-- (Exemplo 1) Aplicacao da funcao AVG
-- Calcule o ticket medio das transacoes aprovadas no 1º trimestre utilizando a funcao AVG
SELECT
    COUNT(*)                      AS Transacoes
  , SUM(vlr_tran_real)            AS Faturamento
  , SUM(vlr_tran_real) / COUNT(*) AS Ticket_Medio1
  , AVG(vlr_tran_real)            AS Ticket_Medio2
FROM
    workspace_db.tb_transacoes_final
WHERE
    dt_tran BETWEEN CAST('2023-01-01' AS DATE) AND CAST('2023-03-30' AS DATE)
    AND status = 'APROVADO'

-- (Exemplo 2) Calcule o preco minimo, maximo e medio das transacoes aprovadas a vista
SELECT
    MIN(vlr_tran_real)            AS Preco_Minimo
  , MAX(vlr_tran_real)            AS Preco_Maximo
  , AVG(vlr_tran_real)            AS Preco_Medio
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
    AND forma_pagamento = 'a vista'

-- (Exemplo 3) Calcule o preco minimo, maximo e medio das transacoes aprovadas parceladas
SELECT
    MIN(vlr_tran_real)            AS Preco_Minimo
  , MAX(vlr_tran_real)            AS Preco_Maximo
  , AVG(vlr_tran_real)            AS Preco_Medio
FROM
    workspace_db.tb_transacoes_final
WHERE
    status = 'APROVADO'
    AND forma_pagamento LIKE '%parcelado%'
