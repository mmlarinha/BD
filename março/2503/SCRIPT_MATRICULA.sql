-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE ALUNO (
	matriculaAluno int PRIMARY KEY,
	endereco varchar(30),
	nome varchar(50)
);

CREATE TABLE DISCIPLINA (
	codigoDisciplina int PRIMARY KEY,
	cargaHoraria varchar(20),
	nome varchar(50)
);

CREATE TABLE matricular (
	dataMatricula date,
	codigoDisciplina int, --Chave estrangeira (PK)
	matriculaAluno int,   --Chave estrangeira (PK) 
	FOREIGN KEY(codigoDisciplina) REFERENCES DISCIPLINA (codigoDisciplina), --PK composta
	FOREIGN KEY(matriculaAluno) REFERENCES ALUNO (matriculaAluno)
);

