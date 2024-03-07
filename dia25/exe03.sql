CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_produtos(
id_produto bigint auto_increment,
nome_produto varchar(255) not null,
preco_produto decimal(10,2) not null,
descricao_produto varchar(255),
id_categoria bigint,
primary key (id_produto)
);

CREATE TABLE tb_categorias(
id_categoria bigint auto_increment,
nome_categoria varchar(255) not null,
descricao_categoria varchar(255) not null,
primary key (id_categoria)
);

ALTER TABLE tb_produtos ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Medicamentos", "Produtos farmacêuticos para tratamento de diversas condições médicas."),
("Higiene Pessoal", "Produtos para cuidados pessoais e higiene diária."),
("Vitaminas e Suplementos", "Suplementos alimentares e vitaminas para saúde e bem-estar."),
("Bebês e Crianças", "Produtos voltados para o cuidado e bem-estar de bebês e crianças."),
("Dermocosméticos", "Produtos de cuidado com a pele e cosméticos dermatológicos.");

INSERT INTO tb_produtos (nome_produto, preco_produto, descricao_produto, id_categoria)
VALUES ("Aspirina", 9.99, "Analgésico e antipirético", 1),
("Protetor Solar FPS 50", 22.49, "Proteção contra raios UVA e UVB", 5),
("Xarope para Tosse", 12.49, "Alívio da tosse seca e irritante", 1),
("Creme Dental", 4.99, "Proteção contra cáries e gengivite", 2),
("Multivitamínico", 19.99, "Suplemento vitamínico diário", 3),
("Fraldas Descartáveis", 29.99, "Pacote com 50 fraldas", 4),
("Shampoo Infantil", 8.99, "Suave e sem lágrimas", 4),
("Creme Antienvelhecimento", 39.99, "Hidratação intensiva", 5);

SELECT * FROM tb_produtos WHERE preco_produto > 50.00;
SELECT * FROM tb_produtos WHERE preco_produto > 5.00 AND preco_produto < 60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_produtos.id_categoria = 4;