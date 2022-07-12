create database aula11;

use aula11;

-- 1 - Criar uma tabela PRODUTOS com os campos: ID, NOME, PREÇO, DATA DE
-- FABRICAÇÃO, DATA DE ENTREDA NO ESTOQUE E DATA DE VALIDADE.
drop table produtos
create table produtos(

id				int not null,
nome			varchar(30) not null,
preco			decimal(8,2) not null,
dtfabricacao	datetime not null,
dtentrada		datetime not null,
dtvalidade		datetime not null,

);

-- 2 - Inserir os registros suficientes para que os scripts abaixo apresentem pelo menos 1
-- resultado válido

insert into produtos values (1,'Pão de Mel',19.50,'15/05/2022','17/05/2022','11/06/2022');
insert into produtos values (2,'Danone',18.75,'10/02/2021','21/03/2021','05/10/2021');
insert into produtos values (3,'Iogurte',11.75,'23/03/2022','02/04/2022','21/04/2022');
insert into produtos values (4,'Miojo de carne',3.50,'15/04/2022','18/04/2022','23/09/2022');
insert into produtos values (5,'Macarrão',19.50,'12/04/2022','16/04/2022','13/08/2022');
insert into produtos values (6,'Leite',4.19,'03/07/2017','05/07/2017','11/10/2017');
insert into produtos values (7,'Pão de Queijo',22.50,'13/02/2016','15/03/2016','11/06/2016');
insert into produtos values (7,'Pão de Alho',25.70,'07/05/2019','11/05/2019','22/07/2019');
select * from produtos

-- 3 - Verificar se existem produtos com o data de validade vencida
select nome,convert(date, dtvalidade, 103) from produtos 
where dtvalidade < getdate()
group by nome, dtvalidade

-- 4 - Verificar que produtos foram fabricados nos meses de março e abril
select month(dtfabricacao), nome 'NOME DOS PRODUTOS'
from produtos
where month(dtfabricacao) between 3 and 4
group by dtfabricacao, nome

-- 5 - Verificar produtos com a data de fabricação do ano de 2019
select year(dtfabricacao), nome 'NOME DOS PRODUTOS'
from produtos
where year(dtfabricacao) = 2019
group by dtfabricacao, nome

-- 6 - Calcular a data de validade dos produtos 90 dias depois de fabricados
select datediff(dd, convert(varchar, dtfabricacao +90, 103), dtvalidade) 'DATA PÓS FABRICADOS PARA VENCIMENTO' from produtos

-- 7 - Calcular a data de validade dos produtos 6 meses depois de fabricados
select datediff(mm, convert(varchar, dtfabricacao +180, 103), dtvalidade) 'DATA PÓS FABRICADOS PARA VENCIMENTO' from produtos

-- 8 - Calcular há quantos dias um produto entrou no estoque
select datediff(mm, convert(varchar, dtentrada, 103), getdate()) 'DIAS EM ESTOQUE' from produtos

-- 9 - Mostrar o preço de todos os produtos com data de validade superior a abril de 2018
select preco, nome, dtvalidade from produtos
where dtvalidade > '30/04/2018'

-- 10 - Mostrar os produtos fabricamos entre os dias 12 de março e 22 de abril.
select * from produtos
where dtfabricacao between '12/03/2022' and '22/04/2022'

-- 11 - Mostrar o produto mais antigo no estoque – data de entrada
select nome, min(dtentrada) 'PRODUTO MAIS ANTIGO' from produtos
group by nome, dtentrada
order by dtentrada


-- 12 - Mostrar o produto mais novo – data de fabricação
select nome, dtfabricacao 'PRODUTO MAIS NOVO' from produtos
group by nome, dtfabricacao
order by dtfabricacao desc


-- 13 - Informe o total de produtos com validade vencida
select count(*) 'TOTAL DE PRODUTOS COM VALIDADE VENCIDA'from produtos
where dtvalidade < getdate()

-- 14 - Informe o valor total dos produtos com validade vencida
select sum(preco) 'SOMA TOTAL DO VALOR DOS PRODUTOS VENCIDOS' from produtos
where dtvalidade < getdate();

-- 15 - Quais foram os produtos fabricados nesse ano?select nome, dtfabricacao from produtos
where year(dtfabricacao) = '2022'

-- 16 - Quais foram os produtos que entraram no estoque esse ano
select nome, dtentrada from produtos
where year(dtentrada) = '2022'

-- 17 - Qual a média de preço dos produtos com validade vencida
select convert(decimal(8,2), avg(preco)) 'MEDIA DE PREÇO DOS PRODUTOS VENCIDOS' from produtos
where dtvalidade < getdate()