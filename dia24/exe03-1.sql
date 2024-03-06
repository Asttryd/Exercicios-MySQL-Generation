CREATE TABLE tb_classes_extracurriculares(
id bigint auto_increment,
nome varchar(255),
primary key (id)
);

SELECT * FROM tb_classes_extracurriculares;
ALTER TABLE tb_classes_extracurriculares RENAME COLUMN id TO id_classe;

INSERT INTO tb_classes_extracurriculares (nome)
VALUES ("Java"), ("Educação Financeira"), ("Design gráfico"), ("Informática");