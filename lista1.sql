--	EXERCICIO 1 --
create database fib2022;
use fib2022;

-- EXERCICIO 2 --
create table agenda(

nome			varchar(40) not null,
fone			varchar(20),
endrc			varchar(40),
bairro			varchar(20),
cidade			varchar(20),

primary key(nome)

);

insert into agenda values
('Guilherme','99883-2597','Alameda Alados','Vila Dutra', 'Bauru' );

insert into agenda values
('Tafarel','99775-9857','Bela Vista','Vila Santa', 'Jau' );

insert into agenda values
('Rubens','99451-1089','Rua Servio Tulio','Parque Alba', 'Duartina' );

select * from agenda;


-- EXERCICIO 3 --
create table cadast(

codcli		int		identity not null,
nome		varchar(40) not null,
sexo		varchar(1),
nascimento	datetime null,
cpf			varchar(20),
fone		varchar(20),
email		varchar(30),
primary key(codcli)

);

insert into cadast values('Gabriel','M','14/05/2005','32240277742','14997756521','gabb@hotmail.com');
insert into cadast values('Giovana','F','22/10/2002','45415236578','21988535121','giovann@hotmail.com');
insert into cadast values('Lucas','M','18/07/2002','45435269893','14994528136','lucass.n@hotmail.com');

select * from cadast;


-- EXERCICIO 4 --

create table registro(

iduser		int		not null identity,
nome		varchar(40)		not null,
sobrenome	varchar(40)		not null,
usuario		varchar(40)		not null,

);

insert into registro values('Guilherme','Martin','gmartin');
insert into registro values('Luca','Santos','lcsantos');
insert into registro values('Bruna','Batista','brunab');


select * from registro;

-- EXERCICIO 5 -- 

create table alunossc(

nome		varchar(40)		not null,
nascimento	datetime		null,
endereco	varchar(40)		not null,
fone		varchar(20)		not null,
cargo		varchar(30)		not null,
localtrab	varchar(30)		not null,
tempoexpe	decimal(3,1)	not null, -- em anos
formacao	varchar(20)		not null, -- formação considerado como: mestrado, dourado e etc...
curso		varchar(25)		not null,
anocursado	int,


);

insert into alunossc values('Guilherme','17/07/2002','Ezequiel Mendonca','14998832597','Analista','Paschoalotto','6 ','bacharel','Ciencia da computacao','2');
insert into alunossc values('Paulo','13/08/1978','Pablo Figueira','14994552877','Coordenador','Sao Francisco','8','licenciatura','Pedagogia','4');
insert into alunossc values('Luciana','21/11/2001','Rua Andrada','169987554112','Analista I','Paschoalotto','2.5','bacharel','Administracao','1');

select * from alunossc;

-- EXERCICIO 6 --

create table produtos(

idprod			int				not null identity,
prod			varchar(30)		not null,
preco			decimal(4,2)	not null,
categoria		varchar(30)		not null,
validade		datetime		not null,
fornecedor		varchar(30)		null,
primary key(idprod)

);

insert into produtos values('Sabonete','2.50','Produtos de higiene','21/11/2024','Palmolive');
insert into produtos values('Condicionador','14.75','Cosmetico','11/03/2023','Dove');
insert into produtos values('Danone','8.35','Laticinios','10/08/2022','Fruit');

select * from produtos;