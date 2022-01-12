CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE `tb_estudantes`(
`id` BIGINT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(100) NOT NULL,
`nascimento` DATE NOT NULL,
`serie` INT NOT NULL,
`media` DECIMAL NOT NULL,
PRIMARY KEY(id)
) default charset = utf8;

INSERT INTO tb_estudantes(nome, nascimento, serie, media) VALUES ("Deyky", "1996-07-03", 2, 10);
INSERT INTO tb_estudantes(nome, nascimento, serie, media) VALUES ("Mikael", "1996-07-03", 2, 7);
INSERT INTO tb_estudantes(nome, nascimento, serie, media) VALUES ("Warley", "1996-07-03", 2, 2);
INSERT INTO tb_estudantes(nome, nascimento, serie, media) VALUES ("Juneo", "1996-07-03", 2, 8);
INSERT INTO tb_estudantes(nome, nascimento, serie, media) VALUES ("Pedrinho", "1996-07-03", 2, 5);


SELECT * FROM tb_estudantes WHERE media > 7;
SELECT * FROM tb_estudantes WHERE media < 7;

UPDATE tb_estudantes SET nome = "Rafael" WHERE id=5;


SELECT * FROM tb_estudantes;
drop table tb_estudantes;