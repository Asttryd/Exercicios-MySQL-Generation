CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id_pizza bigint auto_increment,
nome_pizza varchar(255) not null,
valor_pizza decimal(6,2) not null,
descricao_pizza varchar(255) not null,
categoria_pizza bigint,
primary key (id_pizza)
);

CREATE TABLE tb_categorias(
id_categoria bigint auto_increment,
nome_categoria varchar(255),
descricao_categoria varchar(255),
primary key (id_categoria)
);

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_pizza) REFERENCES tb_categorias(id_categoria);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Clássicas", "Os sabores clássicos que todo mundo gosta!"),
("Vegetarianas", "Para aqueles que preferem um estilo de vida sem crueldade animal."),
("Gourmet", "As pizzas mais elegantes do nosso menu!"),
("Doces", "Para adoçar seu dia."),
("Exóticas", "Para aqueles que querem experimentar algo novo.");

INSERT INTO tb_pizzas (nome_pizza, valor_pizza, descricao_pizza, categoria_pizza)
VALUES ("Margherita", 40.00, "Queijo mozzarela e fatias de tomate", 1),
("Romeu e Julieta", 60.00, "Goiabada e Queijo mozzarella", 4),
("Tandoori Paneer", 50.00, "Molho tandoori, queijo paneer, fatias de pimentões, cebola roxa e coentro fresco.", 5),
("Mediterrânea vegana", 45.00, "Fatias de abobrinha, tomate cereja, azeitona preta, espinafre, tomate seco em óleo e queijo vegano", 2),
("Doce Tentação", 60.00, "Chocolate, morangos e marshmallows", 4),
("Calabresa", 40.00, "Queijo mozzarella, calabresa fatiada e cebola", 1),
("Gourmet Supreme", 60.00, "Queijo brie, presunto de parma, rúcula e azeite trufado", 3),
("Quatro queijos", 40.00, "Queijo mozzarella, gorgonzola, parmesão e provolone", 1);

SELECT * FROM tb_pizzas WHERE valor_pizza > 45.00;
SELECT * FROM tb_pizzas WHERE valor_pizza > 50.00 AND valor_pizza < 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';


SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_pizza = tb_categorias.id_categoria;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_pizza = tb_categorias.id_categoria WHERE categoria_pizza = 1;