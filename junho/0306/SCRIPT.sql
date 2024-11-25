-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE FORNECEDOR (
	codigo 				int PRIMARY KEY,
	nome 				varchar(50),not null
	endereco 			varchar(30)not null
	telefone 			varchar(15), not null
	cidade 				char(2),
	estado 				varchar(50),not null
	
	
)
CREATE TABLE MATERIAL (
	codigoMaterial 		int PRIMARY KEY,
	valorTotalItem 		decimal(9,2),)not null
	descricao 			varchar(150),)not null
	valorUnit 			decimal(9,2),not null
	qtde 				int not null


CREATE TABLE ORDEM_COMPRA (
	codigoOC 			int PRIMARY KEY, not null
	valorTotalOC 		decimal(9,2),not null
	dataEmissao 		date,not null
	codigoFornecedor 	int -- chave estrangeira
	FOREIGN KEY(codigoFornecedor) REFERENCES FORNECEDOR (codigo)
)


CREATE TABLE ITEM_COMPRA (
	codigoMaterial 		int, PRIMARY KEY not null
	codigoOC 			int, -- chave estrangeira
	codigoItemcompra 	(int) -- chave estrangeira
	FOREIGN KEY(codigoMaterial) REFERENCES MATERIAL (codigoMaterial),
	FOREIGN KEY(codigoOC) REFERENCES ORDEM_COMPRA (codigoOC)
)

