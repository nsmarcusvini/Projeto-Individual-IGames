create database igames;
use igames;

create table jogo(
   id_jogo  int primary key auto_increment,
   nome_jogo varchar(45) ,
   tipo_jogo varchar(45),
	preco_jogo float,
   dt_lancamento date
   );
create table usuario(
   id_usuario int primary key auto_increment,
   nome varchar(45) ,
   jogo_fav varchar(45) ,
   email   varchar(45),
   senha  varchar(8),
   fkjogo int,
   foreign key (fkjogo) references jogo(id_jogo)
   );

select id_usuario,"ID do usuário", nome as"Nome usuário", jogo_fav "Jogo favorito",
				email "Email do usuario",senha "Senha do usuário"
							from usuario;
