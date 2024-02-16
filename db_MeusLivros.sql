create database db_MeusLivros;
show databases;
use db_MeusLivros;

-- mostra o banco de dados selecionado
select database();

create table tbl_Autores(
IdAutor SMALLINT AUTO_INCREMENT,
NomeAutor VARCHAR(50) NOT NULL,
SobrenomeAutor VARCHAR(60) NOT NULL,
CONSTRAINT pk_id_autor PRIMARY KEY (IdAutor)
);

-- Descreve toda a tabela
DESCRIBE tbl_Autores;
SHOW COLUMNS FROM tbl_Autores;

CREATE TABLE tbl_Editora(
IdEditora SMALLINT PRIMARY KEY AUTO_INCREMENT,
Nome_Editora VARCHAR(60) NOT NULL
);

CREATE TABLE tbl_Assunto(
IdAssunto TINYINT AUTO_INCREMENT,
Nome_Assunto VARCHAR(25) NOT NULL,
CONSTRAINT pk_id_assunto PRIMARY KEY (IdAssunto)
);

CREATE TABLE tbl_Livros(
IdLivro SMALLINT AUTO_INCREMENT,
Nome_Livro VARCHAR(100) NOT NULL,
ISBN VARCHAR(13) NOT NULL,
IdAutor SMALLINT NOT NULL,
IdEditora SMALLINT NOT NULL,
IdAssunto TINYINT NOT NULL,
DATAPUB DATE,
PRECO DECIMAL(10,2) NOT NULL,
NumeroPaginas SMALLINT NOT NULL,
CONSTRAINT pk_id_livro PRIMARY KEY (IdLivro),
CONSTRAINT fk_id_editora FOREIGN KEY (IdEditora) REFERENCES tbl_Editora
(IdEditora) ON DELETE CASCADE,
CONSTRAINT fk_id_assunto FOREIGN KEY (IdAssunto) REFERENCES tbl_Assunto
(IdAssunto) ON DELETE CASCADE
);

CREATE TABLE tbl_LivrosAutores(
IdLivro SMALLINT NOT NULL,
IdAutor SMALLINT NOT NULL, 
CONSTRAINT pk_id_livro_autor PRIMARY KEY(IdLivro, IdAutor),
CONSTRAINT pk_id_livro FOREIGN KEY(IdLivro) REFERENCES tbl_Livros(IdLivro),
CONSTRAINT pk_id_autor FOREIGN KEY(IdAutor) REFERENCES tbl_Autores(IdAutor)
);

show tables;

CREATE TABLE tbl_Emprestimo(
IdEmprestimo TINYINT PRIMARY KEY,
NomeLivro VARCHAR(60) NOT NULL,
NomeEmprestador VARCHAR(50) NOT NULL
);

-- RENOMEAR UMA TABELA
rename table tbl_EmprestimoLivro to tbl_Emprestimo;

/* EXCLUIR COLUNAS 
ALTER TABLE tbl_tabela 
DROP COLUMN Edicao*/
select * from tbl_Livros;
-- adicionar uma coluna na tabela livros
ALTER TABLE tbl_Livros
ADD Edicao tinyint;
-- retirando uma coluna
ALTER TABLE tbl_Livros
DROP Edicao;

-- descrever os tipos de restrição de uma coluna
describe tbl_emprestimo;

-- modificar uma restrição de uma coluna
ALTER TABLE tbl_Emprestimo modify column IdEmprestimo smallint;

drop table tbl_emprestimo;

INSERT INTO tbl_Autores(NomeAutor,  SobrenomeAutor)
VALUES ('Daniel', 'Barret'), ('Gerald', 'Carter');

select * from tbl_Editora;

INSERT INTO tbl_Autores(NomeAutor,  SobrenomeAutor)
VALUES ('Mark', 'Sobell'), ('Willian', 'Stanek'), ('Richard', 'Blum'), ('Christine', 'Bresnhan'),
('Richard', 'Silverman'), ('Robert', 'Byrnes'), ('Jay', 'Ts'), ('Robert', 'Eckstein'),
('Paul', 'Horowitz'), ('Winfield', 'Hill'), ('Joel', 'Murach'), ('Paul', 'Scherz'), ('Simon', 'Monk');

INSERT INTO tbl_Editora (Nome_Editora)
VALUES ('Prentice Hall'), ('O´Reilly'), ('Microsoft Press'), ('Wiley'),  ('Mc Graw Hill'),
('Bookman'), ('NovaTec'), ('Apress'), ('Sybex'), ('Mike Murach and Associates');

INSERT INTO tbl_Assunto(Nome_Assunto)
VALUES ('Ficção'), ('Eletronica'), ('Botanica'), ('Matemática'),
 ('Aventura'), ('Literatura'), ('Informática'), ('Suspense');

