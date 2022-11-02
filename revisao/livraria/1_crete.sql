DROP DATABASE IF EXISTS livraria;

/*CRIANDO UMA DATABASE*/
CREATE DATABASE IF NOT EXISTS livraria;

/*SELECIONANDO A DATABASE PARA SER USADA*/
USE livraria;

/*CRIANDO AS TABELAS*/
/*livro, genero_literario, autor, funcionario, cliente*/

CREATE TABLE IF NOT EXISTS autor(
    id          INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS genero_literario(
    id          INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS livro(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(60),
    valor       DOUBLE,
    quantidade  INT,
    /*CRINADO CHAVES ESTRANGEIRAS*/
    autor_id    INTEGER,
    FOREIGN KEY (autor_id) REFERENCES autor (id),
    genero_id   INTEGER,
    FOREIGN KEY (genero_id) REFERENCES genero_literario (id)
);

CREATE TABLE IF NOT EXISTS funcionario(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(60),
    idade       INT,
    salario     DOUBLE,
    cpf         VARCHAR(15),
    endereco    VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS cliente(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    nome        VARCHAR(60),
    cpf         VARCHAR(15),
    endereco    VARCHAR(30)
);

