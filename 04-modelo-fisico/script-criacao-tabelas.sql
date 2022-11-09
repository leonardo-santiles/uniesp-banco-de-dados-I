-- Cria a base de dados:
create database STREAMING;

-- Utiliza a base de dados:
use STREAMING;

--TABELA CONTAS
DROP TABLE CONTAS;
GO

CREATE TABLE CONTAS(
   ID INT IDENTITY(1,1) NOT NULL,
   NOME_TITULAR VARCHAR (100) NOT NULL,
   EMAIL VARCHAR(100) NOT NULL,
   SENHA VARCHAR(100) NOT NULL,
   DATA_CRIACAO DATE NOT NULL,
   ID_PAGAMENTO INT NOT NULL,
   ID_ENDERECO INT NOT NULL,
   CONSTRAINT PK_CONTAS PRIMARY KEY(ID),
   CONSTRAINT FK_CONTAS_PAGAMENTOS FOREIGN KEY (ID_PAGAMENTO)
   REFERENCES DBO.PAGAMENTOS (ID),
   CONSTRAINT FK_CONTAS_ENDERECO FOREIGN KEY (ID_ENDERECO)
   REFERENCES DBO.ENDERECO (ID)
);
GO

--TABELA TELEFONES
DROP TABLE TELEFONES;
GO

CREATE TABLE TELEFONES(
   ID INT IDENTITY(1,1) NOT NULL,
   NUMERO VARCHAR (20) NOT NULL,
   TIPO CHAR(1) NOT NULL,
   ID_CONTA INT NOT NULL,
   CONSTRAINT PK_TELEFONES PRIMARY KEY(ID),
   CONSTRAINT FK_TELEFONE_CONTA (ID_CONTA)
   REFERENCES DBO.CONTAS (ID)
);
GO

--TABELA PRODUTOS
DROP TABLE PRODUTOS;
GO

CREATE TABLE PRODUTOS(
   ID INT IDENTITY(1,1) NOT NULL,
   TITULO VARCHAR(100) NOT NULL,
   LANCAMENTO DATE NOT NULL,
   DURACAO TIME NOT NULL,
   SINOPSE VARCHAR(250) NOT NULL,
   CLASSIFICACAO INT NOT NULL,
   DIRETOR VARCHAR(100) NOT NULL,
   GENERO VARCHAR(100) NOT NULL,
   CONSTRAINT PK_PRODUTOS PRIMARY KEY(ID)
);
GO

--TABELA FILMES
DROP TABLE FILMES;
GO

CREATE TABLE FILMES(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_PRODUTO INT NOT NULL,
   CONSTRAINT PK_FILMES PRIMARY KEY(ID),
   CONSTRAINT FK_FILMES_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID)
);
GO

--TABELA SERIES
DROP TABLE SERIES;
GO

CREATE TABLE SERIES(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_PRODUTO INT NOT NULL,
   TEMPORADAS INT NOT NULL,
   SINOPSE VARCHAR(250) NOT NULL,
   CONSTRAINT PK_SERIES PRIMARY KEY(ID),
   CONSTRAINT FK_SERIES_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID)
);
GO

--TABELA EPISODIOS
DROP TABLE EPISODIOS;
GO

CREATE TABLE EPISODIOS(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_SERIE INT NOT NULL,
   TITULO VARCHAR(100) NOT NULL,
   DURACAO TIME NOT NULL,
   SINOPSE VARCHAR(250) NOT NULL,
   CONSTRAINT PK_EPISODIOS PRIMARY KEY(ID),
   CONSTRAINT FK_EPISODIOS_SERIES FOREIGN KEY (ID_SERIE)
   REFERENCES DBO.SERIES (ID)
);
GO

--TABELA PAGAMENTOS
DROP TABLE PAGAMENTOS;
GO

CREATE TABLE PAGAMENTOS(
   ID INT IDENTITY(1,1) NOT NULL,
   TIPO CHAR(1) NOT NULL,
   DESCRICAO VARCHAR(100) NOT NULL,
   DATA_PAGAMENTO DATE NOT NULL,
   CONSTRAINT PK_PAGAMENTOS PRIMARY KEY(ID)
);
GO

--TABELA PERFIS
DROP TABLE PERFIS;
GO

