CREATE DATABASE db_wreckingball_construcoes;

USE db_wreckingball_construcoes;

  CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(3000) NOT NULL,
 PRIMARY KEY (id)
 );
 
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
quantidade INT,
marca VARCHAR(255),
dataValidade DATE,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id),
 PRIMARY KEY (id)
 );
  
  INSERT INTO tb_categorias (tipo, descricao) VALUES
('Cimentos', 'Produtos à base de cimento para construção civil'),
('Madeiras', 'Tábuas, vigas e produtos de madeira'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Tintas', 'Tintas, vernizes e acabamentos'),
('Tubos e Conexões', 'Materiais hidráulicos para encanamento');

INSERT INTO tb_produtos (nome, valor, quantidade, marca, dataValidade, categoriaid) VALUES
('Cimento CP-II 50kg', 35.90, 100, 'Votorantim', '2026-12-31', 1),
('Cimento CP-IV 25kg', 22.50, 80, 'InterCement', '2026-12-31', 1),

('Tábua de Pinus 3m', 45.00, 50, 'MadeiraSul', NULL, 2),
('Viga de Eucalipto 4m', 120.00, 30, 'FlorestaBras', NULL, 2),

('Furadeira 500W', 280.00, 20, 'Bosch', NULL, 3),
('Martelo de Unha', 35.00, 150, 'Tramontina', NULL, 3),

('Tinta Acrílica 18L', 320.00, 25, 'Suvinil', '2027-06-30', 4),
('Canos PVC 50mm (6m)', 89.90, 60, 'Tigre', NULL, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor >= 100;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;


SELECT nome, valor, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;


