CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias
(
id SMALLINT AUTO_INCREMENT NOT NULL,
tipo ENUM('Fruta','Verdura') NOT NULL,
modo_compra ENUM('Unidade','Bandeja','Quilo') NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos
(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
fresco BOOLEAN NOT NULL,
valor DECIMAL(6,2) NOT NULL,
estoque SMALLINT NOT NULL,
produtos_id SMALLINT NOT NULL, -- ATENÇÃO: PRECISA TER MESMO TIPO DE DADOS DA PK!!!
PRIMARY KEY(id),
FOREIGN KEY(produtos_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,modo_compra) VALUES("Fruta","Unidade");
INSERT INTO tb_categorias(tipo,modo_compra) VALUES("Fruta","Bandeja");
INSERT INTO tb_categorias(tipo,modo_compra) VALUES("Fruta","Quilo");
INSERT INTO tb_categorias(tipo,modo_compra) VALUES("Verdura","Unidade");
INSERT INTO tb_categorias(tipo,modo_compra) VALUES("Verdura","Quilo");

INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Graviola",true,15.00,20,1);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Cacau",true,10.00,30,1);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Caju",false,20.00,15,2);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Cupuaçu",false,25.00,10,1);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Laranja",false,5.00,40,3);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Mix Folhas Claras",true,40.00,5,5);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Mix Folhas e Vegetais",true,50.00,5,5);
INSERT INTO tb_produtos(nome,fresco,valor,estoque,produtos_id) VALUES("Verduras",true,4.00,25,4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_categorias;

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.id = tb_produtos.produtos_id;

SELECT * FROM tb_categorias INNER JOIN tb_produtos WHERE tipo = "Fruta";