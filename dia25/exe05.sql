CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
VALUES ('Materiais de Construção', 'Materiais fundamentais para construção e reforma.'),
('Ferramentas Elétricas', 'Ferramentas movidas a eletricidade para diversas aplicações.'),
('Pintura e Acabamento', 'Tintas, pincéis e produtos para acabamento.'),
('Carpintaria', 'Materiais e ferramentas específicas para trabalhos de carpintaria.'),
('Encanamento e Elétrica', 'Tubos, fios, interruptores e demais produtos para instalações elétricas e hidráulicas.');

INSERT INTO tb_produtos (nome_produto, preco_produto, descricao_produto, id_categoria)
VALUES ('Cimento Portland', 25.99, 'Saco de 50kg de cimento de alta resistência', 1),
('Tijolos Cerâmicos', 0.89, 'Tijolos vermelhos para construção de paredes', 1),
('Furadeira de Impacto', 159.99, 'Furadeira potente para perfurações diversas', 2),
('Tinta Acrílica Branca', 39.99, 'Lata de 3,6 litros para pintura interna', 3),
('Serra Circular', 199.99, 'Serra para cortes precisos em madeira', 4),
('Compensado Naval', 49.99, 'Chapa de compensado resistente à água', 4),
('Fio Elétrico 2,5mm²', 1.79, 'Rolo com 100 metros', 5),
('Conexão de PVC 25mm', 2.49, 'Joelho para tubulação de água', 5);


SELECT * FROM tb_produtos WHERE preco_produto > 100.00;
SELECT * FROM tb_produtos WHERE preco_produto > 70.00 AND preco_produto < 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_produtos.id_categoria = 2;