INSERT INTO tbl_Livros(Nome_Livro, ISBN, DataPub, Preco, NumeroPaginas, IdAssunto, IdEditora)
VALUES ('Linux Command Line and Shell Scripting', '9781118983843', '20150109', 165.65, 816, 7, 4),
('SSH, the Secure Shell', '9780596008956', '20050517', 295.41, 672, 7, 2),
('Using Samba', '9780596002565', '20031221', 158.76, 449, 7, 2),
('A Arte da Eletrônica', '9788582604342', '20170308', 176.71, 1160, 7, 6),
('Windows Server 2012 Inside Out', '980735666313', '20130125', 179.51, 1584, 7, 3),
('Murachs MySQL', '9781943872367', '20190501', 227.64, 650, 7, 10),
('Practical ELetronics for Inventor', '9781259587542', '20160711', 119.58, 1056, 3, 5);

SELECT * FROM tbl_editora;

UPDATE tbl_livros set Nome_Livro = 'SSH, o Shell Seguro' WHERE idLivro = 2;

UPDATE tbl_livros set Preco= Preco + 10 where idLivro = 1;

UPDATE tbl_Assunto set Nome_Assunto = 'Biologia' where idAssunto = 3;

INSERT INTO tbl_editora (Nome_Editora) VALUES ('Bóson Editorial');

DELETE FROM tbl_editora where IdEditora = 12;

INSERT INTO tbl_Emprestimo(IdEmprestimo, NomeLivro, NomeEmprestador)
VALUES (20, 'o cortiço', 'joao da silva'),
(21, 'a moreninha', 'Marcos de souza'),
(22, 'macunaíma', 'Ana de Abreu');

-- APAGAR TODOS OS DADOS DE UMA TABELA
truncate table tbl_autores;

-- EXERCICIO DELETE 
INSERT INTO tbl_Autores(NomeAutor, SobrenomeAutor)
VALUES ('Stephen', 'King');

INSERT INTO tbl_Editora(Nome_Editora)
VALUES ('Scribner');

INSERT INTO tbl_Assunto(Nome_Assunto)
VALUES ('Terror');

INSERT INTO tbl_Livros(Nome_Livro, ISBN, IdAutor, IdEditora, IdAssunto, DATAPUB, PRECO, NumeroPaginas)
VALUES ('It', '9781501182099', 14, (select IdEditora from tbl_editora where nome_editora = 'Scribner'), 
(select IdAssunto from tbl_Assunto where Nome_Assunto = 'Terror'), '20170711', 48.75, 1104);

select * from tbl_livros;
select * from tbl_editora;
select * from tbl_assunto;
select * from tbl_autores;
delete from tbl_editora where IdEditora = 12;

-- tambem funciona 
-- delete from tbl_autores where nomeautor = 'Stephen' and sobrenomeautor = 'King'
-- delete from tbl_autores where nomeautor = 'Stephen'
delete from tbl_autores where IdAutor = 14;

-- SELECT 
select nomeAutor from tbl_Autores;

-- ORDER BY
select * from tbl_livros order by Nome_Livro DESC;
select * from tbl_livros order by Nome_Livro asc;

SELECT nome_livro, ideditora from tbl_livros order by idEditora;

SELECT nome_livro, preco from tbl_livros order by preco desc;

SELECT nome_livro, DATAPUB, idAssunto from tbl_livros order by idAssunto, nome_Livro;

use db_MeusLivros;
/* Limitar o número de registros
Retornar os dois livros mais baratos da tabela de livros */
select Nome_Livro, preco from tbl_livros order by Preco limit 2;

select Nome_Livro, preco from tbl_livros order by Preco DESC limit 2;

-- (limit 2,3) -> a partir do segundo livro aparece os 3 da frente
select Nome_Livro, NumeroPaginas from tbl_livros order by NumeroPaginas DESC limit 2, 3;

select Nome_Livro, DataPub from tbl_livros where IdEditora = 2;

select idAutor, nomeautor from tbl_autores where sobrenomeautor= 'Stanek';

-- Indices
alter table tbl_editora add index inomeeditora(nome_editora);

show index from tbl_editora;

explain select * from tbl_editora where nome_editora = 'Springer';

create index idx_editora on tbl_editora (nome_editora);

drop index idx_editora on tbl_editora;
drop index inomeeditora on tbl_editora;

-- exemplo and, or e not
select idlivro, nome_livro, ideditora from tbl_livros
where idlivro > 2 AND Ideditora < 4;

select idlivro, nome_livro, ideditora from tbl_livros
where idlivro > 2 OR Ideditora < 4;

select idlivro, nome_livro, ideditora from tbl_Livros 
where not ideditora = 10;

select idlivro, nome_livro, ideditora from tbl_livros
where idlivro > 2 AND NOT Ideditora <= 4;

-- ALIASES - AS como apelido
SELECT Nome_Livro AS Livro from tbl_Livros where IdLivro > 2;

SELECT NomeAutor AS Nome, SobrenomeAutor Sobrenome FROM tbl_Autores AS Autores;

SELECT Nome_Livro Livro, Preco 'Preco do Livro' FROM tbl_livros Livros ORDER BY 'Preco do Livro' DESC;

-- DESAFIOS
SELECT * FROM tbl_editora;

SELECT Nome_Editora Editora from tbl_editora ORDER BY Editora;

SELECT Nome_Livro, Preco, DATAPUB from tbl_Livros ORDER BY DATAPUB DESC;

