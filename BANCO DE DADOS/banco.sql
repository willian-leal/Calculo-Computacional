-- Cria o banco de dados aluno
create database aluno;

-- Seleciona o banco de dados aluno
use aluno;

-- Cria a tabela Aluno
create table Aluno (
  ra int primary key,  -- ra é a chave primária da tabela Aluno
  nome varchar(50),
  bairro varchar(40)
);

-- Exibir os dados da tabela Aluno
select * from Aluno;

-- Exibir a descrição da tabela Aluno
desc Aluno;
describe Aluno;  -- describe e desc são o mesmo comando

-- Inserir os dados de um aluno
insert into Aluno values
   (2201063, 'Luidgi Campos', 'Cerâmica');

-- Inserir dados de mais alunos
insert into Aluno values
   (2201014, 'Felipe Azevedo', 'Brooklin'),
   (2201037, 'Gabriel Rocha', 'Jd São Carlos'),
   (2201051, 'Thiago Yuiti', 'Oswaldo Cruz'),
   (2201043, 'Jennifer Silva', 'Jd Tereza');

-- Exibir apenas o ra e nome dos alunos
select ra, nome from Aluno;

-- Exibir apenas o ra dos alunos   
select ra from Aluno;

-- Exibir o nome e o ra dos alunos  
select nome, ra from Aluno;

-- Exibir o bairro, o nome e o RA dos alunos
select bairro, nome, ra from Aluno; 

-- Excluir a tabela Aluno
drop table Aluno;

-- Excluir o banco de dados aluno
drop database aluno;
-- selecionar bairro igual a  
select * from aluno where bairro = 'Oswaldo Cruz';

-- selecionar bairro diferende 
select * from aluno where bairro <> 'Oswaldo Cruz';

-- selecionar bairro diferende 
select * from aluno where bairro != 'Oswaldo Cruz';

 -- selecionar dois campos de uma tebela
select ra, nome from aluno;

-- selecionar ra dos alunos entre dois numeros
select * from aluno where ra between 2201043 and 2201063;

-- selecionar ra dos alunos entre dois numeros 
select * from aluno where ra >= 2201043 and ra <= 2201063;

-- selecionar bairros que começam com as letras jd
select * from aluno where bairro like 'Jd%';

-- selecionar bairros que terminam com a letra a
select * from aluno where bairro like '%a';

-- selecionar bairros que contenham a letra a
select * from aluno where bairro like '%a%';

-- selecionar bairros que terminam com a letra s
select * from aluno where bairro like '%s';

-- selecionar nomes que tenha o sobrenome silva
select * from aluno where nome like '%silva%';

-- exibir os dados dos alunos cujo nome tenha a letra 'e' como a segunda letra
select * from aluno where nome like '_e%';

select * from aluno where bairro like '%l__';

-- exibir nomes dos alunos ordenadamente
select * from aluno order by nome;
select * from aluno order by bairro;
select * from aluno order by bairro asc;
select * from aluno order by bairro desc;

-- alterar algo na tabela, where somente a chave primaria
update aluno set bairro = 'Cerqueira César' where ra = 2201043;

-- alterar o bairro e o nome do aluno de ra = 2201014
update aluno set bairro = 'Paraíso', nome = 'Felipe Diaz Azevedo' where ra = 2201014;














  