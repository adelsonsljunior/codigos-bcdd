INSERT INTO autor(nome)
VALUES ('Felipe'),
    ('Sara'),
    ('Emilly'),
    ('Akira'),
    ('Adelson');

INSERT INTO genero_literario (nome)
VALUES ('Romance'),
    ('Terror'),
    ('Comédia'),
    ('Suspence'),
    ('Aventura'),
    ('Biografia'),
    ('Ficção Científica');

INSERT INTO livro (nome, valor, quantidade, autor_id, genero_id)
VALUES ('As Aventuras de Adelson', 50, 1000, 5, 5),
    ('É assim que acaba', 23, 10, 3, 1),
    ('A mais pura verdade', 25, 12, 5, 5),
    ('O diario de Anne Frank', 45 30, 1, 6),
    ('A seleção', 10, 13, 2, 1),
    ('Jogo do amor e odio', 3, 6, 2, 1);

INSERT INTO funcionario (nome, idade, salario, cpf, endereco)
VALUES ('Pedro', 19, 2000, '123.434.765-50', 'Aracity'),
    ('Guilherme', 16, 1500, '234.724.876-18', 'Juncocity'),
    ('Mariana', 17, 1900, '156.897.712-56', 'Bananeiracity'),
    ('Paulo', 22, 2300, '876.248.977-09', 'Aracity'),
    ('Alisson', 32, 1900, '284.824.756-28', 'Noiacity'),
    ('Glauco', 23, 1900, '178.135.532-84', 'Aracity');

INSERT INTO cliente (nome, cpf, endereco)
VALUES ('Suellen', '878.324.358-03', 'Giraucity'),    
    ('Silmara', '487.935.242-76', 'Juncocity'),    
    ('Marina', '325.254.563.34', 'Feiracity'),    
    ('Gil', '647.567.845.58', 'Giralcity'),    
    ('Dailly', '875.817.974-65', 'Sebastiãocity');   