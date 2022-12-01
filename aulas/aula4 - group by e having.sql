DROP DATABASE IF EXISTS aula;

CREATE DATABASE aula;
USE aula;

CREATE TABLE vendas(
 id_vendas      INT PRIMARY KEY NOT NULL,
 nome_vendedor  VARCHAR(60),
 quantidade     INT,
 produto        VARCHAR(45),
 cidade         VARCHAR(30)
);

INSERT INTO vendas (id_vendas, nome_vendedor, quantidade, produto, cidade)
VALUES (1, 'João', 1350, 'Mouse', 'São Paulo'),
	(2, 'Morgana', 1320, 'teclado', 'São Paulo'),
    (3, 'Daniela', 1750, 'teclado', 'Rio de Janeiro'),
    (4, 'Arthur', 2380, 'webcam', 'Recife'),
    (5, 'Roberto', 760, 'Mouse', 'São Paulo'),
    (6, 'Carlos', 1132, 'webcam', 'Recife'),
    (7, 'Eric', 3224, 'Mouse', 'São Paulo');
    
SELECT * FROM vendas;

/*
SEM GROUB BY
- Total de todas as cidades
*/
SELECT cidade, SUM(quantidade) AS total FROM vendas;

/*
COM GROUB BY
- Total de cada cidade
*/
SELECT cidade, SUM(quantidade)
AS total FROM vendas 
GROUP BY cidade;

SELECT cidade, COUNT(*)
AS quantidade_vendas FROM vendas 
GROUP BY cidade;

/*
HAVING
- Equivalente ao WHERE para o GROUP BY
*/

SELECT cidade, SUM(quantidade)
AS total FROM vendas 
GROUP BY cidade
HAVING total < 2500;

SELECT cidade, SUM(quantidade)
AS total FROM vendas 
WHERE produto = 'teclado'
GROUP BY cidade
HAVING total < 1500;