SELECT NomeAutor, SobrenomeAutor Sobrenome from tbl_autores ORDER BY Sobrenome;

SELECT Nome_Livro, IdAssunto, IdEditora from tbl_livros;

SELECT Nome_Assunto Assunto from tbl_Assunto ORDER BY Assunto;

select count(*) as Total from tbl_autores;

select count(distinct ideditora) as Editoras from tbl_livros;

select MAX(preco) as 'livro mais caro' from tbl_livros;
select min(preco) as 'livro mais barato' from tbl_livros;
select sum(preco) as 'total dos valores livro'from tbl_livros;
select AVG(preco) as 'média dos valores livros' from tbl_livros;
select sum(preco) / count(*) from tbl_livros;

select count(*) as 'Quant. Livros', sum(numeropaginas) as 'páginas totais',
avg(numeropaginas) as 'Mpedia de pags.' from tbl_livros;

-- EX 27.1
SELECT sum(preco) from tbl_livros where IdEditora = 3;

SELECT avg(preco) from tbl_livros where IdEditora IN (2, 3);

SELECT MAX(preco) 'Livro mais caro', Nome_Livro Livro from tbl_livros;

-- SELECT NOMELIVRO, PRECOLIVRO FROM TBL_LIVROS WHERE PRECOLIVRO = (SELECT MAX(PRECOLIVRO) FROM TBL_LIVROS;

-- BETWEEN
SELECT * FROM tbl_livros WHERE DataPub BETWEEN '20040517' AND '20110517';

SELECT nome_livro Livro, Preco FROM tbl_Livros WHERE preco between 170.0 AND 180.0;

SELECT nome_livro Livro, Preco FROM tbl_Livros WHERE preco BETWEEN 170.0 AND 180.0 
OR preco BETWEEN 150.0 AND 200.0 OR Preco BETWEEN 220.0 AND 300.0;

-- Começa com A
SELECT * FROM tbl_livros WHERE nome_livro LIKE 'A%';
-- Tem que conter um A
SELECT * FROM tbl_livros WHERE nome_livro LIKE '%A';

SELECT nome_livro livro FROM tbl_livros WHERE nome_livro NOT LIKE 'A%';

-- SEGUNDO CARACTERE _% <--
SELECT nome_livro livro FROM tbl_livros WHERE nome_livro LIKE '%_i';

-- NOT LIKE -> NÃO CONTENHA
SELECT nome_livro livro, preco valor from tbl_livros WHERE nome_livro not like 'a%'
and preco <= 190.0;

-- GROUP BY -> AGRUPAR
SELECT idassunto, sum(numeropaginas) paginas from tbl_livros group by idassunto;

SELECT ideditora, sum(preco) preco from tbl_livros group by ideditora;

SELECT ideditora, avg(numeropaginas) paginas, idassunto from tbl_livros group by ideditora;

SELECT ideditora, sum(preco) preco from tbl_livros where numeropaginas >= 1000 
group by ideditora order by numeropaginas;

SELECT ideditora, avg(numeropaginas), idassunto from tbl_livros group by ideditora 
having avg(numeropaginas) >= 1000;

-- INNER JOINS
SELECT * from tbl_livros inner join tbl_editora ON tbl_livros.IdEditora = tbl_editora.IdEditora;
SELECT * from tbl_livros inner join tbl_editora;

SELECT L.Nome_Livro, L.ISBN, tbl_assunto.Nome_Assunto FROM tbl_livros L join tbl_assunto
ON L.IdAssunto = tbl_assunto.IdAssunto;

SELECT L.Nome_Livro, E.Nome_Editora from tbl_livros L
JOIN tbl_Editora E
ON L.IdEditora = E.IdEditora
WHERE E.Nome_Editora LIKE 'M%';

-- LEFT JOIN - TODOS OS DADOS DA TABELA DA ESQUERDA E AINTERSECÇÃO
SELECT * FROM tbl_assunto A left join tbl_livros L on L.IdAssunto = A.IdAssunto;

-- RIGHT JOIN - TODOS OS DADOS DA TABELA DA ESQUERDA E AINTERSECÇÃO
SELECT * FROM tbl_assunto A right join tbl_livros L on L.IdAssunto = A.IdAssunto;

-- UNIR DOIS SELECTS
select nome_livro livro, preco, 'Livro Caro' resultado from tbl_livros
where preco >= 150.0
union
select nome_livro livro, preco, 'Livro Razoavel' resultado from tbl_livros
where preco < 150.0
order by preco;

select l.nome_livro livro, l.preco 'Preço Normal', l.preco * 0.90 'Preço Ajustado', A.Nome_Assunto
from tbl_livros L
inner join tbl_assunto A
ON L.IdAssunto = A.IdAssunto
where l.preco > 200.00
union
select l.nome_livro livro, l.preco 'Preço Normal', l.preco * 1.15 'Preço Ajustado', A.Nome_Assunto
from tbl_livros L
inner join tbl_assunto A
ON L.IdAssunto = A.IdAssunto
WHERE A.nome_assunto = 'Eletronica' 
order by 'Preco Ajustado' DESC;