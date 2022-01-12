CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE `tb_funcionarios`(
`id` BIGINT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`nascimento` DATE NOT NULL,
`salario` DECIMAL NOT NULL,
`cargo` VARCHAR(30),
PRIMARY KEY(id)
) default charset = utf8;

INSERT INTO tb_funcionarios(nome, nascimento, salario, cargo) VALUES ("Deyky", "1996-07-03", 20000.00, "Dev Pleno");
INSERT INTO tb_funcionarios(nome, nascimento, salario, cargo) VALUES ("Mikael", "1996-07-03", 12000.00, "Dev Pleno");
INSERT INTO tb_funcionarios(nome, nascimento, salario, cargo) VALUES ("Jose", "1996-07-03", 1800.00, "Dev Pleno");
INSERT INTO tb_funcionarios(nome, nascimento, salario, cargo) VALUES ("Anita", "1996-07-03", 18000.00, "Dev Pleno");
INSERT INTO tb_funcionarios(nome, nascimento, salario, cargo) VALUES ("Helena", "1996-07-03", 18000.00, "Dev Pleno");


SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET cargo = "Adm DBA" WHERE id=2 ;

SELECT * FROM tb_funcionarios;
drop table tb_funcionarios;