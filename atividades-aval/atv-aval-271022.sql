USE ATV2;

SELECT NOME, BAIRRO FROM CLIENTE
ORDER BY NOME;

SELECT NOME, NUMERO FROM CLIENTE
ORDER BY NUMERO DESC;

SELECT NOME, NUMERO, BAIRRO FROM CLIENTE
WHERE NUMERO IS NOT NULL;

SELECT DESCRICAO, VALOR, QUANT FROM PRODUTO
WHERE VALOR BETWEEN 1 AND 10;

SELECT DESCRICAO, VALOR FROM PRODUTO
ORDER BY VALOR;

SELECT NOME, UF_ID FROM MUNICIPIO
WHERE NOME LIKE 'C%';

SELECT NOME, ID FROM MUNICIPIO
WHERE NOME LIKE '%E';

SELECT DESCRICAO, VALOR, QUANT FROM PRODUTO
WHERE DESCRICAO  LIKE 'N%';

SELECT DESCRICAO, VALOR, QUANT FROM PRODUTO
WHERE QUANT BETWEEN 20 AND 50;

SELECT VALOR, PERECIVEL, VALOR, QUANT FROM PRODUTO
WHERE QUANT_MINIMA IN (10, 20);