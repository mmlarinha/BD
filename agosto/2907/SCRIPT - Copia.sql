-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE livro (
idLivro 		int PRIMARY KEY,
editora 		varchar(100) NOT NULL
anoPublicacao 	int			 NOT NULL
genero			varchar(30)	 NOT NULL
titulo 			varchar(255) NOT NULL
autor 			varchar(255) NOT NULL

CREATE TABLE usuario (
idUsuario 		int PRIMARY KEY,
telefone 		varchar(15)  NOT NULL 
endereco 		varchar(50)  NOT NULL
nome 			varchar(100) NOT NULL
emai 			varchar(255) NOT NULL
)

CREATE TABLE esprestimo (
idEmprestimo 		int PRIMARY KEY,
dataEmprestimo 		date NOT NULL --> CHAVE ESTRAGEIRA
datadevolucao 		date NOT NULL --> CHAVE ESTRANGEIRA
idUsuario 			int  NOT NULL
idLivro 			int  NOT NULL
FOREIGN KEY(idUsuario) REFERENCES usuario (idUsuario)
FOREIGN KEY(idLivro) REFERENCES livro (idLivro)

)
CREATE TABLE exemplar (
idExemplar 		int PRIMARY KEY,
estado 			varchar(10) NOT NULL
codExemplar 	int NOT NULL
idLivro 		int NOT NULL --> CHAVE ESTRANGEIRA
FOREIGN KEY(idLivro) REFERENCES livro (idLivro)
)


