CREATE DATABASE db_empresa_rh;

USE db_empresa_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
idade int(3) not null,
cargo varchar(255) not null,
salario decimal (6,2) not null,
primary key (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, idade, cargo, salario)
VALUES ("Leonardo Ferreira Paulino", 35, "Segurança", 1800.00),
("Jéssica Alves Verdianos", 22, "Recepcionista", 1320.00),
("Priscila Souza de Castro", 19, "Estagiária", 1200.00),
("Daniel Santos Pereira", 30, "Desenvolvedor Backend", 2000.00),
("Kauã Moura", 40, "Desenvolvedor Fullstack", 2500.00);

ALTER TABLE tb_colaboradores ADD COLUMN email varchar(300) not null;

UPDATE tb_colaboradores SET email = "leo.ferreira@gmail.com" WHERE id = 1;
UPDATE tb_colaboradores SET email = "jessica.alvesverdi@gmail.com" WHERE id = 2;
UPDATE tb_colaboradores SET email = "priscila.souza_castro@gmail.com" WHERE id = 3;
UPDATE tb_colaboradores SET email = "dani_santos.dev@gmail.com" WHERE id = 4;
UPDATE tb_colaboradores SET email = "kauamoura.developer@gmail.com" WHERE id = 5;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 4;