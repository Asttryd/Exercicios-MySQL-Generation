CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classe bigint auto_increment,
nome_classe varchar(255) not null,
descricao_classe varchar(255) not null,
primary key (id_classe)
);

CREATE TABLE tb_personagens(
id_personagem bigint auto_increment,
nome_personagem varchar(255) not null,
classe_personagem bigint,
nivel_personagem int,
pontos_vida int,
primary key (id_personagem)
);

ALTER TABLE tb_personagens ADD CONSTRAINT fk_classe FOREIGN KEY (classe_personagem) REFERENCES tb_classes(id_classe);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes (nome_classe, descricao_classe)
VALUES ("Mago", "Usa de magias ofensivas e/ou defensivas para apoiar seu time."),
("Tanque", "Usa sua força e resistência física para proteger seu time."),
("Soldado", "Usa de força física/mágica para lutar com seu time."),
("Assassino", "Usa de furtividade para lutar com seu time."),
("Atirador", "Usa de sua mira e alcance para lutar com seu time.");

INSERT INTO tb_personagens (nome_personagem, classe_personagem, nivel_personagem, pontos_vida)
VALUES ("Merlinthar", 1, 10, 1000),
("Arcania", 1, 15, 1100),
("Lyrastra", 1, 30, 2500),
("Grimgar", 2, 15, 3000),
("Ironclad", 2, 20, 4000),
("Vanguard Rex", 3, 20, 3300),
("Shadowblade", 4, 30, 2500),
("Sniperia", 5, 22, 2100);

ALTER TABLE tb_personagens ADD COLUMN defesa bigint;
ALTER TABLE tb_personagens ADD COLUMN ataque bigint;

UPDATE tb_personagens SET defesa = 1000 WHERE id_personagem = 1;
UPDATE tb_personagens SET nome_personagem = "Caelumbris" WHERE id_personagem = 1;
UPDATE tb_personagens SET ataque = 3000 WHERE id_personagem = 1;
UPDATE tb_personagens SET defesa = 1100 WHERE id_personagem = 2;
UPDATE tb_personagens SET ataque = 3500 WHERE id_personagem = 2;
UPDATE tb_personagens SET defesa = 2000 WHERE id_personagem = 3;
UPDATE tb_personagens SET ataque = 4500 WHERE id_personagem = 3;
UPDATE tb_personagens SET defesa = 6000 WHERE id_personagem = 4;
UPDATE tb_personagens SET ataque = 2100 WHERE id_personagem = 4;
UPDATE tb_personagens SET defesa = 5000 WHERE id_personagem = 5;
UPDATE tb_personagens SET ataque = 1000 WHERE id_personagem = 5;
UPDATE tb_personagens SET defesa = 2000 WHERE id_personagem = 6;
UPDATE tb_personagens SET ataque = 4000 WHERE id_personagem = 6;
UPDATE tb_personagens SET defesa = 1000 WHERE id_personagem = 7;
UPDATE tb_personagens SET ataque = 7000 WHERE id_personagem = 7;
UPDATE tb_personagens SET defesa = 1500 WHERE id_personagem = 8;
UPDATE tb_personagens SET ataque = 5000 WHERE id_personagem = 8;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_personagem = tb_classes.id_classe;
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_personagem = tb_classes.id_classe WHERE classe_personagem = 1;