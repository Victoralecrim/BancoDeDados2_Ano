create database Urna;
use	Urna;

create table partido(

id int primary key not null auto_increment,
nome varchar(80) not null,
sigla varchar(15) not null
);

create table Candidato (

id int primary key not null auto_increment,
nome varchar(80) not null,
endereco varchar(80) not null,
Partido_ID int not null,
foreign key (Partido_ID) references partido(id),
Cargo_ID int not null,
foreign key (Cargo_ID) references Cargo(id)
);

create table Cargo (

id int primary key not null auto_increment,
nome varchar(80) not null,
Descricao varchar(120) not null

);

create table Voto (

id int primary key not null auto_increment,
Dat date not null,
quantidade int not null,
Eleitor_ID int not null,
foreign key (Eleitor_ID) references  Eleitor(id),
Cargo_ID int not null,
foreign key (Cargo_ID) references Cargo(id)
);

create table Eleitor (

id int primary key not null auto_increment,
nome varchar(80) not null,
endereco varchar(80) not null

);

insert into Partido(id,nome,sigla) values 
(default, 'Cergio', 'CRG'),
(default, 'Creusa', 'CRS'),
(default, 'Clarencio', 'CLC');

insert into Candidato(id,nome,endereco) values 
(default, 'Cergio', 'rua1'),
(default, 'Creusa', 'rua2'),
(default, 'Clarencio', 'rua3');

insert into Cargo(id,nome,descricao) values 
(default, 'Cergio', 'texto1'),
(default, 'Creusa', 'texto2'),
(default, 'Clarencio', 'texto3');

insert into Voto(id,dat,quantidade) values 
(default, '1/10/20', '1'),
(default, '2/10/20', '1'),
(default, '3/10/20', '1');

insert into Eleitor(id, nome, endereco) values 
(default, 'Cergio', 'rua1'),
(default, 'Creusa', 'rua2'),
(default, 'Clarencio', 'rua3');

update Partido set sigla = 'SSS' where id = '1';
update Candidato set endereco = 'rua34' where id = '2';
update Cargo set descricao = 'texto34' where id = '3';
update voto set quantidade = '2' where id = '1';
update eleitor set endereco = 'rua_vig' where id = '1';

select sigla from Partido;
select endereco from candidato;
select descricao from Cargo;
select quantidade from voto;
select endereco from eleitor;

delete from Partido where id = 2;
delete from Candidato where id = 2;
delete from Cargo where id = 2;
delete from voto where id = 2;
delete from Candidato where id = 2;