-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE DEPARTAMENTO (
	iDepartamento int PRIMARY KEY,
	nome varchar(50),
	localizacao varchar(30)
)

CREATE TABLE COLABORDOR (
	iDcolaborador int PRIMARY KEY,
	nome varchar(50),
	cpf varchar(15),
	dataAdimissao date,
	gerencia_colaborador int,
	iDepartamento int -- chave estrangeira (FK)
	FOREIGN KEY (iDepartamento) REFERENCES DEPARTAMENTO (iDcolaborador)
) ;
	
)

CREATE TABLE gerencia
	iDcolaborador int ,
	possui_idColaborador int
	PRIMARY KEY (iDcolaborador , gerenciaColaborador) -- chave primaria composta 
