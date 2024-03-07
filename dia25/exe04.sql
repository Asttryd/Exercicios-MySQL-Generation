CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

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
VALUES ("Frutas", "Variedades frescas de frutas."),
("Vegetais", "Diversos tipos de vegetais e verduras."),
("Legumes", "Legumes frescos e saudáveis."),
("Grãos e Cereais", "Grãos integrais e cereais a granel."),
("Ervas e Temperos", "Ervas frescas e temperos para realçar o sabor.");


INSERT INTO tb_produtos (nome_produto, preco_produto, descricao_produto, id_categoria)
VALUES ('Maçã Gala', 2.99, 'Maçãs frescas e suculentas', 1),
('Banana Prata', 1.49, 'Bananas maduras e doces', 1),
('Tomate Italiano', 3.99, 'Tomates frescos e saborosos', 2),
('Abobrinha Verde', 2.49, 'Abobrinhas cultivadas organicamente', 3),
('Arroz Integral', 5.99, 'Arroz integral de alta qualidade', 4),
('Quinoa', 8.99, 'Grão de quinoa rico em nutrientes', 4),
('Manjericão Fresco', 1.79, 'Manjericão fresco para realçar seus pratos', 5),
('Alho Orgânico', 2.29, 'Dentes de alho orgânico e aromático', 5);


SELECT * FROM tb_produtos WHERE preco_produto >= 50.00;
SELECT * FROM tb_produtos WHERE preco_produto >= 50.00 AND preco_produto < 150.00;

INSERT INTO tb_produtos (nome_produto, preco_produto, descricao_produto, id_categoria)
VALUES ('Kiwi', 50.00, 'O quilo do Kiwi', 1);

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_produtos.id_categoria = 4;