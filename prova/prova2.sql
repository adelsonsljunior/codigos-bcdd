/*RESOLUÇÃO DAS QUESTÕES DA PROVA DE BANCO DE DADOS DO DIA 26/12/2022 DA TURMA 922*/

DROP DATABASE IF EXISTS prova2;
CREATE DATABASE prova2;
USE prova2;

/*Criando tabela*/

CREATE TABLE produtos(
    id PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60),
    fabricante VARCHAR(60),
    quantidade INT,
    valor_unit,
    tipo VARCHAR(60)
);

/*Inserindo dados*/

INSERT INTO produto (nome, fabricante, quantidade, valor_unit, tipo)
VALUES ("Playstation 3", "Sony", 100, 1990, "Console"),
("Core 2 Duo 4GB Ram 500GB HD", "Dell", 200, 1890, "Notebook"),
("Xbox 360 120GB", "Microsoft", 350, 1290, "Console"),
("GT-I6220 Quad Band", "Samsung", 300, 499, "Celular"),
("iPhone 4 32GB", "Apple", 50, 1499, "Smathphone"),
("Playstation 2", "Sony", 100, 399, "Console"),
("Sofá Estofado", "Coréia", 200, 499, "Sofá"),
("Armário de Serviço", "Aracaju", 50, 129, "Armário"),
("Refrigerador 420L", "CCE", 200, 1499, "Refrigerador"),
("Wi 120GB", "Nintendo", 250, 999, "Console");

/*1 - */