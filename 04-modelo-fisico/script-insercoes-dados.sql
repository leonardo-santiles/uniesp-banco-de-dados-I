--TABELA PAGAMENTOS
INSERT INTO PAGAMENTOS
(TIPO, DESCRICAO, DATA_PAGAMENTO)
VALUES
('C', 'Pagamento de serviço via cartão de crédito', 2022-11-08),
('P', 'Pagamento de serviço via Pix', 2022-11-06),
('P', 'Pagamento de serviço via Pix', 2022-11-05),
('D', 'Pagamento de serviço via cartão de débito', 2022-11-07),
('B', 'Pagamento de serviço via cartão boleto', 2022-11-01),
('B', 'Pagamento de serviço via cartão boleto', 2022-11-02),
('C', 'Pagamento de serviço via cartão de crédito', 2022-11-04);

--TABELA ENDERECO
INSERT INTO ENDERECO
(CIDADE, ESTADO, CEP, RUA, COMPLEMENTO, NUMERO, BAIRRO)
VALUES
('João Pessoa', 'PB', '58011345', 'Rua 13 de Dezembro', 'Ao lado da casa de bala', '123','Trincheiras'),
('Araruna', 'PB', '58233000', 'Rua 4 de Julho', 'Prédio dos estudantes', '000','Centro'),
('São Paulo', 'SP', '08090284', 'Rua 13 de Maio', 'Condominio Bom Jesus', '111','Bela Vista'),
('São Paulo', 'SP', '04843425', 'Viela 16', 'Vizinha a faculdade', '775','Ahanguera'),
('Rio de Janeiro', 'RJ', '20020050', 'Avenida Churchill','Próximo ao metrô', '982','Centro'),
('Recife', 'PE', '52031216', '3ª Travessa A', 'Condominio Pernambuco', '948', 'Trincheiras'),
('Recife', 'PE', '58810065', 'Rua A', 'Próximo ao Assaí Atacadista', '123','Jardim São Paulo');


--TABELA CONTAS
INSERT INTO CONTAS
(NOME_TITULAR, EMAIL, SENHA, DATA_CRIACAO, ID_PAGAMENTO, ID_ENDERECO)
VALUES
('Ana Maria', 'anamaria2022@gmail.com', 'oNp5iwsOvjNdgJg5artV', 2022-11-08, 1, 1),
('Márcia Sousa', 'marcias@gmail.com', '56ELIP0tSbIMX3keIKkf', 2022-05-10, 2, 2),
('André', 'andresoares@hotmail.com', '9uW3fe9fwXzjyY3Rr000', 1990-06-02, 3, 3),
('Luiz Gustavo', 'ls@hotmail.com', 'S5xHajkktXzlVobSht4a', 1998-02-12, 4, 4),
('Jessica', 'jessicam@gmail.com', '075X54oIBfTD3W6JLjsU', 1997-01-07, 5, 5),
('Antonio', 'jantonio@gmail.com', '5kYCUFU0WIF2uuLHPRdu', 1993-06-25, 6, 6),
('Joana', 'joana2022@outlook.com', '0ijUNaOteXgQpujyf27X', 2022-02-04, 7, 7);


--TABELA TELEFONES
INSERT INTO TELEFONES
(NUMERO, TIPO, ID_CONTA)
VALUES
('+55(083)1317-17131', 'C', 1),
('+55(083)1111-11111', 'C', 2),
('+55(011)1234-56789', 'C', 3),
('+55(011)2222-22222', 'C', 4),
('+55(021)7777-77777', 'C', 5),
('+55(081)6543-12345', 'C', 6),
('+55(081)3333-34444', 'C', 7);


--TABELA PRODUTOS
INSERT INTO PRODUTOS
(TITULO, LANCAMENTO, DURACAO, SINOPSE, CLASSIFICACAO, DIRETOR, GENERO)
VALUES
('Minions', 2015-06-10, 01:31:00, 'Seres amarelos milenares, os minions têm uma missão: servir aos maiores vilões.', 10, 'Pierre Coffin', 'Animação'),
('Stranger Things', 2016-07-15, 00:51:00, 'Depois do desaparecimento de um menino, seus amigos precisam enfrentar forças aterrorizantes para trazê-lo de volta.', 16, 'Matt Duffer', 'Suspense');

--TABELA FILMES
INSERT INTO FILMES
(ID_PRODUTO)
VALUES
(1)

--TABELA SERIES
INSERT INTO SERIES
(ID_PRODUTO, TEMPORADAS, SINOPSE)
VALUES
(1, 3, 'Depois do desaparecimento de um menino, seus amigos precisam enfrentar forças aterrorizantes para trazê-lo de volta.');

--TABELA EPISODIOS
INSERT INTO EPISODIOS
(ID_SERIE, TITULO, DURACAO, SINOPSE)
VALUES
(1, 'Chapter One: The Vanishing of Will Byers', 00:47:00, 'A young Dungeons and Dragons playing boy named Will disappears after a night with his friends, his mother Joyce and the town of Hawkins are plunged into darkness.');


--TABELA PERFIS
INSERT INTO PERFIS
(NOME, AVATAR, SENHA, ID_CONTA)
VALUES
('Leo', 'Zombie', 'oNp5iwsOvjNdgJg5artV', 1);