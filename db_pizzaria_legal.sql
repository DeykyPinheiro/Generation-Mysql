create database db_pizzaria_legal;

use db_pizzaria_legal;

create table `tb_pizza`(
`id` bigint not null auto_increment,
`tamanho` enum('P','G') not null,
`tipo` varchar(50),
primary key(id)
);

create table `tb_categoria`(
`id_classe` bigint not null auto_increment,
`nome` varchar(20) not null,
`preco` decimal not null,
`gorjeta` decimal not null,
`borda_recheada` boolean not null,
foreign key(id_classe) references tb_classe(id)
) default charset = utf8;

insert into tb_pizza(tamanho, tipo) values('G', "Salgada");
insert into tb_pizza(tamanho, tipo) values('G', "Doce");
insert into tb_pizza(tamanho, tipo) values('P', "Salgada");

insert into tb_categoria(nome, preco, gorjeta, borda_recheada) values ("calabresa",  50.12, 5.0, true);
insert into tb_categoria(nome, preco, gorjeta, borda_recheada) values ("mussarela",  50.12, 5.0, false);
insert into tb_categoria(nome, preco, gorjeta, borda_recheada) values ("chocolate",  50.12, 5.0, false);
insert into tb_categoria(nome, preco, gorjeta, borda_recheada) values ("calabresa",  50.12, 5.0, false);
insert into tb_categoria(nome, preco, gorjeta, borda_recheada) values ("calabresa",  50.12, 5.0, true);

select * from tb_categoria where preco > 45;
select * from tb_categoria where preco between 29 and 60;

select * from tb_categoria where nome LIKE 'c%';

select * from tb_personagem a join tb_classe b on  a.id_classe=b.id;

select * from tb_pizza;
select * from tb_categoria;
drop database db_pizzaria_legal;