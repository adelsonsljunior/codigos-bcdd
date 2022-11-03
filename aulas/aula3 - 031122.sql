DROP DATABASE IF EXISTS aula;

CREATE DATABASE IF NOT EXISTS aula;

USE aula;

CREATE TABLE IF NOT EXISTs cliente(
    id              INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome            VARCHAR(30),    
    valor_gasto     DOUBLE,
    desconto        INTEGER           
);

INSERT INTO cliente(nome, valor_gasto, desconto)
VALUES ('Maria', 580, 8),
    ('José', 120.71, 12),
    ('Ana', 65, 15),
    ('João', 83, 23),
    ('Morgana', 415.23, 9),
    ('Angélica', 39.85, 5),
    ('Valdirene', 13, 7);

SELECT * FROM cliente;    

SELECT MAX(desconto) FROM cliente;
SELECT MIN(desconto) FROM cliente;

SELECT MAX(valor_gasto) FROM cliente;
SELECT MIN(valor_gasto) FROM cliente;

SELECT SUM(desconto) FROM cliente;
SELECT SUM(valor_gasto) FROM cliente;

SELECT AVG(desconto) FROM cliente;
SELECT AVG(valor_gasto) FROM cliente;

/*QUESTAO 1*/
SELECT SUM(valor_gasto)
FROM cliente 
WHERE nome LIKE 'M%';

/*QUESTAO 2*/
SELECT MAX(valor_gasto)
FROM cliente 
WHERE nome LIKE 'A%';

/*QUESTAO 3*/
SELECT AVG(desconto)
FROM cliente 
WHERE valor_gasto > 100;

/*QUESTAO 4*/
SELECT MIN(valor_gasto)
FROM cliente 
WHERE desconto >= 5 AND desconto <= 9 AND nome LIKE 'M%';

