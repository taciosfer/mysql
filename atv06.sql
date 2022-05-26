CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes
(
id BIGINT AUTO_INCREMENT NOT NULL,
perfil VARCHAR(255) NOT NULL,
gênero VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens
(
id BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR(255) NOT NULL,
capvoar BOOLEAN NOT NULL,
ataque BIGINT,
defesa BIGINT,
personagem_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(personagem_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(perfil,gênero) VALUES("Gladiadores","Masculino");
INSERT INTO tb_classes(perfil,gênero) VALUES("Arqueiros","Feminino");
INSERT INTO tb_classes(perfil,gênero) VALUES("Gladiadores","Feminino");
INSERT INTO tb_classes(perfil,gênero) VALUES("Arqueiros","Masculino");
INSERT INTO tb_classes(perfil,gênero) VALUES("Magos","Feminino");

INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Zeckson",true,2500,1500,1);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Jackson",false,1500,2500,2);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Jefeson",true,1250,2750,3);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Wiltson",true,1750,2250,4);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Zaneson",false,3000,1000,5);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Julison",false,750,3250,1);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Jameson",true,250,3750,2);
INSERT INTO tb_personagens(nome,capvoar,ataque,defesa,personagem_id) VALUES("Walyson",false,500,3500,3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_classes INNER JOIN tb_personagens;

SELECT * FROM tb_classes INNER JOIN tb_personagens WHERE perfil = "Arqueiros";