CREATE DATABASE db_23_pizza;
USE db_23_pizza;

  CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
sabores VARCHAR(255) NOT NULL,
tamanhos VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
 );
 
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabornome VARCHAR(255) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
quantidade INT,
borda BOOLEAN,
categoriaid BIGINT,
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
 ); 
 
 INSERT INTO tb_categorias (sabores, tamanhos) VALUES
('Calabresa', 'Pequena, Média, Grande'),
('Mussarela', 'Pequena, Média, Grande'),
('Portuguesa', 'Pequena, Média, Grande'),
('Frango com Catupiry', 'Pequena, Média, Grande'),
('Vegetariana', 'Pequena, Média, Grande');

INSERT INTO tb_pizzas (sabornome, valor, quantidade, borda, categoriaid) VALUES
('Calabresa Tradicional', 53.00, 10, TRUE, 1),
('Mussarela Especial', 41.00, 8, FALSE, 2),
('Portuguesa Clássica', 120.00, 5, TRUE, 3),
('Frango com Catupiry', 84.50, 7, TRUE, 4),
('Vegetariana Light', 39.00, 6, FALSE, 5),
('Calabresa Hot', 99.00, 4, TRUE, 1),
('Mussarela Suprema', 77.00, 9, FALSE, 2),
('Frango Defumado', 162.00, 3, TRUE, 4);


SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor >= 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabornome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT sabornome, valor, borda, tb_categorias.tamanhos
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;


