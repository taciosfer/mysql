-- 9º PASSO: CONFERINDO...
-- SELECT * FROM tb_produtos;

-- 8º PASSO: DELETE DE TODAS AS VERDURAS:
-- DELETE FROM tb_produtos WHERE tipo = "Verdura"; ~ SAFE UPDATE PRECISA ESTAR OFF!
-- SET SQL_SAFE_UPDATES = 0;

-- 7º PASSO: QUERY DE ATUALIZAÇÃO (DA QUANTIDADE DE ALFACE):
-- UPDATE tb_produtos SET estoqueun = 20 WHERE id = 2;

-- 6º PASSO: SELECT QUE RETORNA TODOS OS LEGUMES:
-- SELECT * FROM tb_produtos WHERE tipo = "Legume";

-- 5º PASSO: SELECT QUE RETORNA TODAS AS FRUTAS:
-- SELECT * FROM tb_produtos WHERE tipo = "Fruta";

-- 4º PASSO: INSERE DADOS; USEI 8X, TROCANDO OS VALUES; id NÃO ENTRA, É AUTO!
-- INSERT INTO tb_produtos(tipo,produto,preço,estoqueun) VALUES ("Verdura","Agrião",3.00,10);

-- 3º PASSO: CRIA "CABEÇALHO" DA TABELA:
/*
CREATE TABLE tb_produtos
	(
	id INT AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(10) NOT NULL,
	produto VARCHAR(25) NOT NULL,
    preço DECIMAL(4,2) NOT NULL,
    estoqueun INT NOT NULL,
    PRIMARY KEY (id)
	);
*/
-- 2º PASSO: USA BASE DE DADOS CRIADA:
-- USE db_quitandagen;

-- 1º PASSO: CRIA BASE DE DADOS:
-- CREATE DATABASE db_quitandagen;