create database aula10;

use aula10;

create table medicos(
Idmed int not null,
Medico varchar(40) not null,
Especialidade varchar(20) not null,
Salario decimal(8,2) not null,
Cidade varchar(20) not null,
Idade int null,
Dtadmd datetime not null,
primary key(idmed)
);

--delete from medicos
insert into medicos values (1,'Zenaide','urologista',2500,'bauru',52,'01/01/2000');
insert into medicos values (2,'Antenor','cardiologista',1500,'jau',NULL,'01/01/2020');
insert into medicos values (3,'Polinomia','ortopedista',3500,'bauru',57,'01/01/1999');
insert into medicos values (4,'Biafra','ortopedista',7500,'agudos',30,'31/10/2010');
insert into medicos values (5,'Welber','cardiologista',500,'bauru',38,'01/01/2000');
insert into medicos values (6,'Anpolina','clinico geral',5600,'agudos',70,'01/01/2020');
insert into medicos values (7,'Juan','cardiologista',500,'bauru',NULL,'15/12/2017');
insert into medicos values (8,'Hermes','clinico geral',2000,'agudos',78,'31/10/2010');
insert into medicos values (9,'Humbelina','pediatra',500,'jau',56,'31/10/2010');
insert into medicos values (10,'Josefa','pediatra',1000,'jau',65,'01/07/2020');
insert into medicos values (11,'Cristaldo','urologista',6600,'agudos',null,'01/01/2000');
insert into medicos values (12, 'Marta','urologista',1345.99,'agudos ',37,'01/01/2020');
insert into medicos values (13,'Carlos','urologista',3500,'são paulo',52,'01/01/2021');
insert into medicos values (14,'Joaquina','cardiologista',4500,'jau',NULL,'01/01/2022');
insert into medicos values (15,'Kaique','ortopedista',5500,'bauru',57,'01/01/2020');
insert into medicos values (16,'Bill','ortopedista',7500,'são paulo',30,'31/10/2021');
insert into medicos values (17,'Roque','cardiologista',5500,'bauru',38,'01/01/2022');
insert into medicos values (18,'Marildo','clinico geral',5600,'agudos',70,'01/01/2021');
insert into medicos values (19,'Mari','cardiologista',7500,'são paulo',NULL,'15/12/2017');
insert into medicos values (20,'Mirtes','clinico geral',8000,'agudos',78,'31/10/2020');
insert into medicos values (21,'Silvia','pediatra',5100,'jau',56,'31/10/2021');
insert into medicos values (22,'Marta','pediatra',8000,'são paulo',65,'01/07/2022');
insert into medicos values (23,'Cristina','urologista',6600,'agudos',null,'01/01/2021');
insert into medicos values (24,'Shirley','urologista',2345.99,'agudos ',37,'01/01/2020');
insert into medicos values (25,'Tildo','obstetra',3500,'são paulo',33,'01/01/2021');
insert into medicos values (26,'Tulio','cardiologista',4500,'jau',44,'01/01/2022');
insert into medicos values (27,'Tabata','obstetra',5500,'bauru',55,'01/01/2020');
insert into medicos values (28,'Thaina','ortopedista',7500,'são paulo',45,'31/10/2021');
insert into medicos values (29,'Rita','cardiologista',5500,'bauru',55,'01/01/2022');
insert into medicos values (30,'Rute','obstetra',5600,'agudos',61,'01/01/2021');
insert into medicos values (31,'Raquel','cardiologista',7500,'são paulo',29,'15/12/2017');
insert into medicos values (32,'Carla','clinico geral',8000,'agudos',30,'31/10/2020');
insert into medicos values (33,'Katarina','obstetra',5100,'jau',31,'31/10/2021');
insert into medicos values (34,'Giovani','pediatra',8000,'são paulo',45,'01/07/2022');
insert into medicos values (35,'Giovana','obstetra',6600,'agudos',46,'01/01/2021');
insert into medicos values (36,'Abigail','obstetra',2345.99,'agudos ',47,'01/01/2020');
insert into medicos values (37,'Dilso','obstetra',4500,'são paulo',51,'01/01/2021');
insert into medicos values (38,'Duilio','pediatra',4500,'jau',52,'01/01/2022');
insert into medicos values (39,'Duane','obstetra',6500,'bauru',53,'01/01/2020');
insert into medicos values (40,'Rui','ortopedista',7500,'são paulo',59,'31/10/2021');
insert into medicos values (41,'Rubens','cardiologista',9500,'bauru',60,'01/01/2022');
insert into medicos values (42,'Ruiz','obstetra',2600,'agudos',61,'01/01/2021');
insert into medicos values (43,'Bruno','pediatra',3500,'são paulo',70,'15/12/2017');
insert into medicos values (44,'Bruna','clinico geral',4000,'agudos',30,'31/10/2020');
insert into medicos values (45,'Rubia','obstetra',5100,'jau',20,'31/10/2021');
insert into medicos values (46,'Harry','pediatra',7000,'são paulo',30,'01/07/2022');
insert into medicos values (47,'Potter','urologista',8600,'agudos',46,'01/01/2021');
insert into medicos values (48,'Hermione','obstetra',4345.99,'agudos',47,'01/01/2020');
select * from medicos;

-- 1 – Mostrar a média salarial dos médicos agrupados por cidade.
select Cidade, convert(decimal(8,2), avg(Salario)) 'Media salarial por cidade'
from medicos
group by Cidade

