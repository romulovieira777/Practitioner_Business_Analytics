-- (Exemplo 4) Filtro com BETWEEN
-- Liste os emails dos clientes da nossa base que moram nos estados do Rio Grande do Sul
-- e que abriram a conta em abril/2023.

SELECT 
    email,
    estado,
    data_abertura
FROM 
    workspace_db.tb_contas_final
WHERE 
    estado = 'RS'
AND 
    data_abertura BETWEEN 20230401 AND 20230430;


-- (Exemplo 5) Filtro com LIKE
-- Liste nº da conta dos clientes da nossa base que se chamam ISABELA

SELECT 
    num_cont,
    nome
FROM 
    workspace_db.tb_contas_final
WHERE 
    nome LIKE 'ISABELA%';


-- (Exemplo 6) Filtro com LIKE
-- Liste nº da conta dos clientes da nossa base que se chamam ISABELA
-- Ou tem qualquer variação desse nome

SELECT 
    num_cont,
    nome
FROM 
    workspace_db.tb_contas_final
WHERE 
    nome LIKE '%ISAB%';


-- (Exemplo 7) Agora é com você!
-- Liste nº da conta dos clientes da nossa base que tem um nome que termina com "ANDO"
-- Ou tem qualquer variação desse nome

SELECT 
    num_cont
FROM 
    workspace_db.tb_contas_final
WHERE 
    nome LIKE '%ANDO';
