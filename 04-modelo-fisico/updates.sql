--DROP
DROP TABLE CONTAS;

DROP TABLE TELEFONES;

DROP TABLE PRODUTOS;

DROP TABLE FILMES;

DROP TABLE SERIES;

DROP TABLE EPISODIOS;

DROP TABLE PAGAMENTOS;

DROP TABLE PERFIS;

DROP TABLE ASSISTIR;

DROP TABLE MINHA_CONTA;

DROP TABLE FAVORITOS;

DROP TABLE RESTRICOES;

DROP TABLE DOWNLOADS;

DROP TABLE ENDERECO;

--UPDATE
UPDATE DBO.SERIES SET TEMPORADAS = 4 WHERE ID = 1;

UPDATE DBO.CONTAS SET NOME_TITULAR = 'André Soares', WHERE ID = 3;

UPDATE DBO.PERFIS SET NOME = 'Leoza' WHERE ID = 1;


