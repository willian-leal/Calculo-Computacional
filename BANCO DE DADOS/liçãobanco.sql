create database alunos;
use alunos;
create table Aluno(
ra int auto_increment primary key,
nome varchar (50) not null,
telefone varchar (50) not null,
email varchar (50) not null,
id_insti int not null,
id_empresa int not null,
hobby varchar (50) not null,
FOREIGN KEY (id_insti) REFERENCES instituição(id_insti),
FOREIGN KEY (id_empresa) REFERENCES empresas(id_empresa)
);
drop table aluno;

create table instituição(
id_insti int auto_increment primary key,
nome varchar (50) not null,
endereco varchar (50) not null
);

create table empresas(
id_empresa int auto_increment primary key,
nome varchar (50) not null,
representante varchar (50) not null
);
insert into aluno values 
(2201026, 'Willian Leal de Oliveira', 11958738803, 'willian.oliveira@bandtec.com.br', 'ETEC Heliópolis','jogar bola'),
(2201027, 'Gabriel Marcolino da Silva', 1195873777, 'gabriel.marcolinoa@bandtec.com.br', 'ETEC Heliópolis','dormir'),
(2201028, 'ygor Santos', 11958743423, 'ygor.santos@bandtec.com.br', 'ETEC Heliópolis','comer');

select * from aluno;






