CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal (6,2) not null,
descricao varchar(400) not null,
categoria varchar(255) not null,
primary key (id)
);

ALTER TABLE tb_produtos DROP COLUMN categoria;

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, preco, descricao)
VALUES ("Teclado Logitech", 20, 150.00, "Um teclado de alta qualidade da marca Logitech"),
("Mouse Multilaser", 100, 30.00, "Um mouse custo-benefício da marca Multilaser"),
("Trilogia Five Nights at Freddy's", 5, 500.00, "A trilogia dos livros da franquia de jogos de terror chamada Five Nights at Freddy's"),
("Escova polvo", 100, 10.00, "Uma escova feita especialmente para cabelos ondulados e cacheados"),
("Patinho de borracha", 20, 15.00, "Um patinho de borracha para colocar na banheira ou para decorar seu ambiente"),
("Pacote de papel sulfite A4", 20, 30.00, "Um pacote de papel sulfite tamanho A4 com 500 folhas"),
("Pilhas AA", 20, 30.00, "Pacote de pilhas AA com 50 unidades cada"),
("Boneca Twilight Sparkle - Rainbow Rocks", 5, 250.00, "Uma boneca da protagonista do desenho My Little Pony: Equestria girls -- Rainbow Rocks");

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 550.00 WHERE id = 3;