-- Inserindo dados tabela conta
insert into conta (tipoConta) values ('PF') ,('PJ');
-- Verificando dados inseridos
select * from conta;

-- Inserindo dados tabela cliente
 insert into cliente 	(idConta,nome,sobrenome, email, contato, dataNascimento) values 
						(2,'Luciana','Da Rosa de Souza','luciana@luciana.com','51999515515','1979/12/06'),
                        (2,'Osny','Machado de Souza Neto','osny@osny.com','51999231610','1977/03/26'),
                        (1,'Osny','Machado de Souza Bisneto','jr@jr.com','51999362365','1998/06/30'),
                        (1,'Luciano','de Souza','luciano@luciano.com','51999636585','1985/12/31'),
                        (2,'Alberto','Machado','alberto@alberto.com','51825698525','2000/05/05'),
                        (1,'Cauã','Da Rosa de Souza','caua@caua.com','51998472365','1981/06/10');
-- Verificando dados inseridos                        
select * from cliente;                        

-- Inserindo dados tabela produto
insert into produto (codigoProduto,nome,categoria,avaliacao,classificacao_kids,cor,valor,largura,comprimento,altura) values
					('1464sss1s5sdd','Bateria 9v','Eletrônico', 1.3,false,'preto',16.50,5,6,2),
                    ('09gfd90au890g','Violão','Brinquedos', 3.3,false,'branco',416.50,5,6,2),
                    ('90evquf4p0','Tablet 64Gb','Eletrônico', 2.3,false,'cinza',616.50,25,16,32),
                    ('vt3874yt8','Calça legging','Vestiário', 5.3,false,'verde',161.50,25,26,22);
                    
-- Verificando dados inseridos                        
select * from produto;  

-- Inserindo dados tabela pedido
insert into pedido 	(idConta,statusPedido,descricaoPedido,fretePedido,gerarCodigoRastreio) values
					(1,'entregue','Capsúlas de tamanho', 50, false),
                    (2,'enviado', 'Celular samsungo',70, true),
                    (1,'processando','Tablet lenovo',50, false),
                    (1,'enviado','Calça de tamanho P', 65, true),
                    (2,'processando','Sapato de tamanho 44', 50, false),
                    (1,'processando','Cadeira', 30, true),
                    
                    (2,'processando','Cloro granulado',25, true),
                    (2,'processando','Microondas 35L',50, false),
                    (2,'entregue','Impressora ecoTank',15, true);
                    
-- Verificando dados inseridos                        
select * from pedido;            
truncate table pedido;
desc pedido;         


-- Inserindo dados tabela pedido
insert into estoque (quantidade_estoque) values (10),(15),(30),(20),(5),(8),(100),(80);
-- Verificando dados inseridos                        
select * from estoque;

-- Inserindo dados tabela fornecedor
insert into fornecedor 	(idConta,razaoSocial,nomeFantasia,email,contato) values      
						(1,'LUCIANA RS','Doces LUCIANA','LUCIANA@LUCIANA.gmail.com','51999123410'),
                        (2,'OSNY RJ','Doces OSNY','OSNY@OSNY.gmail.com','51321231610');
						
-- Verificando dados inseridos                        
select * from FORNECEDOR;                     

-- Inserindo dados tabela  vendedorTerceirizado 
insert into vendedorTerceirizado (idConta) values  (1),(2),(3),(4),(5),(6),(7),(8),(15); 
-- Verificando dados inseridos                        
select * from vendedorTerceirizado;
desc vendedorTerceirizado;

-- Inserindo dados tabela  pagamento 
insert into pagamento 	(tipoPagamento,valorPagamento,idCliente,idConta) values
						('dinheiro',100.53,1,2),
                        ('pix',50.00,2,3),
                        ('debito',15.43,3,4),
                        ('credito',20.00,4,7),
                        ('pix',88.53,5,10),
                        ('dinheiro',75.33,6,12),
                        ('dinheiro',5.75,5,15);
-- Verificando dados inseridos                        
select * from pagamento;
desc pagamento;                        

