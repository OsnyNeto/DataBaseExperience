-- LISTA DE CLIENTES
select * FROM PESSOA;

-- LISTA DE CLIENTES PESSOA FÍSICA
SELECT * FROM PESSOA, CLIENTE_PF WHERE ID_PESSOA=ID_CLIENTE_PF;

-- LISTA DE CLIENTES PESSOA FÍSICA REFINADA
SELECT concat(NOME,' ',SOBRENOME) AS 'CLIENTE PESSOA FÍSICA', ENDERECO, TELEFONE FROM PESSOA, CLIENTE_PF WHERE ID_PESSOA=ID_CLIENTE_PF;

-- LISTA DE CLIENTES PESSOA JURÍDICA
SELECT concat(NOME,' ',SOBRENOME) AS 'CLIENTE PESSOA FÍSICA', ENDERECO, TELEFONE FROM PESSOA, CLIENTE_PJ WHERE ID_PESSOA=ID_CLIENTE_PJ;

-- LISTA DE CLIENTES PESSOA FÍSICA  COM INNER JOIN
SELECT concat(NOME,' ',SOBRENOME) AS 'CLIENTE PESSOA FÍSICA', ENDERECO, TELEFONE FROM PESSOA INNER JOIN CLIENTE_PF ON ID_PESSOA=ID_CLIENTE_PF;

-- LISTA DE CLIENTES E SEUS VEÍCULOS
SELECT concat(NOME,' ',SOBRENOME) AS CLIENTE, concat(MARCA,' ',MODELO) AS VEÍCULO, ANO FROM PESSOA AS P INNER JOIN VEICULO AS V ON P.ID_PESSOA = V.ID_PESSOA;

-- QUANTIDADE DE ORDEM DE SERVIÇO POR VEICULO
SELECT concat(MARCA,'-', MODELO) AS CARRO,ANO, count(*) AS 'OS POR VEICULO', SUM(VALOR_SERVICO) AS 'TOTAL SERVIÇO' FROM ORDEM_SERVICO AS OS INNER JOIN VEICULO AS V ON OS.ID_VEICULO =V.ID_VEICULO group by OS.ID_VEICULO;