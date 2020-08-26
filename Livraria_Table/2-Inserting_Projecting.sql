/* Inserting values on a table */

INSERT INTO LIVROS (NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO) VALUES (
'Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009),
('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018),
('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008),
('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78.99,'RJ',2018),
('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150.98,'RJ',2019),
('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),
('Pra sempre amigas','Leda Silva','F',510,'Insignia',78.98,'ES',2011),
('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130.98,'RS',2018),
('O poder da mente','Clara Mafra','F',120,'Continental',56.58,'SP',2017);

/* Projecting all data */
SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS;

/* Projecting 'nome do livro' and 'nome da editora' */
SELECT NOME_LIVRO, NOME_EDITORA 
FROM LIVROS;

/* Projecting 'nome do autor', 'nome do livro' and 'UF da editora' of books published by male authors. */

SELECT NOME_AUTOR, SEXO_AUTOR, NOME_LIVRO, UF_EDITORA 
FROM LIVROS 
WHERE SEXO_AUTOR = 'M';

/* Projecting 'nome do autor', 'nome do livro' and 'número de páginas' of books published by female authors. */

SELECT NOME_AUTOR, SEXO_AUTOR, NOME_LIVRO, NUMERO_PAGINAS 
FROM LIVROS 
WHERE SEXO_AUTOR = 'F';

/* Projecting 'nome do livro' and 'valor do livro' of publishers from SP. */

SELECT NOME_LIVRO, VALOR_LIVRO, UF_EDITORA 
FROM LIVROS 
WHERE UF_EDITORA = 'SP';

/* Projecting all values from male authors who published books from SP or RJ. */

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS 
WHERE SEXO_AUTOR = 'M' 
AND UF_EDITORA = 'SP'
OR SEXO_AUTOR = 'M'
AND UF_EDITORA = 'RJ';

/* Projecting using LIKE */

SELECT NOME_LIVRO, NOME_EDITORA 
FROM LIVROS 
WHERE NOME_EDITORA LIKE 'B%';

SELECT NOME_AUTOR, NOME_LIVRO, NOME_EDITORA, VALOR_LIVRO
FROM LIVROS
WHERE NOME_EDITORA LIKE '%L';

SELECT NOME_LIVRO, NUMERO_PAGINAS, NOME_EDITORA 
FROM LIVROS 
WHERE NOME_EDITORA LIKE '%I%';

/* Projecting using AS (Alias) */

SELECT NOME_LIVRO AS 'LIVRO', NOME_AUTOR AS 'AUTOR', NUMERO_PAGINAS AS 'PGS', VALOR_LIVRO AS 'PRECO', ANO_LIVRO AS 'LANCAMENTO'
FROM LIVROS 
WHERE ANO_LIVRO > 2016;