-- 2 – Mostrar a média salarial dos médicos agrupados por especialidade.
select Especialidade, convert(decimal(8,2), avg(Salario)) 'Media salarial por especialidade'
from medicos
group by Especialidade

-- 3 – Mostrar o maior salário dos médicos agrupados por cidade e especialidade.
select top 1 convert(decimal(8,2), max(Salario)) 'Maior salario por cidade e especialidade'
from medicos
group by Cidade, Especialidade

-- 4 – Mostrar o menor salário dos médicos agrupados por especialidade e cidade.
select top 1 convert(decimal(8,2), min(Salario)) 'Menor salario por cidade e especialidade'
from medicos
group by Cidade, Especialidade

-- 5 – Mostrar a soma dos salários dos médicos agrupados por cidade, mas somente dos médicos que morem em bauru ou agudos. 
select Cidade, convert(decimal(8,2), sum(Salario)) from medicos
group by Cidade
having (Cidade = 'bauru' or Cidade = 'agudos')

-- 6 – Mostrar a soma dos salários dos médicos agrupados por cidade, mas somente dos salários entre 1999 e 3999.
select Cidade, convert(decimal(8,2), sum(Salario)) from medicos
where Salario between 1999 and 3999
group by Cidade

-- 7 – Mostrar a soma dos salários dos médicos agrupados por cidade, mas somente os médicos que morem em bauru e agudos e também dos médicos com salário entre 1999 e 3999.
select Cidade, convert(decimal(8,2), sum(Salario)) from medicos
where Salario between 1999 and 3999
group by Cidade
having (Cidade = 'bauru' or Cidade = 'agudos');

-- 8 – Mostrar a quantidade de médicos agrupados por especialidade.
select Especialidade, count(Medico)
from medicos
group by Especialidade

-- 9 – Mostrar a quantidade de médicos agrupados por cidade com salário entre 1999 e 4999 e que morem em jau, bauru ou agudos.
select Cidade, count(Medico) from medicos
where (Salario between 1999 and 4999)
group by Cidade
having Cidade in('bauru','jau','agudos')

-- 10 – Utilizar todas as funções de agregação em um único script de agrupamento de dados
select Cidade, max(Salario) 'Maior Salário de cada especialidade',
			   min(Salario) 'Menor Salário de cada especialidade',
			   convert(decimal(8,2),avg(Salario)) 'Média Salarial por especialidade',
			   sum(Salario) 'Total de Salário por especialidade',
			   count(*) 'Total de Funcionários em cada especialidade'
from medicos
group by Cidade
order by Cidade desc;

-- 11 – Usar todas as funções de agregação em um único script de agrupamento de dados utilizando where e having.
select Cidade, max(Salario) 'Maior Salário de cada especialidade',
			   min(Salario) 'Menor Salário de cada especialidade',
			   convert(decimal(8,2),avg(Salario)) 'Média Salarial por especialidade',
			   sum(Salario) 'Total de Salário por especialidade',
			   count(*) 'Total de Funcionários em cada especialidade'
from medicos
where (Salario > 1000) 
group by Cidade
having (Cidade = 'bauru' or Cidade = 'agudos')
order by Cidade desc;

-- 12 – Criar uma tabela com grupo, subgrupo, fornecedor, produtos e preço. Inserir pelo menos 3
-- produtos para cada situação (grupo, subgrupo e fornecedor). Desenvolver pelo menos 5 scripts
-- que utilizem funções de agrupamento e agregação.

create table produtos(
categoria		varchar(50)		not null,
grupo			varchar(50)		not null,
fornecedor		varchar(50)		not null,
produto			varchar(50)		not null,
preco			decimal(8,2)	not null,
);

insert into produtos values ('Brinquedos-de-corda','Brinquedos','Estrela','Corda de pular', 38.00);
insert into produtos values ('Brinquedos-de-corda','Brinquedos','Estrela','Pião', 12.00);
insert into produtos values ('Brinquedos-de-corda','Brinquedos','Estrela','Yo-Yo', 26.00);
insert into produtos values ('Bebidas','Destilados','Vei Barrero','Alambiq', 65.00);
insert into produtos values ('Bebidas','Destilados','Askov','Askov inc.',23.50);
insert into produtos values ('Bebidas','Refrigerantes','Coquinha Gelada','Coca-Cola', 10.00);
insert into produtos values ('Automovel','Esportivo','Lancer','Mitsubitch', 64.790);
insert into produtos values ('Automovel','Esportivo','Ghibli','Maserati', 250.000);
insert into produtos values ('Automovel','Esportivo','Golf TSI','Volksvagem', 185.000);
select * from produtos;

select categoria, convert(decimal(8,2), avg(preco)) 'Media de valores por Categoria'
from produtos
group by categoria

select categoria, convert(decimal(8,2), sum(preco)) 'Soma dos valores das categorias'
from produtos
group by categoria

select top 1 convert(decimal(8,2), max(preco)) 'MAIORES PREÇOS' from produtos 
where categoria = 'Automovel'
group by produto

select top 1 produto, convert(decimal(8,2), min(preco)) 'MAIORES PREÇOS' from produtos 
where categoria = 'Bebidas'
group by produto

select produto, max(preco) 'Maior produto de cada categoria',
			   min(preco) 'Menor produto de cada categoria',
			   convert(decimal(8,3),avg(preco)) 'Média preço por categoria',
			   sum(preco) 'Total preço por categoria',
			   count(*) 'Total de produtos em cada categoria'
from produtos
where (preco > 100) 
group by produto





