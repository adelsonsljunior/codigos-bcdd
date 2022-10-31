/*
AULA DO DIA 01/09/2022

ASSUNTO: 

CRIAÇÃO DE BANCO DE DADOS E TABELAS,
INSERINDO DADOS EM UMA TABELA,
VISUALIZAR DADOS E DADO ESPECIFICO DE UMA TABELA,
DELETANDO DADOS DE UMA TABELA

*/

CREATE DATABASE ALUNO;
USE ALUNO;

CREATE TABLE ALUNO(
ID_ALUNO    INTEGER NOT NULL PRIMARY KEY,
MATRICULA   INTEGER ,
NOME        VARCHAR(100),
ENDERECO    VARCHAR(100),
TELEFONE    INTEGER ,
EMAIL       VARCHAR(100),
CPF         INTEGER
);

INSERT INTO ALUNO VALUES(1, 1234,'RICARDO','RUA MARIA',99007151,'RICARDO@GMAIL.COM',123456789);
INSERT INTO ALUNO VALUES(2, 3532,'RENATA','RUA TUA',997807787,'RENATA@GMAIL.COM',123456749);
INSERT INTO ALUNO VALUES(3, 5312,'ROBERTO','RUA NOSSA',9903454,'ROBERTO@GMAIL.COM',1234546789);
INSERT INTO ALUNO VALUES(4, 6453,'LUIZ','RUA POTO',99007576,'LUIZ@GMAIL.COM',1234567589);
INSERT INTO ALUNO VALUES(5, 2156,'JOAO','RUA NOME',878765756,'JOAO@GMAIL.COM',1234567849);
INSERT INTO ALUNO VALUES(6, 7544,'PATRICIA','RUA MORADA',84776598,'PATRICIA@GMAIL.COM',1234567819)*/

SELECT * FROM ALUNO;

DELETE FROM ALUNO WHERE ID_ALUNO = 2;

SELECT * FROM ALUNO;