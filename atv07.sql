CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias
(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo ENUM('Salgada','Doce') NOT NULL,
tamanho ENUM('Brotinho','Convencional','Grande','Família') NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas
(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
borda BOOLEAN NOT NULL,
valor DECIMAL(5,2) NOT NULL,
tempo_preparo_min SMALLINT NOT NULL,
categorias_id BIGINT NOT NULL, -- MUITA ATENÇÃO: PRECISA TER MESMO TIPO DE DADOS DA PK!!!
PRIMARY KEY(id),
FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Convencional");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Grande");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Salgada","Família");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Doce","Brotinho");
INSERT INTO tb_categorias(tipo,tamanho) VALUES("Doce","Convencional");

INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Margheritta",false,40.00,3,3);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Shitake",false,110.00,10,1);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Tofu",true,60.00,6,2);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Búfala",false,90.00,4,3);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Palmito",true,75.00,7,2);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("3 Queijos",true,35.00,5,3);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Banana, Canela e Mel",false,15.00,2,4);
INSERT INTO tb_pizzas(nome,borda,valor,tempo_preparo_min,categorias_id) VALUES("Romeu e Julieta",True,25.00,8,5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT * FROM tb_categorias;

SELECT * FROM tb_categorias INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.categorias_id;

SELECT * FROM tb_categorias INNER JOIN tb_pizzas WHERE tipo = "Doce";