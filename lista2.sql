create database fib2022;
use fib2022;

-- TABELA 1 --
 create table tabela1(
 
 matricula		int				not null,
 nome			varchar(40)		not null,
 endereco		varchar(50)		not null,
 cidade			varchar(30)		not null,
 codcurso		int,
 primary key(matricula)
 
 );


 insert into tabela1 values (10001,'Marcos Moraes','Rua Pe Roque, 2057','Mogi Mirim',01);
 insert into tabela1 values (10002,'Maria Conceição Lopes','Rua Araras, 23','Mogi Guaçu',01);
 insert into tabela1 values (10003,'Ana Carnina Lopes','Rua Peraltas, 222','Santos',01);
 insert into tabela1 values (10004,'Carlos Aguiar','Rua Botafogo, 33','Santos',01);
 insert into tabela1 values (10005,'André Luiz dos Santos','Rua Lopes Conte, 3343','Sapucai',01);
 insert into tabela1 values (10006,'Pedro Antonio Pimenta','Rua Altair Lopes','Itapira',02);


 select * from tabela1;
 
 -- TABELA 2 --

 create table tabela2 (
 
 produto		varchar(30) not null,
 marca			varchar(30) null,
 cor			varchar(10)	null,
 preco			decimal(6,2) not null,
 quantidade		int,
 valortotal		decimal(7,2) not null,
 fabricacao		date,


 );


 insert into tabela2 values ('Mouse','Dell','Preto',22.99,1,22.99,'01/01/2021');
 insert into tabela2 values ('Teclado','Microsoft','Prata',17.45,2,34.90,'02/01/2021');
 insert into tabela2 values ('HD','Wester Digital',null,199.99,3,599.97,'03/01/2021');
 insert into tabela2 values ('Monitor','Philips','Branco',459,4,1836.00,'04/01/2021');
 insert into tabela2 values ('Placa de vídeo','Sound Forge',null,999.00,5,4995,'05/01/2021');
 insert into tabela2 values ('Mouse Pad',null,'Azul',15.00,6,90.00,'06/01/2021');

 select * from tabela2;


 -- TABELA 3 --

 create table tabela3(
 
 produto		varchar(10)		not null,
 cor			varchar(15)		null,
 tamanho		varchar(2)		null,
 preco			decimal(6,2)	not null,
 primary key(produto)

 );

insert into tabela3 values ('Camisa','Azul','GG',99.99);
insert into tabela3 values ('Calça','Preto','G',139.99);
insert into tabela3 values ('Saia','Vermelho','M',200.00);
insert into tabela3 values ('Boné',null,null,70.00);
insert into tabela3 values ('Cinto','Preto','P',27.00);
insert into tabela3 values ('Batom','Vermelho',null,9.99);

select * from tabela3;


-- TABELA 4 -- 

create table tabela4(

iduser			int				not null identity,
nome_completo	varchar(40)		not null,
nascimento		date			null,
celular			varchar(18)		null,
cpf				varchar(20)		null,
cep				varchar(10)		null,


);

insert into tabela4 values ('José João Ortigoza','20/10/1970','014 98877-6644','12345678-90','17120-000');
insert into tabela4 values ('Maria Mariana Santos',null,null,null,'01111-998');
insert into tabela4 values ('Antonio Tiburcio Silva','01/01/2000','014 3262-8890','987789789-11','32998-199');
insert into tabela4 values ('Jana Antonia','30/10/1999',null,'345678123-90',null);
insert into tabela4 values ('Durval da Silva',null,null,null,null);
insert into tabela4 values ('Durvalina das Dores','21/12/2020',null,'081666787-11','12345-123');

select * from tabela4;












 




 