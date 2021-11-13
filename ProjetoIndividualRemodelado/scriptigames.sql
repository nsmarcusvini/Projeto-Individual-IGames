create database igames;
use igames;

create table usuario(
   id_usuario int primary key auto_increment,
   nome varchar(45),
   idade varchar(45),
   email   varchar(45),
   senha  varchar(8)
   );



create table genero(
   id_genero int primary key auto_increment ,
   nome_genero varchar(45)
);

create table jogo(
   id_jogo  int primary key auto_increment,
   nome_jogo varchar(45) ,
   fkgenero int,
   id_marca  int,
   vl_preco float,
   classificao_etaria int,
   dt_lancamento date,
   foreign key (fkgenero) references genero (id_genero)
   );
select *from usuario;