CREATE TABLE PERFIS(
   ID INT IDENTITY(1,1) NOT NULL,
   NOME VARCHAR(100) NOT NULL,
   AVATAR VARCHAR(250) NOT NULL,
   SENHA VARCHAR(100) NOT NULL,
   ID_CONTA INT NOT NULL,
   CONSTRAINT PK_PERFIS PRIMARY KEY(ID),
   CONSTRAINT FK_PERFIS_CONTAS FOREIGN KEY (ID_CONTA)
   REFERENCES DBO.CONTAS (ID)
);
GO

--TABELA ASSISTIR
DROP TABLE ASSISTIR;
GO

CREATE TABLE ASSISTIR(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_PERFIL INT NOT NULL,
   ID_PRODUTO INT NOT NULL,
   CONSTRAINT PK_ASSISTIR PRIMARY KEY(ID),
   CONSTRAINT FK_ASSISTIR_PERFIS FOREIGN KEY (ID_PERFIL)
   REFERENCES DBO.PERFIS,
   CONSTRAINT FK_ASSISTIR_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID)
);
GO

--TABELA MINHA_LISTA
DROP TABLE MINHA_CONTA;
GO

CREATE TABLE MINHA_LISTA(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_PERFIL INT NOT NULL,
   ID_PRODUTO INT NOT NULL,
   CONSTRAINT PK_MINHA_LISTA PRIMARY KEY(ID),
   CONSTRAINT FK_MINHA_LISTA_PERFIS FOREIGN KEY (ID_PERFIL)
   REFERENCES DBO.PERFIS (ID),
   CONSTRAINT FK_MINHA_LISTA_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID)
);
GO

--TABELA FAVORITOS
DROP TABLE FAVORITOS;
GO

CREATE TABLE FAVORITOS(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_ASSISTIR INT NOT NULL,
   ID_PERFIL INT NOT NULL,
   ID_PRODUTO INT NOT NULL,
   CONSTRAINT PK_FAVORITOS PRIMARY KEY(ID),
   CONSTRAINT FK_FAVORITOS_ASSISTIR FOREIGN KEY (ID_ASSISTIR)
   REFERENCES DBO.ASSISTIR (ID),
   CONSTRAINT FK_FAVORITOS_PERFIS FOREIGN KEY (ID_PERFIL)
   REFERENCES DBO.PERFIS (ID),
   CONSTRAINT FK_FAVORITOS_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID) 
);
GO

--TABELA RESTRICOES
DROP TABLE RESTRICOES;
GO

CREATE TABLE RESTRICOES(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_PERFIL INT NOT NULL,
   TIPO VARCHAR(100) NOT NULL,
   CONSTRAINT PK_RESTRICOES PRIMARY KEY(ID),
   CONSTRAINT FK_RESTRICOES_PERFIS FOREIGN KEY (ID_PERFIL)
   REFERENCES DBO.PERFIS (ID)
);
GO

--TABELA DOWNLOADS
DROP TABLE DOWNLOADS;
GO

CREATE TABLE DOWNLOADS(
   ID INT IDENTITY(1,1) NOT NULL,
   ID_ASSISTIR INT NOT NULL,
   ID_PERFIL INT NOT NULL,
   ID_PRODUTO INT NOT NULL,
   ARMAZENAMENTO INT NOT NULL,
   CONSTRAINT PK_DOWNLOADS PRIMARY KEY(ID),
   CONSTRAINT FK_DOWNLOADS_ASSISTIR FOREIGN KEY (ID_ASSISTIR)
   REFERENCES DBO.ASSISTIR (ID),
   CONSTRAINT FK_DOWNLOADS_PERFIS FOREIGN KEY (ID_PERFIL)
   REFERENCES DBO.PERFIS (ID),
   CONSTRAINT FK_DOWNLOADS_PRODUTOS FOREIGN KEY (ID_PRODUTO)
   REFERENCES DBO.PRODUTOS (ID)
);
GO

--TABELA ENDERECO
DROP TABLE ENDERECO;
GO

CREATE TABLE ENDERECO(
   ID INT IDENTITY(1,1) NOT NULL,
   CIDADE VARCHAR (30) NOT NULL, 
   ESTADO CHAR(2) NOT NULL,
   CEP VARCHAR (8) NOT NULL,
   RUA VARCHAR (60) NOT NULL,
   COMPLEMENTO VARCHAR (60),
   NUMERO VARCHAR (5) NOT NULL,
   BAIRRO VARCHAR (30) NOT NULL
   CONSTRAINT PK_ENDERECO PRIMARY KEY(ID),
);