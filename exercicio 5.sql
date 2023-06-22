create database floricultura;
-- usando o banco 
use floricultura;



create table funcionarios(
 CPF int primary key not null auto_increment,
 NOME varchar(80) not null,
 ENDERECO varchar(80) not null,
 DT_NASC date 
);

-- inserindo dados na tabela
insert into funcionarios(CPF, NOME, ENDERECO, DT_NASC) values('098186777', 'Pedro', 'Rua dos castanheiros 999', '2003/06/12');
insert into funcionarios(CPF, NOME, ENDERECO, DT_NASC) values('095187776', 'Ricardo', 'Rua dos Agronomos 999', '2000/06/11');
insert into funcionarios(CPF, NOME, ENDERECO, DT_NASC) values('058107746', 'Carlos', 'Rua da padaria 999', '2002/09/9');
select * from funcionarios;

-- excluindo algum dado da tabela 

delete from funcionarios where CPF = '098186777';

-- atualizando os dados da tabela 

update funcionarios set ENDERECO = 'Rua do passaro preto 999' where cpf = '058107746';

-- criando a tabela de clientes 

create table clientes(
cod int not null primary key auto_increment,
nome varchar(80) not null,
endereco varchar(80) not null,
telefone int
);

-- inserindo dados na tabela 

insert into clientes(cod,nome,endereco,telefone) values (default,'Carlos', 'Rua Abobrinha 899', '99999999');
insert into clientes(cod,nome,endereco,telefone) values (default,'Pedro', 'Rua da Batatinha 799', '89999899');
insert into clientes(cod,nome,endereco,telefone) values (default,'Ricardo', 'Rua dos Agronomos 699', '79998999');

-- selecionando os dados da tabela
select * from clientes;

-- excluindo um dado da tabela 

delete from clientes where cod = 1;

-- atualizando um dado da tabela 

update clientes set endereco = 'Rua dos culhanbados 799' where cod = 3; 


create table produtos(
cod_id int not null primary key auto_increment,
data_compra date not null,
data_devolucao date not null
);

-- inserindo dados na tabela 

insert into produtos(cod_id, data_compra, data_devolucao) values (default, '2000/07/8','2000/10/8' );
insert into produtos(cod_id, data_compra, data_devolucao) values (default, '2002/07/9', '2002/11/9');
insert into produtos(cod_id, data_compra, data_devolucao) values (default, '2004/07/10', '2004/10/11');

-- selecionando os dados da tabela

select * from produtos;

-- excluindo os dados da tabela 

delete from produtos where cod_id = 1;

-- atualizando os dados da tabela 

update produtos set data_compra = '2004/07/10' where cod_id = 3;





