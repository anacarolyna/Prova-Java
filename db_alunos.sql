create database db_alunos;

use db_alunos;

create table Alunos (
id int auto_increment,
nome varchar (255),
valor int,

primary key (id)
);

 create table Notas (
 id_nota int auto_increment,
 nota int,
 valor_min int,
 valor_max int,
 
 fk_notas int,
 primary key (id_nota),
 foreign key (fk_notas) references Alunos(id)
 );
 
 -- Alunos -- 
 insert into Alunos (nome, valor)
 values ("Julia",81);
 
insert into Alunos (nome, valor)
values (null,99);
 
insert into Alunos (nome, valor)
values ("Andreia",78);
 
insert into Alunos (nome, valor)
values ("Jaqueline",63);
 
 insert into Alunos (nome, valor)
values (null,88);

insert into Alunos (nome, valor)
values (null,91);

insert into Alunos (nome, valor)
values (null,63);

insert into Alunos (nome, valor)
values (null,63);

insert into Alunos (nome, valor)
values (null,63);

insert into Alunos (nome, valor)
values (null,63);

 -- Notas --
insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (1,0,9, 6);
 
 insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (2,10,19, 2);
 
insert into Notas (nota, valor_min,valor_max, fk_notas)
values (3,20,29, 7);

 insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (4,30,39, 8);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (5,40,49, 9);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (6,50,59, 5);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (7,60,69, 10);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (8,70,79, 4);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (9,80,89, 3);
 
  insert into Notas (nota, valor_min,valor_max, fk_notas)
 values (10,90,100, 1);
 
 -- CONSULTA --
-- select Alunos.id,Alunos.nome, Alunos.valor, Notas.nota from Alunos, Notas where nota > 8 order by nome asc;
-- select Alunos.nome, Alunos.valor, Notas.nota from Alunos, Notas where nota < 8 order by nota desc;
select Alunos.nome, Alunos.valor, Notas.nota from Alunos inner join Notas on fk_notas = id where nota >= 8 order by nota desc;
select Alunos.nome, Alunos.valor, Notas.nota from Alunos inner join Notas on fk_notas = id where nota < 8 order by nota desc;
