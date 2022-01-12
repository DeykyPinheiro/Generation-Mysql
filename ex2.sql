CREATE DATABASE db_ecomerce;


USE db_ecomerce;

CREATE TABLE `tb_produtos`(
`id` BIGINT NOT NULL AUTO_INCREMENT,
`produto` VARCHAR(100) NOT NULL,
`marca` VARCHAR(100) NOT NULL,
`tamanho` ENUM('P', 'M', 'G') NOT NULL,
`preco` DECIMAL NOT NULL,
PRIMARY KEY(id)
) default charset = utf8;

INSERT INTO tb_produtos(produto, marca, tamanho, preco) VALUES ("tenis", "nike", "P" , 350.00);
INSERT INTO tb_produtos(produto, marca, tamanho, preco) VALUES ("casaco", "nike", 'M' , 50.00);
INSERT INTO tb_produtos(produto, marca, tamanho, preco) VALUES ("calca", "gangstar", 'G' , 30.00);
INSERT INTO tb_produtos(produto, marca, tamanho, preco) VALUES ("tenis", "adidas", 'G' , 350.00);
INSERT INTO tb_produtos(produto, marca, tamanho, preco) VALUES ("meia", "calvin klein", 'M' , 25.00);

UPDATE tb_produtos SET preco = 15500 WHERE id=2 ;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

SELECT * FROM tb_produtos;
drop table tb_produtos;