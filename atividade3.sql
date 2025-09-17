CREATE DATABASE db_quartzoenglishcourse;

USE db_quartzoenglishcourse;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    nivel_ingles VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, nota, nivel_ingles, email, telefone) VALUES
('Ana Souza', 8.5, 'Básico', 'ana.souza@email.com', '11987654321'),
('Carlos Lima', 7.0, 'Intermediário', 'carlos.lima@email.com', '21998765432'),
('Fernanda Alves', 9.5, 'Avançado', 'fernanda.alves@email.com', '11912345678'),
('João Pedro', 6.0, 'Básico', 'joao.pedro@email.com', '31911223344'),
('Mariana Santos', 7.8, 'Intermediário', 'mariana.santos@email.com', '41922334455'),
('Lucas Ferreira', 8.0, 'Básico', 'lucas.ferreira@email.com', '11933445566'),
('Beatriz Gomes', 9.2, 'Avançado', 'beatriz.gomes@email.com', '21944556677'),
('Ricardo Oliveira', 7.5, 'Intermediário', 'ricardo.oliveira@email.com', '11955667788');

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota >= 7;
SELECT * FROM tb_estudantes WHERE nota <= 7;

UPDATE tb_estudantes
SET nota = 5.0 WHERE id = 4;


