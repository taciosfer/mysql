-- 7º PASSO: QUERY DE ATUALIZAÇÃO DE SALÁRIO:
-- UPDATE tb_colaboradores SET salario = 1999.99 WHERE id = 20220523214001;

-- 6º PASSO: SELECT QUE RETORNE COLABS COM SALÁRIOS MENORES QUE 2000:
-- SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- 5º PASSO: SELECT QUE RETORNE COLABS COM SALÁRIOS MAIORES QUE 2000:
-- SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- 4º PASSO: USEI A LINHA ABAIXO 5X, ALTERANDO SOMENTE OS VALUES:
-- INSERT INTO tb_colaboradores (id, nome, idade, cargo, salario) VALUES (20220523214605, "Eulana", 25, "Proprietária", 4500.00);

/* 3º PASSO!
CREATE TABLE tb_colaboradores (
	id BIGINT AUTO_INCREMENT NOT NULL, ~ PERCEBI SÓ NO FINAL DO EXERCÍCIO QUE NÃO USEI O AUTO!!!
    nome VARCHAR(255) NOT NULL,
    idade BIGINT NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (id)
    );
*/
-- 2º PASSO!
-- USE db_recursoshumanos;

-- 1º PASSO!
-- CREATE DATABASE db_recursoshumanos;