ALTER TABLE ENDERECO MODIFY COLUMN NUMERO VARCHAR(10);        
DESC ENDERECO;
-- Inserindo dados tabela  ENDERECO 
INSERT INTO ENDERECO 	(IDCONTA,CEP,LOGRADOURO,NUMERO,COMPLEMENTO,ESTADO,CIDADE,BAIRRO,IDESTOQUE) VALUES 
						(1,'94010310','VENANCIO AIRES','50',NULL,'RS','GRAVATAI','CENTRO',2),
						(2,'88111320','EDGAR BRITO','150',NULL,'RB','BRASILIA','ESPLANADA',4),
						(3,'99523140','AIRES MICAELA','250',NULL,'SC','SÃO JOSÉ','SÃO JOSÉ',7),
						(5,'94030650','JARED AIRES','40',NULL,'RS','GRAVATAI','PARQUE DOS ANJOS',8),
						(4,'24120320','CAXILHA BARCELOS AIRES','60',NULL,'RJ','RJ','MEYER',1),
						(6,'21545690','ANTORNIO FORNSECA AIRES','150',NULL,'RS','GRAVATAI','SALGADO FILHO',3),
						(7,'94652325','MARMELADA DEGOSTO AIRES','5000',NULL,'SC','CRICIUMA','PARQUE GRANDE',5),
						(8,'88892560','GRUTA BROTO AIRES','120',NULL,'RS','GRAVATAI','JARDIN CIDADE',6);
-- Verificando dados inseridos                        
select * from endereco;

					
-- Inserindo dados tabela PF
 insert into pf (idcliente,idconta,idfornecedor,cpf) values 
				(3,1,10,'05157981775'),
                (4,1,11,'08565848588'),
                (6,1,9,'09464585263');
-- Verificando dados inseridos                        
select * from pf;                

--- "Alternando constraints Adicionando e deletando"
ALTER TABLE FORNECEDOR ADD constraint FK_FORNECEDOR_IDCONTA foreign key(IDCONTA) references CONTA (IDCONTA) on delete set null on update cascade;     
ALTER TABLE ENDERECO add constraint FK_IDCONTA_ENDERECO foreign key(IDCONTA) references CONTA (IDCONTA) on delete set null on update cascade;
ALTER TABLE PAGAMENTO ADD constraint FK_IDCONTA_PAGAMENTO foreign key(IDCONTA) references CONTA (IDCONTA)on delete set null on update cascade; 
ALTER TABLE PF ADD constraint FK_IDFORNECEDOR_PF foreign key(IDFORNECEDOR) references FORNECEDOR (IDFORNECEDOR) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE RELACAO_PEDIDO_PRODUTO ADD constraint FK_idPedido_relacao_pedido_produto foreign key (idPedido) references pedido (idPedido) on delete set null on update cascade;
ALTER TABLE PF DROP CONSTRAINT FK_IDFORNECEDOR_PF;     
ALTER TABLE RELACAO_PEDIDO_PRODUTO DROP CONSTRAINT FK_IDPEDIDO_RELACAO_PEDIDO_PRODUTO;

SELECT * FROM CONTA AS C INNER JOIN CLIENTE AS CL ON C.IDCONTA = CL.IDCONTA
						LEFT JOIN FORNECEDOR AS F ON C.IDCONTA = F.IDCONTA;
                        
-- Inserindo dados tabela PJ
INSERT INTO PJ (IDCLIENTE, IDCONTA,IDFORNECEDOR, CNPJ) VALUES 
				(3,1,2,'34581516000139'),
                (5,2,1,'58915654000155');

-- Inserindo dados tabela relacao_pedido_produto
INSERT INTO relacao_pedido_produto (IDPEDIDO,IDPRODUTO,QUANTIDADE,STATUSPP) VALUES
									(2,3,30,'DISPONÍVEL'),
                                    (3,5,10,'DISPONÍVEL'),
                                    (4,7,150,'DISPONÍVEL');
                                    
