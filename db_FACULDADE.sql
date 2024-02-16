create database db_faculdade;
use db_faculdade;

CREATE TABLE tbl_aluno(
ra INT AUTO_INCREMENT primary key,
nome CHAR(100) not null,
nascimento date not null
);

CREATE TABLE tbl_curso(
codigo SMALLINT AUTO_INCREMENT primary key,
nome CHAR(100) not null,
carga_horaria int not null,
data_inicio date not null,
data_termino date not null
);
ALTER TABLE tbl_aluno AUTO_INCREMENT = 123456;

CREATE TABLE tbl_matricula(
curso SMALLINT not null,
ra int not null,
data_matricula date not null,
valor decimal(10,2) not null,
CONSTRAINT pk_id_curso_ra primary key (curso, ra),
CONSTRAINT fk_curso foreign key(curso) references tbl_curso(codigo),
CONSTRAINT fk_ra foreign key(ra) references tbl_aluno(ra)
);

INSERT INTO tbl_aluno (nome, nascimento)
VALUES ('Ana', '19720110'), ('Bianca', '19730211'), ('Carla', '19871212'), ('Danilo', '19901002'),
('Eliana', '19870101');

select * from tbl_aluno;

INSERT INTO tbl_curso (nome, carga_horaria, data_inicio, data_termino)
VALUES 
('Java', 360, '20071201', '20081010'), ('Auto Cad', 60, '20080110', '20080510'),
('PHP', 90, '20080215', '20080710'), ('Redes', 60, '20080120', '20080320');

SELECT * FROM tbl_curso;

INSERT INTO tbl_matricula (curso, ra, data_matricula, valor)
VALUES (1, 123456, '20070910', 100.00), (3, 123456, '20071001', 60.00), 
(1, 123457, '20070901', 100.00), (2, 123458, '20080111', 50.00),
(2, 123459, '20070720', 50.00), (1, 123460, '20070810', 80.00);

select * from tbl_matricula;
-- 1. Listar RA, nome do aluno e nome do curso em que o aluno está matriculado. V
SELECT A.ra, A.nome, C.nome
from tbl_matricula M
INNER JOIN tbl_aluno A ON A.ra = M.ra
INNER JOIN tbl_curso C ON C.codigo = M.curso;

-- 2. Listar RA, nome do aluno e nome do curso em que o aluno está matriculado, ordenadopor nome do curso. V
SELECT A.ra, A.nome, C.nome
from tbl_matricula M
INNER JOIN tbl_aluno A ON A.ra = M.ra
INNER JOIN tbl_curso C ON C.codigo = M.curso
ORDER BY C.nome;

-- 3.Exibir o nome de cada curso que teve matriculas e quantos alunos tem matriculados emcada um deles (Obs. Usar apelido para o campo do número de alunos). V
SELECT C.nome Curso, count(*) 'Quantidade de Alunos'
from tbl_matricula M
INNER JOIN tbl_curso C ON C.codigo = M.curso
GROUP BY M.curso;

-- 4.Exibir o nome de todos os cursos e quantos alunos tem matriculados em cada um (Obs.Caso algum curso não tenha matrículas, exibir número de alunos =0). NF
SELECT C.nome Curso, count(*) 'Quantidade de Alunos'
from tbl_matricula M
INNER JOIN tbl_curso C ON C.codigo = M.curso
GROUP BY C.nome
HAVING count(*) IS NULL = 0;


-- 5. Exibir o nome do curso e o valor total recebido das matrículas em cada um deles V
SELECT C.nome, sum(valor)
FROM tbl_matricula M
INNER JOIN tbl_curso C ON C.codigo = M.curso
GROUP BY C.codigo;

-- 6. Exibir o nome do curso, o valor total recebido das matrículas em cada um deles e o totalarrecadado em matrículas pela escola. NF
SELECT C.nome, sum(valor), sum(valor) TOTAL
FROM tbl_matricula M
INNER JOIN tbl_curso C ON C.codigo = M.curso
GROUP BY C.codigo;

-- 7. Exibir o valor médio pago em matrícula na escola. Chamar a coluna que exibirá a médiade valor médio e seu conteúdo deve ser exibido com 2 casas decimais V
SELECT round(avg(valor),2) Media 
from tbl_matricula;

