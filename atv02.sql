-- 8º PASSO: CONFERINDO...
-- SELECT * FROM tb_produtos;

-- 7º PASSO: QUERY DE ATUALIZAÇÃO DE PREÇO:
-- UPDATE tb_produtos SET preço = 3.00 WHERE id = 2;

-- 6º PASSO: SELECT QUE RETORNE PRODUTOS COM VALOR MENOR QUE 500:
-- SELECT * FROM tb_produtos WHERE preço < 500;

-- 5º PASSO: SELECT QUE RETORNE PRODUTOS COM VALOR MAIOR QUE 500:
-- SELECT * FROM tb_produtos WHERE preço > 500;

-- 4º PASSO: INSERE DADOS; USEI 8X, TROCANDO OS VALUES; LEMBRAR QUE id É AUTO!
-- INSERT INTO tb_produtos (nome, marca, preço, quantidade) VALUES ("Calcinha", "Vitória Sigreds", 9.00, 150);

-- 3º PASSO: CRIA TABELA (CABEÇALHO):
/*
CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    preço DECIMAL (3,2) NOT NULL,
    quantidade BIGINT NOT NULL,
    PRIMARY KEY (id)
    );
*/
-- 2º PASSO: USA BASE DE DADOS:
-- USE db_ecommerce;

-- 1º PASSO: CRIA BASE DE DADOS:
-- CREATE DATABASE db_ecommerce;