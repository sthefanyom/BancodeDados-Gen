CREATE DATABASE db_quartzorh;

USE db_quartzorh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
cargo VARCHAR(255) NOT NULL,
dataAdmissao DATE,
 PRIMARY KEY (id)
 );
 
INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
values ("Miley",300000.00, "CEO", "2009-09-16");
INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
values ("Billy",100000.00, "VP", "2009-09-16");
INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
values ("Sthefany",5000.00, "ANALISTA", "2009-09-16");
INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
values ("Liam",1500.00, "ASG", "2009-09-16");
INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
values ("Nick",2000.00, "TI", "2009-09-16");


SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores
SET salario = 6000.00 WHERE id = 3;