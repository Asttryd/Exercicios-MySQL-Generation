CREATE DATABASE db_registro_escola;

USE db_registro_escola;

CREATE TABLE tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
periodo varchar(255) not null,
idade varchar(255) not null,
nota_mediaFinal decimal(4,2) not null,
passou_de_ano boolean not null,
primary key (id)
);

SELECT * FROM tb_alunos;

ALTER TABLE tb_alunos RENAME COLUMN periodo TO turma;

INSERT INTO tb_alunos (nome, turma, idade, nota_mediaFinal, passou_de_ano)
VALUES ("Beatriz", "Ensino médio - 2A", 16, 7.50, 1),
("Antônio", "Ensino fundamental II - 6B", 11, 10.00, 1),
("Cínthia", "Ensino médio - 3C", 17, 8.40, 1),
("Marcos", "Ensino médio - 3A", 18, 4.00, 0),
("Brisa", "Ensino fundamental I - 2D", 7, 10.00, 1),
("Viviane", "Ensino fundamental II - 6A", 12, 6.00, 1),
("Enzo", "Ensino médio - 1A", 14, 4.50, 0),
("Marcelo", "Ensino médio - 3B", 18, 2.00, 0);

SELECT * FROM tb_alunos WHERE nota_mediaFinal > 7.00;
SELECT * FROM tb_alunos WHERE nota_mediaFinal < 7.00;

UPDATE tb_alunos SET passou_de_ano = 0 WHERE id = 6;