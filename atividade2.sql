CREATE DATABASE db_quartzosollutions;

USE db_quartzosollutions;

CREATE TABLE tb_cursostech(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
quantidade INT,
modalidade VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
 );
 
INSERT INTO tb_cursostech (nome, valor, quantidade, modalidade) VALUES
('Introdução à Programação', 350.00, 100, 'Online'),
('JavaScript Avançado', 750.00, 50, 'Online'),
('Banco de Dados MySQL', 420.00, 80, 'Presencial'),
('Python para Data Science', 950.00, 40, 'Online'),
('Desenvolvimento Web Fullstack', 1200.00, 30, 'Online'),
('Introdução à Cibersegurança', 480.00, 60, 'Presencial'),
('Machine Learning com Python', 1350.00, 25, 'Online'),
('UX/UI Design para Iniciantes', 270.00, 70, 'Online');
 
SELECT * FROM tb_cursostech;

SELECT * FROM tb_cursostech WHERE valor >= 500;
SELECT * FROM tb_cursostech WHERE valor <= 500;

UPDATE tb_cursostech
SET valor = 500 WHERE id = 3;