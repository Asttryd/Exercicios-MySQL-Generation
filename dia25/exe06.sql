CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos(
id_curso bigint auto_increment,
nome_curso varchar(255) not null,
preco_curso decimal(10,2) not null,
descricao_curso varchar(255),
id_categoria bigint,
primary key (id_curso)
);

CREATE TABLE tb_categorias(
id_categoria bigint auto_increment,
nome_categoria varchar(255) not null,
descricao_categoria varchar(255) not null,
primary key (id_categoria)
);

ALTER TABLE tb_cursos ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria);

SELECT * FROM tb_cursos;
SELECT * FROM tb_categorias;

ALTER TABLE tb_cursos DROP COLUMN descricao_curso;
ALTER TABLE tb_cursos ADD COLUMN duracao_horas bigint not null;

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ('Desenvolvimento Web', 'Cursos relacionados a programação, design e desenvolvimento web.'),
('Marketing Digital', 'Estratégias de marketing, SEO, redes sociais e publicidade online.'),
('Saúde e Bem-Estar', 'Cursos sobre saúde física, mental e bem-estar geral.'),
('Negócios e Empreendedorismo', 'Empreendedorismo, gestão de negócios e finanças.'),
('Arte e Criatividade', 'Cursos de artes visuais, música, escrita e outras expressões criativas.');

INSERT INTO tb_cursos (nome_curso, duracao_horas, preco_curso, id_categoria)
VALUES ('Curso de Desenvolvimento Full Stack', 60, 199.99, 1),
('Introdução ao HTML e CSS', 20, 49.99, 1),
('Estratégias Avançadas de SEO', 30, 79.99, 2),
('Meditação e Mindfulness', 15, 29.99, 3),
('Gestão Financeira para Empreendedores', 25, 69.99, 4),
('Como Criar um Plano de Negócios', 20, 59.99, 4),
('Desenho Artístico para Iniciantes', 30, 89.99, 5),
('Composição Musical em Home Studio', 40, 129.99, 5);


SELECT * FROM tb_cursos WHERE preco_curso > 500.00;
SELECT * FROM tb_cursos WHERE preco_curso > 600.00 AND preco_curso < 1000.00;

INSERT INTO tb_cursos (nome_curso, duracao_horas, preco_curso, id_categoria)
VALUES ('Neuromarketing', 40, 700.0, 1);
INSERT INTO tb_cursos (nome_curso, duracao_horas, preco_curso, id_categoria)
VALUES ('Fullstack com Java e Spring Boot', 40, 800.0, 1);

UPDATE tb_cursos SET id_categoria = 2 WHERE id_curso = 9;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;
SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria WHERE tb_cursos.id_categoria = 5;