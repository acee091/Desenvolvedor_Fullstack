create database db_longavida;

use db_longavida;

CREATE TABLE tbl_plano(
plano char(2) not null primary key,
descricao CHAR(30) not null,
valor decimal (10,2) not null
);

CREATE TABLE tbl_associado(
plano char(2) not null,
Nome CHAR(40) not null primary key,
endereco CHAR(35),
Cidade CHAR(20),
Estado CHAR(2),
CEP CHAR(9),
CONSTRAINT fk_plano foreign key(plano) REFERENCES tbl_plano(plano)
);

INSERT INTO tbl_plano (plano, descricao, valor)
VALUES ('B1', 'Básico 1', 200.0), ('B2', 'Básico 2', 150.00), ('B3', 'Básico 3', 100.00), ('E1', 'Executivo 1', 350.00),
('E2', 'Executivo 2', 300.00), ('E3', 'Executivo 3', 250.00), ('M1', 'Master 1', 500.00), ('M2', 'Master 2', 450.00),
('M3', 'Master 3', 400.00);

INSERT INTO tbl_associado(plano, nome, endereco, cidade, estado, cep)
VALUES ('B1', 'JOSE ANTONIO DA SILVA', 'R. FELIPE DO AMARAL, 3450', 'COTIA', 'SP', '06700-000'),
('B1', 'MARIA DA SILVA SOBRINHO', 'R. FELIPE DE JESUS, 1245', 'DIADEMA', 'SP', '09960-170'),
('B1', 'PEDRO JOSE DE OLIVEIRA', 'R. AGRIPINO DIAS, 155', 'COTIA', 'SP', '06700-011'),
('B2', 'ANTONIA DE FERNANDES', 'R. PE EZEQUIEL, 567', 'DIADEMA', 'SP', '09960-175'),
('B2', 'ANTONIO DO PRADO', 'R. INDIO TABAJARA, 55', 'GUARULHOS', 'SP', '07132-999'),
('B3', 'WILSON DE SENA', 'ARAPIRACA, 1234', 'OSASCO', 'SP', '06293-001'),
('B3', 'SILVIA DE ABREU', 'R. DR. JOAO DA SILVA, 5', 'SANTO ANDRE', 'SP', '09172-112'),
('E1', 'ODETE DA CONCEICAO', 'R. VOLUNTARIOS DA PATRIA, 10', 'SAO PAULO', 'SP', '02010-550'),
('E2', 'JOAO CARLOS MACEDO', 'R. VISTA ALEGRE, 500', 'SAO PAULO', 'SP', '04343-990'),
('E3', 'CONCEICAO DA SILVA', 'AV. VITORIO DO AMPARO, 11', 'MAUA', 'SP', '09312-988'),
('E3', 'PAULO BRUNO AMARAL', 'R. ARGENZIO BRILHANTE, 88', 'BARUERI', 'SP', '06460-999'),
('E3', 'WALDENICE DE OLIVEIRA', 'R. OURO VELHO, 12', 'BARUERI', 'SP', '06460-998'),
('E3', 'MARCOS DO AMARAL', 'R. DO OUVIDOR, 67', 'GUARULHOS', 'SP', '07031-555'),
('M1', 'MURILO DE SANTANA', 'R. PRATA DA CASA', 'BARUERI', 'SP', '06455-111'),
('M1', 'LUIZA ONOFRE FREITAS', 'R. VICENTE DE ABREU, 55', 'SANTO ANDRE', 'SP', '09060-667'),
('M2', 'MELISSA DE ALMEIDA', 'R. FERNANDO ANTONIO, 2345', 'SAO PAULO', 'SP', '04842-987'),
('M2', 'JOAO INACIO DA CONCEICAO', 'R. PENELOPE CHARMOSA, 34', 'SUZANO', 'SP', '08670-888'),
('B3', 'AUGUSTA DE ABREU', 'AV. RIO DA SERRA, 909', 'SANTO ANDRE', 'SP', '09061-333'),
('M3', 'ILDA DE MELO DA CUNHA', 'AV. POR DO SOL, 546', 'SANTO ANDRE', 'SP', '09199-444'),
('M3', 'MARCOS DA CUNHA', 'AV. PEDROSO DE MORAES', 'SAO PAULO', 'SP', '04040-444');



-- 1. Quais campos das tabelas associado e plano devem ser utilizados para efetuar o relacionamento entre as tabelas?
-- O campo PLANO da tabela tbl_plano e o campo PLANO da tbl_associado
-- 2. Extrair uma relação geral de todos os associados e os planos que eles possuem.
SELECT * FROM tbl_associado A RIGHT JOIN tbl_plano P ON A.plano = P.plano;
-- 3.Quantos associados possuem o plano B1?
SELECT count(*)'Numero de Associados' FROM tbl_associado WHERE plano = 'B1';
-- 4. Apresente uma relação com todos os nomes, planos e valores de todos os registros de associados.
SELECT nome, P.plano, valor
FROM tbl_associado A
INNER JOIN tbl_plano P ON P.plano = A.plano;
-- 5. Quais são os associados que moram em COTIA ou em DIADEMA?
SELECT nome, cidade
FROM tbl_associado
WHERE cidade = 'COTIA' OR cidade = 'DIADEMA';
 
