
INSERT INTO PESSOA(NOME ,SOBRENOME ,EMAIL ,DATA_NASCIMENTO ,ENDERECO ,TELEFONE ) VALUES 
('OSNY','MACHADO DE SOUZA BISNETO','OSNYDESOUZA@GMAIL.COM','1998/06/30','RUA APARICIO BORGES, 150, GRAVATAI/RS','51975231159'),
('LUCIANA','DA ROSA DE SOUZA','LUCIANA@GMAIL.COM','1979/12/06','RUA DOUTOR GETULIO BORGES, 50, GRAVATAI/RS','51998714997'),
('CAUÃ','DA ROSA DE SOUZA','CAUA@GMAIL.COM','2006/06/09','RUA AMERICANA DE ANAPOLIS, 77, GRAVATAI/RS','51978645321');
INSERT INTO PESSOA(NOME ,SOBRENOME ,EMAIL ,DATA_NASCIMENTO ,ENDERECO ,TELEFONE ) VALUES 
('PROVARIA','PROVARIA','PROVARIA@GMAIL.COM','2021/01/30','RUA VENANCIO AIRES, 50, GRAVATAI/RS','51998714997');
select*FROM PESSOA;
    
  INSERT INTO CLIENTE_PF() VALUES 
  (1,'05157981775','05083817477'),
  (2,'08598551274','03216488745'),
  (3,'02872583947','06073680263'),
  (4,'08561461472','03161549874');
  SELECT * FROM CLIENTE_PF;
  
INSERT INTO CLIENTE_PJ() VALUES (5,'34581516000139','PROVARIA','PROVARIA');
SELECT * FROM CLIENTE_PJ;
    
INSERT INTO  FUNCIONARIO() VALUES(2,'159357','MECÂNICO','MOTOR');

INSERT INTO VEICULO(MARCA ,MODELO ,MOTOR ,PLACA ,ANO,ID_PESSOA ) VALUES
('FORD','FIESTA','1.5','IUO-0B95',2014,3),
('PORSCHE','MACAN','3.0','AAA-1122',2016,1),
('FORD','FOCUS','2.0','BBB-2233',2014,2),
('FIAT','FIORINO','1.5','CCC-0B95',2020,5);


INSERT INTO MAO_OBRA(TIPO_SERVICO ,TEMPO_SERVCO ,VALOR_HORA ) VALUES
('TROCA DE PNEUS','60 MINUTOS',150.00),
('TROCA DE OLÉO','30 MINUTOS',40.00),
('TROCA DE VELAS','90 MINUTOS',80.00),
('HIGIENIZAÇÃO AR CONDICIONADO','60 MINUTOS',150.00),
('TROCA DE LÂMPADA FAROL, FAROLETE','15 MINUTOS',20.00),
('TROCA DE EMBREAGEM','120 MINUTOS',250.00);

INSERT INTO PECAS(NOME ,CODIGO ,FABRICANTE, MODELO ,VALOR) VALUES
('PNEU ARO 15 225/40','159278','MICHELIN','TT-A5',625.00),
('Válvula de pressão','175256','DANA','R-158TA5',25.00);

INSERT INTO ORDEM_SERVICO(DESCRICAO_SERVICO ,DATA_ENTRADA ,DATA_ENTREGA ,VALOR_SERVIÇO ,STATUS,ID_VEICULO) VALUES
('TROCA DE OLÉO',curdate(),NULL,40.00,'Em Serviço',2),
('TROCA DE OLÉO',curdate(),NULL,40.00,'Em Serviço',3),
('HIGIENIZAÇÃO AR CONDICIONADO',curdate(),NULL,150.00,'Em Serviço',2);

