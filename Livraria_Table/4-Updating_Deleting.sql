/* Updating a value */

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS
WHERE NOME_EDITORA = 'Addison';

UPDATE LIVROS
SET NOME_EDITORA = 'Adison'
WHERE NOME_EDITORA = 'Addison';

UPDATE LIVROS
SET NOME_EDITORA = 'Attlas'
WHERE NOME_LIVRO = 'Cavaleiro Real' OR NOME_LIVRO = 'Receitas Caseiras';

/* Deleting values/rows */

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS; --TOTAL 10

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS
WHERE NOME_AUTOR LIKE 'EDUARDO%'; --TOTAL 2

DELETE FROM LIVROS
WHERE NOME_AUTOR LIKE 'EDUARDO%';

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS; --TOTAL 8

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS
WHERE SEXO_AUTOR = 'F'
AND NOME_AUTOR LIKE 'C%'; --TOTAL 2

DELETE FROM LIVROS
WHERE SEXO_AUTOR = 'F'
AND NOME_AUTOR LIKE 'C%';

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS; --TOTAL 6

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS
WHERE NUMERO_PAGINAS > 450
OR UF_EDITORA = 'MG'; --TOTAL 3

DELETE FROM LIVROS
WHERE NUMERO_PAGINAS > 450
OR UF_EDITORA = 'MG';

SELECT NOME_LIVRO, NOME_AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_LIVRO
FROM LIVROS; --TOTAL 3

/* Alter/Change table */

CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME_PRODUTO VARCHAR(30) NOT NULL,
	PRECO INT,
	FRETE FLOAT(10,2) NOT NULL
);

ALTER TABLE PRODUTO
CHANGE PRECO VALOR_UNITARIO INT;

DESC PRODUTO;

ALTER TABLE PRODUTO
MODIFY VALOR_UNITARIO INT NOT NULL;

ALTER TABLE PRODUTO
ADD COLUMN PESO FLOAT(10,2) NOT NULL
FIRST;
