-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PACIENTE (
	numPaciente int PRIMARY KEY,
	dataNasc   date,
	estCivil   varchar(20),
	endereco   varchar(50),
	nome       varchar(50),
	sexo       char,
	rg         varchar(15),
	convenio   varchar(100),
	telefone   varchar(15)
)

CREATE TABLE MEDICO (
	crmMedico      int PRIMARY KEY,
	nome           varchar(50),
	especialidade  varchar(100),
	telefone       varchar(15)
)

CREATE TABLE EXAME (
	idExame    int PRIMARY KEY,
	nome       varchar(100),
	descricao  varchar(255)
)

CREATE TABLE CONSULTA (
	numConsulta   int PRIMARY KEY,
	dataConsulta  date,
	diagnostico   varchar(255),
	numPaciente   int, --chave estrangeira
	crmMedico     int, --chave estrangeira
	FOREIGN KEY(numPaciente) REFERENCES PACIENTE (numPaciente),
	FOREIGN KEY(crmMedico) 	 REFERENCES MEDICO (crmMedico)
)

CREATE TABLE proceder (
	idListExame  int PRIMARY KEY,
	dataExame    date,
	numConsulta  int,
	idExame      int, --chave estrangeira
	FOREIGN KEY(numConsulta) REFERENCES CONSULTA (numConsulta),
	FOREIGN KEY(idExame) REFERENCES EXAME (idExame)
)