-- Inserindo dados tabela relacao_produto_fornecedor
INSERT INTO relacao_produto_fornecedor (IDPRODUTO,IDFORNECEDOR,IDCONTA, QUANTIDADE) VALUES
										(3,1,1,50),
                                        (5,2,2,100),
                                        (7,1,1,5);

-- Inserindo dados tabela relacao_produto_vendedor
INSERT INTO relacao_produto_vendedor (IDPRODUTO,IDVENDEDOR,IDCONTA,QUANTIDADE) VALUES
										(3,1,1,5),
                                        (5,2,2,200),
                                        (7,3,1,21);
                                        
    -- Inserindo dados tabela relacao_produto_estoque
    INSERT INTO relacao_produto_estoque (IDPRODUTO, IDESTOQUE,QUANTIDADEESTOQUE) VALUES
										(3,4,100),
                                        (5,6,200),
                                        (7,8,300);
                                        
                                        
SELECT NOME   FROM CLIENTE AS C  INNER JOIN CONTA AS CO ON C.IDCONTA = CO.IDCONTA
							 JOIN PEDIDO AS P ON C.IDCONTA = P.IDCONTA;


-- QUANTIDADE DE PEDIDOS FEITOS POR CADA CLIENTE
select * from pedido as p inner join cliente as c on c.idcliente = p.idcliente inner join produto as prod on prod.idproduto = p.idproduto ;
select concat(c.nome,' ',c.sobrenome) as Nome_Cliente, prod.nome as Descrição_Produto, prod.valor as Valor_Produto from pedido as p inner join cliente as c on c.idcliente = p.idcliente inner join produto as prod on prod.idproduto = p.idproduto ;

-- VENDEDORES QUE TAMBÉM SÃO FORNECEDORES
SELECT * FROM vendedorTerceirizado VT INNER JOIN FORNECEDOR F ON VT.IDVENDEDORTERCEIRIZADO = F.IDFORNECEDOR;
SELECT nomeFantasia as Nome_Fornecedor_Vendedor FROM vendedorTerceirizado VT INNER JOIN FORNECEDOR F ON VT.IDVENDEDORTERCEIRIZADO = F.IDFORNECEDOR;

-- RELAÇÃO DE PRODUTOS, FORNECEDORES E ESTOQUES
SELECT * FROM relacao_produto_estoque AS RPE INNER JOIN relacao_produto_fornecedor AS RPF ON RPE.IDPRODUTO = RPF.IDPRODUTO INNER JOIN PRODUTO AS P ON RPE.IDPRODUTO = P.IDPRODUTO INNER JOIN FORNECEDOR AS F ON F.IDFORNECEDOR = RPF.IDFORNECEDOR;
SELECT p.nome as Nome_Produto,p.categoria as Categoria, rpe.quantidadeestoque as Quantidade_Estoque, f.nomefantasia as Nome_Fornecedor,round(p.valor*rpe.quantidadeestoque,2) as Valor_Estoque  FROM relacao_produto_estoque AS RPE INNER JOIN relacao_produto_fornecedor AS RPF ON RPE.IDPRODUTO = RPF.IDPRODUTO INNER JOIN PRODUTO AS P ON RPE.IDPRODUTO = P.IDPRODUTO INNER JOIN FORNECEDOR AS F ON F.IDFORNECEDOR = RPF.IDFORNECEDOR;

-- RELAÇÃO PRODUTOS E FORNECEDORES
SELECT * FROM relacao_produto_fornecedor AS RPF inner join PRODUTO AS P ON RPF.IDPRODUTO = P.IDPRODUTO INNER JOIN FORNECEDOR AS F ON RPF.IDFORNECEDOR = F.IDFORNECEDOR;
SELECT p.nome as Nome_Produtos, f.nomefantasia as Nome_Fornecedores FROM relacao_produto_fornecedor AS RPF inner join PRODUTO AS P ON RPF.IDPRODUTO = P.IDPRODUTO INNER JOIN FORNECEDOR AS F ON RPF.IDFORNECEDOR = F.IDFORNECEDOR;

