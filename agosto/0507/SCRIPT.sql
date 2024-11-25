-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE CLIENTE (
IDcliente 			int PRIMARY KEY,NOT NULL
nome 				varchar(150),	NOT NULL
endereco 			varchar(30),	NOT NULL
telefone 			varchar(15),	NOT NULL
email 				varchar(100)	NOT NULL
)

CREATE TABLE PEDIDO (
IDpedido 			int PRIMARY KEY, NOT NULL--> CHAVE ESTRANGEIRA REFERENCIADA PEDIDO
data_cliente 		date,			 NOT NULL
status 			varchar(20),    	 NOT NULL --> CHAVE ESTRANGEIRA REFERENCIADA PRODUTO
IDcliente		 	int          	 NOT NULL
)

CREATE TABLE PRODUTO (
nome 				varchar(150),	NOT NULL	
preco 				dec(9,2),		NOT NULL
estoque 			int,			NOT NULL
IDiproduto 			int PRIMARY KEY,NOT NULL
descricao 			varchar(50)		NOT NULL

)

CREATE TABLE ITEM_PEDIDO (
IDitem 				int PRIMARY KEY,NOT NULL
quatidade 			int,			NOT NULL
preco 				dec(9,2),		NOT NULL
IDpedido 			int,			NOT NULL
IDiproduto 			int,			NOT NULL
FOREIGN KEY(IDpedido) REFERENCES PEDIDO (IDpedido),
FOREIGN KEY(IDiproduto) REFERENCES PRODUTO (IDiproduto)

)CREATE TABLE FATURA (
data_fatura 		date,			NOT NULL
valor_total 		dec(9,2),		NOT NULL
IDfatura 			int PRIMARY KEY,NOT NULL
IDpedido 			int,			NOT NULL
FOREIGN KEY(IDpedido) REFERENCES PEDIDO (IDpedido)
)

ALTER TABLE PEDIDO ADD FOREIGN KEY(IDcliente) REFERENCES CLIENTE (IDcliente)