-- 6. Apresente o nome, plano e valor dos associados que moram em BARUERI e possuem o plano M1
SELECT nome, P.plano, valor
FROM tbl_associado A 
INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE cidade = 'BARUERI' AND A.Plano = 'M1';
-- 7. Apresente uma relação com nome, plano e valor de todos os associados residentes em SÃO PAULO
SELECT nome, P.plano, valor
FROM tbl_associado A 
INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE cidade = 'SAO PAULO';
-- 8. Apresente uma relação completa de todos os campos de ambas as tabelas em que o associado possua SILVA no nome.
SELECT * FROM tbl_associado A INNER JOIN tbl_plano P ON A.plano = P.plano WHERE nome LIKE('%SILVA');
-- 9. Devido ao aumento do índice IGPM, a empresa reajustou os valores dos planos básicos em 10%, dos planos executivos em 5% e dos planos Máster em 3 %. Atualize os valores na tabela planos.
update tbl_plano set valor = valor * 1.10 WHERE descricao LIKE 'BASICO%';
update tbl_plano set valor = valor * 1.05 WHERE descricao LIKE 'EXECUTIVO%';
update tbl_plano set valor = valor * 1.03 WHERE descricao LIKE 'MASTER%';
/*SELECT plano, ROUND(valor * 1.10,2)
from tbl_plano 
WHERE descricao LIKE 'BASICO%'
UNION
SELECT plano, ROUND(valor * 1.05, 2)
from tbl_plano 
WHERE descricao LIKE 'EXECUTIVO%'
UNION
SELECT plano, ROUND(valor * 1.03, 2)
from tbl_plano
WHERE descricao LIKE 'MASTER%'; */
-- 10. O associado PEDRO JOSE DE OLIVEIRA alterou seu plano de B1 para E3. Faça a devida atualização.
UPDATE tbl_associado SET plano = 'E3' WHERE nome = 'PEDRO JOSE DE OLIVEIRA';

-- 11. Quantos associados possuem o plano E3?
SELECT count(*)'Numero de Associados' FROM tbl_associado WHERE plano = 'E3';
-- 12.Liste o nome e o valor de todos os associados que possuem os planos B1, E1 e M1.
SELECT nome, valor, p.plano FROM tbl_associado A
 INNER JOIN tbl_plano P ON P.plano = A.plano 
 WHERE P.plano = 'B1' or P.plano = 'E1' or P.plano = 'M1';
 
-- 13. Quais são os associados que possuem plano do tipo EXECUTIVO, independentemente da categoria ser 1, 2 ou 3?
SELECT A.nome, P.plano
FROM tbl_associado A
INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE P.plano LIKE ('E%');
-- 14. Quais são os associados que possuem plano dos tipos Básico e Máster?
SELECT A.nome, P.plano
FROM tbl_associado A
INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE P.plano LIKE ('B%') OR P.plano LIKE ('M%');
-- 15. A empresa fechou seu escritório na cidade de SANTO ANDRE e transferiu os cliente para um terceirizado. Remova da tabela associados todos os registros existentes de associados da cidade de SANTO ANDRE
delete from tbl_associado where cidade = 'SANTO ANDRE';
-- 16. Apresente o nome, plano e valor dos associados que moram em SÃO PAULO e possuem os planos M2 e M3. A listagem deve estar ordenada pelo campo nome.
SELECT A.nome, A.plano, P.valor 
FROM tbl_associado A 
INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE cidade = 'SAO PAULO' AND A.plano = 'M2' OR A.plano = 'M3'
ORDER BY A.nome;
-- 17. Apresente uma listagem completa de todos os campos de ambas as tabelas ordenados por tipo de plano.
SELECT * FROM tbl_plano P INNER JOIN tbl_associado A ON A.plano = P.plano ORDER BY P.plano;
-- 18. Faça uma relação geral de todos os associados e planos que eles possuem. A relação deve ser apresentada em ordem ascendente pelo campo tipo de plano e descendente pelo campo de identificação do nome do associado. 
SELECT nome, P.plano 
FROM tbl_associado A
INNER JOIN tbl_plano P ON P.plano = A.plano
ORDER BY P.plano ASC, NOME DESC;

-- 19. Apresentar uma relação de todos os associados que não possuem o plano Máster.
SELECT * from tbl_associado A INNER JOIN tbl_plano P ON P.plano = A.plano WHERE descricao NOT LIKE 'MASTER%';
-- 20. Apresentar uma listagem em ordem crescente pelo campo nome do associado. Essa listagem deve ser formada pelos campos Nome da tabela associado e Descrição da tabela Planos
SELECT nome, descricao
FROM tbl_associado A INNER JOIN tbl_plano P ON P.plano = A.plano
ORDER BY nome;
-- 21.Apresentar uma listagem dos planos que estão situados na faixa de valores de 300 até 500
SELECT plano, valor
FROM tbl_plano
where valor BETWEEN 300 AND 500;
-- 22. Apresentar uma relação contendo: nome,plano, descrição do plano e valor de todos os associados que tenham em seu nome, seja na posição que for, a seqüência AMARAL.
SELECT nome, P.plano, descricao, valor 
FROM tbl_associado A INNER JOIN tbl_plano P ON P.plano = A.plano
WHERE nome LIKE '%AMARAL';
-- 23. Quais associados residem na cidade de DIADEMA?
SELECT nome, cidade
FROM tbl_associado
WHERE cidade = 'DIADEMA';
-- 24. O plano do tipo MASTER teve um reajuste de 6%. Atualize na tabela planos os valores das categorias 1, 2 e 3.
UPDATE tbl_plano set valor = valor * 1.06 WHERE descricao = 'MASTER%';
-- 25. Quais são os clientes cujo CEP é iniciado com os valores 09? */
SELECT nome, cep 
FROM tbl_associado
WHERE CEP LIKE '09%';