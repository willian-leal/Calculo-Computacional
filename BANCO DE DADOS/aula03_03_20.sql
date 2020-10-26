create database Filme;
use filme;

create table Filme(
	idFilme int primary key,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

insert into Filme values(1, 'Avatar', 'Ficção', 'James Cameron');

select * from Filme;

insert into Filme(idFilme, titulo) values 
	(2, 'Os incríveis'),
	(3, 'Os incríveis'),
	(4, 'Os incríveis');
    
insert into Filme(titulo, idFilme) values
	('Cidade de Deus', 5),
	('Tropa de Elite', 6),
	('Tropa de Elite 2', 7),
	('Schrek', 8);
    
update Filme set titulo = 'Procurando nemo' where idFilme = 2;
update Filme set titulo = 'Schrek 2' where idFilme = 3;
update Filme set genero = 'Animação' where idFilme in(2, 3, 4, 8);
update Filme set genero = 'Animação', diretor = 'José Padilha' where idFilme in(6, 7);
update Filme set diretor = 'Andrew Adamson' where idFilme = 3 or idFilme = 8;
update Filme set genero = 'Ação' where idFilme in(5, 6, 7);
update Filme set diretor = 'James Cameron' where idFilme in(2, 4);
update Filme set diretor = 'Carlos de Deus' where idFilme = 5;

-- alterar estrutura da tabela --
alter table Filme modify genero varchar(30);
alter table Filme modify column genero varchar(30);

-- acrescentar a coluna ano na tabela Filme --
alter table Filme add ano int;
alter table Filme add column ano int;

-- excluir a coluna ano --
alter table Filme drop ano;
alter table Filme drop column ano;

-- alterar o nome da tabela --
alter table Filme rename column titulo to nomeFilme;
alter table filme change titulo nomeFilme varchar(50);

create table Pessoa(
idPessoa int primary key auto_increment,
nome varchar(50),
dataNasc date
)auto_increment = 100;
-- se quiser alterar o valor inicial do auto_increment
alter table pessoa auto_increment = 1;
insert into pessoa values (null, 'Maria', '2002-01-20'),
						  (null, 'Maria', '2002-01-20');
select * from pessoa;
insert into pessoa (nome, dataNasc) values 
('Pedro', '2003-10-12'), ('Vicente', '2001-02-27');
select * from pessoa;
delete from pessoa where idPessoa = 2;
insert into pessoa values (null, 'José', '1990-01-20');
insert into pessoa (nome, dataNasc) value ('Mickey', '1950-10-05');
insert into pessoa values (13, 'Minnie', '1955-05-02');
insert into pessoa values (null, 'Donald', '1957-06-03');
insert into pessoa values (7, 'Pluto', '1957-06-03');
insert into pessoa values (null, 'Pateta', '1957-06-03');



