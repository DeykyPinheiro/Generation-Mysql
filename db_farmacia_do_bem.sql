create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table `tb_categoria`(
`id` bigint not null auto_increment,
`dose` enum('P','G') not null,
`nome` varchar(50),
primary key(id)
);

create table `tb_produto`(
`id_classe` bigint not null auto_increment,
`nome` varchar(20) not null,
`preco` decimal not null,
`gorjeta` decimal not null,
`desconto` boolean not null,
foreign key(id_classe) references tb_classe(id)
) default charset = utf8;

insert into tb_categoria(dose, nome) values('G', "ibuprofeno");
insert into tb_categoria(dose, nome) values('G', "dipirona");
insert into tb_categoria(dose, nome) values('P', "analgesico");

insert into tb_produto(nome, preco, gorjeta, desconto) values ("ibuprofeno",  50.12, 5.0, true);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("dipirona",  40.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("ibuprofeno",  45.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("dipirona",  12.12, 5.0, false);
insert into tb_produto(nome, preco, gorjeta, desconto) values ("analgesico",  35.12, 5.0, true);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;

select * from tb_categoria where nome LIKE 'c%';

select * from tb_produto a join tb_categoria b on  a.id_classe=b.id;

select * from tb_produto;
select * from tb_categoria;
drop database db_farmacia_do_bem;