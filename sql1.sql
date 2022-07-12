create database aula12;

use aula12;

create table proprietario(

idpro int not null,
nome varchar(40) not null,
tel varchar(20) not null,
primary key(idpro)

);

insert into proprietario values (1, 'Guilherme Martin', '14 998832597');
insert into proprietario values (2, 'Mathues Inacio','14 40028922');
insert into proprietario values (3, 'Luiz Brito','14 991411234');

create table imovel(

idimovel int not null,
endereco varchar(40) not null,
preco decimal(8,2) not null,
primary key(idimovel)

);

insert into imovel values (1, 'Casa das flores', 215.500);
insert into imovel values (2, 'Apartamento dos andares', 300.000);
insert into imovel values (3, 'Casa - Se for talvez volta', 150.000);

create table corretor(

idct int not null,
nomect varchar(40) not null,
cpf varchar(20) not null,
primary key(idct)

);

insert into corretor values (1, 'Rodrigo Zulim', '26614455448');
insert into corretor values (2, 'Eric Garmes', '14475125510');
insert into corretor values (3, 'Julio Costa', '25514449842');

create table inquilino(

idinq int not null,
nomeinq varchar(40) not null,
cpf varchar(20) not null,
primary key(idinq)

);

insert into inquilino values (1, 'Josevaldo Martins', '15520899345');
insert into inquilino values (2, 'Noku Tomavara', '24156218993');
insert into inquilino values (3, 'Wilian Yamaha', '20214599842');

create table aluguel(

idaluguel	int not null,
idpro		int not null,
idimovel	int not null,
idct		int not null,
idinq		int not null,

primary key(idaluguel),
foreign key(idpro) references proprietario(idpro),
foreign key(idimovel) references imovel(idimovel),
foreign key(idct) references corretor(idct),
foreign key(idinq) references inquilino(idinq),


);

insert into aluguel values (1,2,3,1,1);


select prp.nome, im.preco, ct.nomect, inq.nomeinq
from aluguel inner join proprietario prp on prp.idpro = aluguel.idpro
			 inner join imovel im on im.idimovel = aluguel.idimovel
			 inner join corretor ct on ct.idct = aluguel.idct
			 inner join inquilino inq on inq.idinq = aluguel.idinq 


--------------------------- TABELA 2 ---------------------------
create table funcionario(

id_funci int not null,
nome	 varchar(30) not null,
primary key(id_funci)

);

insert into funcionario values (1,'Pocabacana Silva');
insert into funcionario values (2,'Luizin Perera');
insert into funcionario values (3,'Andre Delirius');

create table ambulancia(

id_ambu int not null,
tipo	varchar(20) not null,
primary key(id_ambu)

);

insert into ambulancia values (1,'SABU');
insert into ambulancia values (2,'SF');
insert into ambulancia values (3, 'UPA');

create table equipe(

id_eq	int not null,
nomeequi varchar(30) not null,
id_ambu int not null,
primary key(id_eq),
foreign key(id_ambu) references ambulancia(id_ambu)

);

insert into equipe values (1,'ALFA',1)
insert into equipe values (2,'AGUIAS',2)
insert into equipe values (3,'NUGGETS',2)

create table coordenadas(

id_coor		int not null,
latitude	varchar(20) not null,
longitude	varchar(20) not null
primary key(id_coor)

);

insert into coordenadas values (1,'40.759372','-111.900795');
insert into coordenadas values (2,'51.856741','-552.881474');
insert into coordenadas values (3,'12.546841','-325.147841');

create table chamado(

id_chamado	int not null,
id_funci	int not null,
solicitante	varchar(30) not null,
id_eq		int not null,
id_coor		int not null,
primary key(id_chamado),
foreign key(id_funci) references funcionario(id_funci),
foreign key(id_eq) references equipe(id_eq),
foreign key(id_coor) references coordenadas(id_coor),

);

insert into chamado values (413, 1, 'Mikael',3,1)
insert into chamado values (415, 2, 'Lucia Deles',1,2)
insert into chamado values (414, 1, 'Lucas',1,3)

select fc.nome, amb.tipo, eq.nomeequi
from chamado inner join funcionario fc on fc.nome = chamado.id_funci
			 inner join ambulancia amb on amb.tipo = chamado.id_ambu
			 inner join equipe eq on eq.nomeequi = chamado.id_eq



--------------------------- TABELA 3 ---------------------------
create table alunos(

matricula	int	not null,
nome		varchar(40) not null,

primary key(matricula)

);

insert into alunos values (101, 'Ana');
insert into alunos values (102, 'Alessandra');
insert into alunos values (103, 'Adriana');
insert into alunos values (104, 'Luisa');
insert into alunos values (105, 'Rodrigo');

create table materia(

idm	int not null,
nome	varchar(20) not null,

primary key(idm)

);

insert into materia values (1, 'Português');
insert into materia values (2, 'Inglês');
insert into materia values (3, 'História');
insert into materia values (4, 'Geografia');
insert into materia values (5, 'Biologia');


create table curso(

matricula		int not null,
idm				int not null,
note			decimal(2,1) not null,

foreign key(matricula) references alunos(matricula),
foreign key(idm) references materia(idm)
);

insert into curso values (101, 1, 7);
insert into curso values (101, 2, 7.2);
insert into curso values (102, 1, 8);
insert into curso values (102, 3, 7.5);
insert into curso values (102, 4, 9.3);
insert into curso values (103, 1, 9.1);
insert into curso values (103, 2, 8.7);
insert into curso values (103, 3, 8.1);
insert into curso values (103, 4, 7.5);
insert into curso values (105, 2, 7.7);

select al.nome, mt.nome, cr.note
from curso	 inner join alunos al on al.matricula = curso.matricula
			 inner join materia mt on mt.nome = curso.idm
			 inner join curso cr on cr.note = curso.note

