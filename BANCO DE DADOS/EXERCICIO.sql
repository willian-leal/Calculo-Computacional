create database Atleta;
use atleta;
create table atleta(
IdAtleta int auto_increment  primary key,
Nome varchar (40) not null,
Modalidade varchar (40),
QtdMedalha int 
);

insert into atleta values
(1,'Cristiano Ronaldo dos Santos Aveiro', 'Futebol', 31),
(2,'Lionel Andrés Messi Cuccittini', 'Futebol', 36),
(3,'LeBron Raymone James', 'Basquete', 3),
(4,'Michael Fred Phelps II', 'Natação', 28),
(5,'Kobe Bean Bryant', 'Basquete', 7),
(6,'César Augusto Cielo Filho', 'Natação', 18);

select * from atleta;
select Nome, QtdMedalha from atleta;
select * from atleta where modalidade ='Natação';
select * from atleta order by modalidade;
select * from atleta order by QtdMedalha desc;
select * from atleta where nome like '$s%';
select * from atleta where nome like 'l%';
select * from atleta where nome like '%o';
select * from atleta where nome like '%r_';
update atleta set QtdMedalha = '10' where IdAtleta = 3;
select * from atleta;
update atleta set Modalidade = 'Atletismo' where IdAtleta = 6;
select * from atleta;
delete from atleta where IdAtleta = 5;
select * from atleta;














