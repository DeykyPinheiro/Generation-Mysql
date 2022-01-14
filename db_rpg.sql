create database db_generation_game_online;

use db_generation_game_online;

create table `tb_classe`(
`id` bigint not null auto_increment,
`level` int not null,
`classe` varchar(50),
primary key(id)
);

create table `tb_personagem`(
`id_classe` bigint not null auto_increment,
`nome` varchar(20) not null,
`ataque` decimal not null,
`defesa` decimal not null,
`estamina` decimal not null,
foreign key(id_classe) references tb_classe(id)
) default charset = utf8;

insert into tb_classe(level, classe) values(7, "guerreiro");
insert into tb_classe(level, classe) values(10, "arqueiro");
insert into tb_classe(level, classe) values(18, "mago");

insert into tb_personagem(nome, ataque, defesa, estamina) values ("carlao",  2500, 1300, 100);
insert into tb_personagem(nome, ataque, defesa, estamina) values ("jorge",  100, 1100, 100);
insert into tb_personagem(nome, ataque, defesa, estamina) values ("valclecia",  500, 300, 100);
insert into tb_personagem(nome, ataque, defesa, estamina) values ("anfora",  500, 15000, 100);
insert into tb_personagem(nome, ataque, defesa, estamina) values ("galao",  500, 5300, 100);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome LIKE 'c%';

select * from tb_personagem a join tb_classe b on  a.id_classe=b.id;

select * from tb_personagem;
select * from tb_classe;
drop database db_generation_game_online;