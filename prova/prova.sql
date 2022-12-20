/*RESOLUÇÃO DAS QUESTÕES DA PROVA DE BANCO DE DADOS DO DIA 15/12/2022*/

/*Criando database*/

DROP DATABASE IF EXISTS prova;
CREATE DATABASE prova;
USE prova;

/*Crinado tabela*/

/*NFS - NOTAS FISCAIS*/
CREATE TABLE nfs(
    id_nf INT NOT NULL,
    id_item INT NOT NULL,
    cod_produto INT NOT NULL,
    valor_unit DECIMAL(5,2) NOT NULL,
    quantidade INT NOT NULL,
    desconto INT NOT NULL
);

/*Inserindo dados*/

INSERT INTO nfs VALUES

(1, 1, 1, 25.00, 10, 5),
(1, 2, 2, 13.50, 3, 0),
(1, 3, 3, 15.00, 2, 0),
(1, 4, 4, 10.00, 1, 0),
(1, 5, 5, 30.00, 1, 0),
(2, 1, 3, 15.00, 4, 0),
(2, 2, 4, 10.00, 5, 0),
(2, 3, 5, 30.00, 7, 0),
(3, 1, 1, 25.00, 7, 0),
(3, 2, 4, 10.00, 4, 0),
(3, 3, 5, 30.00, 5, 0),
(3, 4, 2, 13.50, 7, 0),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, 0),
(5, 2, 5, 30.00, 6, 0),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 4);

/*PROVA 912*/

/*1 - Pesquise o valor total das NF, onde esse valor seja maior que 500, 
e ordene do maior valor para o menor. 
As colunas presentes no resultado da consulta são: ID_NF, VALOR_TOTAL. 
OBS: O VALOR_TOTAL é obtido pela fórmula: SOMATORIO (QUANTIDADE * VALOR_UNIT).
Agrupe o resultado da consulta por ID_NF.*/

SELECT id_nf, SUM(quantidade * valor_unit) AS valor_total
FROM nfs
GROUP BY id_nf
HAVING valor_total > 500
ORDER BY valor_total DESC;



/*2 - Qual o valor médio dos descontos dados por produto. 
As colunas presentes no resultadoda consulta são: COD_PROD, MEDIA.
Agrupe o  resultado da consulta por COD_PROD*/

SELECT cod_produto, AVG(desconto) AS media
FROM nfs
GROUP BY cod_produto;



/*3 - Qual o menor, maior e o valor médio dos descontos dados por produto.
As colunas presentes no resultado da consulta são: COD_PROD, MENOR, MAIOR, MEDIA.
Agrupe o resultado da consulta por COS_PROD.*/

SELECT cod_produto, MIN(desconto) AS menor, MAX(desconto) AS maior, AVG(desconto) AS media
FROM nfs
GROUP BY cod_produto;



/*4 - Quais as NF que possuem mais de 3 itens vendidos.
As colunas presentes no resultado da consulta são: ID_NF, QTD_ITENS.
OBS: NÃO ESTÁ RELACIONADO A QUANTIDADE VENDIDA DO ITEM E SIM A QUANTIDADE DE ITENS POR NOTA FISCAL.
Agrupe o resultado da consulta por ID_NF.*/

SELECT id_nf, COUNT(id_item) AS qtd_itens
FROM nfs
GROUP BY id_nf
HAVING qtd_itens > 3;



/* PROVA 922*/

/*1 - Pesquise o valor total das NF, onde esse valor seja maior que 350, 
apenas itens com id igual a 2, e ordene do menor valor para o maior. 
As colunas presentes no resultado da consulta são: ID_NF, VALOR_TOTAL. 
OBS: O VALOR_TOTAL é obtido pela fórmula: SOMATORIO (QUANTIDADE * VALOR_UNIT).
Agrupe o resultado da consulta por ID-NF.*/

SELECT id_nf, SUM(quantidade * valor_unit) AS valor_total
FROM nfs
WHERE id_item = 2
GROUP BY id_nf
HAVING valor_total > 350
ORDER BY valor_total;



/*2 - Qual o valor médio dos descontos dados por produto que recebeu abaixo de 10% de desconto ? 
As colunas presentes no resultadoda consulta são: COD_PROD, MEDIA.
Agrupe o  resultado da consulta por COD_PROD*/

SELECT cod_produto, AVG(desconto) AS media
FROM nfs
WHERE desconto < 10
GROUP BY cod_produto;



/*3 - Qual o menor, maior e o valor médio dos produtos que tiveram pelo menos 10 itens vendidos ?
As colunas presentes no resultado da consulta são: COD_PROD, MENOR, MAIOR, MEDIA.
Agrupe o resultado da consulta por COS_PROD.*/

SELECT cod_produto, MIN(desconto) AS menor, MAX(desconto) AS maior, AVG(desconto) AS media
FROM nfs
WHERE quantidade >= 10
GROUP BY cod_produto;



/*4 - Quais  as NF que possuem mais de R$ 75,00 em itens vendidos e 
que tiveram pelo menos 5% de desconto ?
As colunas presentes no resultado da consulta são: ID_NT, QTD_ITENS, VALOR_TOT.
Agrupe o resultado da consulta por ID_NF*/

SELECT id_nf, COUNT(id_item) AS qtd_itens, SUM(quantidade * valor_unit) AS valor_total
FROM nfs
WHERE desconto >= 5
GROUP BY id_nf
HAVING valor_total > 75;
