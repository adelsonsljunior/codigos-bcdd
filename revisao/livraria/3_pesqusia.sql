/*Pesquisa simples*/
SELECT * FROM livro;
SELECT * FROM autor;
SELECT * FROM genero_literario;
SELECT * FROM funcionario;
SELECT * FROM cliente;

/*FILTRANDO PESQUISAS */
/*WHERE (ONDE) - CONDIÇÕES*/

SELECT * FROM livro
WHERE id = 3;

SELECT * FROM autor
WHERE id < 3;

SELECT * FROM genero_literario
WHERE id > 2;

/*PESQUISA COM VALORES ESPECIFICOS*/

SELECT nome FROM funcionario
WHERE salario < 2000;

SELECT nome FROM livro
WHERE valor < 30;

/*ORDER BY - ORDERNAR

ASC - crescente (opcional)
DESC - decrescente
*/

SELECT * FROM funcionario
ORDER BY nome ASC;

SELECT * FROM cliente
ORDER BY nome DESC;

SELECT nome FROM livro
WHERE valor < 30
ORDER BY nome ASC;

/*IN - VALORES ESPECIFICOS*/

SELECT * FROM funcionario
WHERE endereco IN ('Aracity', 'Juncocity')
ORDER BY nome ASC;

/*BETWEEN - VALORES ENTRE UMA INTERVALO*/

SELECT * FROM livro
WHERE valor BETWEEN 10 AND 50
ORDER BY nome ASC;

/*LIKE - COMPARA STRINGS*/

/*NOMES QUE COMEÇAM COM UMA DETERMINADA LETRA*/
SELECT * FROM cliente
WHERE nome LIKE 'S%'
ORDER BY nome ASC;

SELECT * FROM cliente
WHERE nome LIKE 'S%' OR nome LIKE 'G%'
ORDER BY nome ASC;

/*NOMES QUE DETERMINAM COM UMA DETERMINADA LETRA*/
SELECT * FROM cliente
WHERE nome LIKE '%A'
ORDER BY nome ASC;