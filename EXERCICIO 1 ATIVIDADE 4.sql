create database EquipamentosTI;
-- usar o banco 
use EquipamentosTI;

create table funcionarios(
 CPF int primary key not null auto_increment,
 NOME varchar(80) not null,
 ENDERECO varchar(80) not null,
 DT_NASC date 
);

insert into funcionarios(CPF, NOME, ENDERECO, DT_NASC) values('095187776', 'Ricardo', 'Rua dos Agronomos 999', '2000/06/11');
select * from funcionarios;

create table departamento(
cod_id int primary key not null auto_increment,
NOME_DEP varchar(45),
fk_funcionarios_cpf int not null,
foreign key (fk_funcionarios_cpf) references funcionarios (cpf)
);

insert into departamento(cod_id, NOME_DEP, fk_funcionarios_cpf) values(null, 'TI', '075896187');
select * from departamento;

create table equipamentos(
cod_id int not null primary key auto_increment,
nome_equipamento varchar(45),
data_compra date not null,
data_compra_fk int not null, 
foreign key (data_compra_fk) references departamento (cod_id)
);

insert into equipamentos (cod_id, nome_equipamento, data_compra, data_compra_fk) values(null,"Impressora","20220809","1");
select * from equipamentos;

create table manutencao(
id int not null primary key,
DT_INICIO date not null,
DT_FINAL date not null
);



