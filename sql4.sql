create database aula9;

use aula9;

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

-- 1 Informe o total de médicos cadastrados.
select count(Medico) 'TOTAL DE MEDICOS' from medicos;

-- 2 Informe o total de especialidades cadastradas
select count(Especialidade) 'TOTAL DE MEDICOS' from medicos;

-- 3 Informe o valor medio dos salarios dos medicos
select convert(decimal(9,2),avg(Salario)) 'MEDIA DOS SALARIOS 'from medicos;

-- 4 Informe o maior salario pago para um medico
select max(Salario) 'MAIOR SALARIO' from medicos;

-- 5 Informe o menor salario pago para um medico
select min(Salario) 'MENOR SALARIO' from medicos;

-- 6 Informe o total de urologistas
select count(Medico) 'TOTAL DE MEDICOS UROLOGISTAS' from medicos
where Especialidade = 'urologista'

-- 7 Informe e media salario dos medicos que moram em Jau ou Agudos
select convert(decimal(9,2), avg(Salario)) 'MEDIA DOS SALARIOS' from medicos
where Cidade = 'jau' or Cidade = 'agudos'

-- 8 Informe a quantidade de especialistas disponíveis na cidade de agudos
select count(Medico) 'TOTAL DE MEDICOS EM AGUDOS' from medicos
where Cidade = 'agudos'

-- 9 Mostrar o valor da soma dos salario dos medicos com id 1,5 e 7
select sum(Salario) from medicos
where Idmed in(1,5,7);

-- 10 Informe a quantidade de medicos que não trabalham em Bauru e tem salario menor que 2000
select count(Medico) 'MEDICOS QUE NÃO TRABALHAM EM BAURU'from medicos
where Cidade not in('bauru') and (Salario < 2000)

-- 11 Mostrar os dados do medico com maior salario
select * from medicos
order by Salario desc

-- 12 Mostrar a media salarial dos medicos entre 30 e 60 anos que moram em bauru e jau
select convert(decimal(9,2), avg(Salario)) 'MEDIA DOS SALARIOS' from medicos
where Idade between 30 and 60 and Cidade = 'bauru' or Cidade = 'jau'

-- 13 Mostrar a data de contratação do medico mais novo
select max(Dtadmd) from medicos

-- 14 Mostrar a data de contratação do medico mais velho
select min(Dtadmd) from medicos

-- 15 Informar todos os medicos contratados em 2000
select * from medicos
where Dtadmd between '31/12/1999' and '01/01/2001'

-- 16 Informar o total de medicos contratados entre 2000 e 2019
select count(Medico) from medicos
where Dtadmd between '31/12/1999' and '01/01/2020'

-- 17 Mostrar a media salarial dos medicos contratados em 2020 que moram em agudos
select convert(decimal(9,2),avg(Salario)) 'MEDIA SALARIAL' from medicos
where Dtadmd between '31/12/2019' and '01/01/2021' and Cidade = 'agudos'

-- 18 Mostrar o valor medio dos salarios entre 2000 e 2020
select convert(decimal(9,2),avg(Salario)) 'MEDIA SALARIAL' from medicos
where Dtadmd between '31/12/1999' and '01/01/2021'

-- 19 Mostrar a soma dos salario dos medicos, cujo o salario for maior que 2000 e more em Bauru ou Jau e a especialidade for ortopedista
select sum(Salario) from medicos
where Salario > 2000 and Cidade = 'bauru' or Cidade = 'jau' and Especialidade = 'ortopedista'

-- 20 Mostrar o total de medicos que morem em Bauru ou Jau ou Agudos
select * from medicos
where Cidade in('bauru', 'jau', 'agudos')

-- 21 Elaborar e desenvolver um script que utilize COUNT, SUM e AVG com:
-- a) LIKE
-- b) IN
-- c) BETWEEN

-- LIKE
select count(Medico) from medicos
where Especialidade like 'o%'

select convert(decimal(9,2),sum(Salario)) from medicos
where Cidade like '%u'

select convert(decimal(9,2),avg(Salario)) from medicos
where Medico like '%a%'

-- IN
select count(Medico) from medicos
where Especialidade in('obstreta','pediatra','urologista')

select convert(decimal(9,2),sum(Salario)) from medicos
where Cidade in('bauru', 'são paulo')

select convert(decimal(9,2),avg(Salario)) from medicos
where Especialidade in('pediatra', 'cardiologista')

-- BETWEEN
select count(Medico) from medicos
where Dtadmd between '31/12/2019' and '01/01/2021'

select convert(decimal(9,2),sum(Salario)) from medicos
where Salario between '1000' and '4499'

select convert(decimal(9,2),avg(Salario)) from medicos
where Dtadmd between '30/10/2005' and '30/10/2015'