-- 8. Exibir o nome e o valor médio de matrícula de cada curso. Chamar a coluna que exibirá amédia de valor médio e seu conteúdo exibido com 2 casas decimais V
SELECT C.nome, round(avg(valor),2) Media
from tbl_matricula M 
INNER JOIN tbl_curso C ON C.Codigo - M.curso
GROUP BY C.codigo;

-- 9. Exibir nome dos cursos  que não são VIP ( ou seja que tenha pelo menos 2 alunos) e aquantidade de alunos matriculados em cada um deles. V
SELECT C.nome Curso, count(*) 'Quantidade de Alunos'
from tbl_matricula M
INNER JOIN tbl_curso C ON C.codigo = M.curso
GROUP BY M.curso
HAVING count(*) >=2;

-- 10 Exiba o nome dos cursos com mesma carga horária do curso de auto cad.
SELECT C.nome, carga_horaria
FROM tbl_curso C
WHERE carga_horaria = '60';
-- 11. Exiba nome de todos os alunos que fazem aniversário no mesmo mês que Ana. V
SELECT A.nome, A.nascimento
FROM tbl_aluno A
WHERE month(nascimento) = '01';
-- 12 Exiba todos os cursos com início em janeiro de 2008 que tenham alunos matriculados. V
SELECT C.nome, C.data_inicio
from tbl_curso C
INNER JOIN tbl_matricula M
WHERE month(data_inicio) = '01'
HAVING count(M.ra) > 1;
-- 13 Exiba todos os cursos com início em janeiro de 2008 independente de ter alunos matriculados ou não. V
SELECT C.nome, C.data_inicio
from tbl_curso C
WHERE month(data_inicio) = '01';
-- 14. Exiba o nome do aluno e do curso de todos os alunos que fizeram matrícula antes da data de início do curso no qual se matriculou, pois esses vão ganhar um brinde.Observe que a Carla se matriculou no curso de auto cad após o inicio do curso, portanto ela não foi listada e não receberá brinde.
SELECT A.nome, C.nome
FROM tbl_matricula M
INNER JOIN tbl_aluno A ON A.ra = M.ra
INNER JOIN tbl_curso C ON C.codigo = M.curso
WHERE data_matricula <= data_inicio;
-- 15. Listar os cursos que ainda não iniciaram
SELECT C.nome 
FROM tbl_curso C
WHERE data_inicio < now();
-- 16. Listar os alunos que fizeram matrícula de Sábado pois eles também receberão brindes
SELECT A.nome
FROM tbl_matricula M
INNER JOIN tbl_aluno A ON A.ra = M.ra
WHERE weekday(M.data_matricula) = 5;
-- 17. Os alunos que fizeram matrícula de Sábado receberão 50% do valor pago na matrículade volta, para incentivar essa prática de ir se matricular em cursos sempre aos sábados poisé o dia que a escola tem um plantão de matrícula. Exibir o nome do aluno e o valor arestituir (apelidar a coluna com esse nome, e exibir o valor com 2 casas decimais)
SELECT A.nome, ROUND(valor *0.5, 2) 'Valor a restituir'
FROM tbl_matricula M
INNER JOIN tbl_aluno A ON A.ra = M.ra
WHERE weekday(M.data_matricula) = 5;
-- 18
SELECT A.nome, TIMESTAMPDIFF(YEAR, A.nascimento, NOW()) AS idade
FROM tbl_aluno A;
-- 19 Listar o nome dos cursos e a duração em meses de cada um, sabendo o seguinte:PERIOD_DIFF  -  Retorna a diferença, em meses, entre dois períodos informados. O período deve estar no formato AAAAMM ou AAMM Sintaxe: PERIOD_DIFF(periodo1, periodo2) Exemplo 01: Diferença entre o ano de 2010, mês 02 e o ano 2009, mês 07 mysql> SELECT PERIOD_DIFF(201002, 200907); resposta:  7
SELECT C.nome, TIMESTAMPDIFF(MONTH, data_inicio, data_termino)
FROM tbl_curso C;