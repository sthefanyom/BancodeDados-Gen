<!DOCTYPE html>

<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Projetos de Bancos de Dados</title>
<style>
  body { font-family: Arial, sans-serif; line-height: 1.6; padding: 20px; background-color: #f4f4f4; }
  h1, h2 { color: #333; }
  code { background-color: #eee; padding: 2px 5px; border-radius: 3px; }
  pre { background-color: #eee; padding: 10px; border-radius: 5px; overflow-x: auto; }
  hr { border: 0; border-top: 1px solid #ccc; margin: 20px 0; }
</style>
</head>
<body>

<h1>Projetos de Bancos de Dados</h1>
<p>Este repositório contém scripts SQL para diferentes projetos de bancos de dados. Cada pasta representa um projeto específico, com suas tabelas, dados e informações relevantes.</p>
<hr>

<h2>1. Quartzo RH</h2>
<p><strong>Descrição:</strong><br>Banco de dados para gerenciamento de colaboradores da empresa Quartzo RH. O sistema armazena informações sobre funcionários, seus salários, cargos e datas de admissão.</p>
<p><strong>Tabelas Principais:</strong></p>
<ul>
<li><code>tb_colaboradores</code>
  <ul>
    <li><code>id</code> (BIGINT) – Identificador único do colaborador</li>
    <li><code>nome</code> (VARCHAR) – Nome completo</li>
    <li><code>salario</code> (DECIMAL) – Salário do colaborador</li>
    <li><code>cargo</code> (VARCHAR) – Cargo ocupado</li>
    <li><code>dataAdmissao</code> (DATE) – Data de admissão</li>
  </ul>
</li>
</ul>
<p><strong>Exemplo de uso:</strong></p>
<pre><code>INSERT INTO tb_colaboradores (nome, salario, cargo, dataAdmissao) 
VALUES ('João Silva', 300000.00, 'Gerente de RH', '2025-01-15');</code></pre>

<h2>2. E-commerce de Cursos Tech</h2>
<p><strong>Descrição:</strong><br>Banco de dados para uma loja online de cursos tecnológicos. Armazena informações sobre os cursos disponíveis, seus preços, quantidade e modalidade.</p>
<p><strong>Tabelas Principais:</strong></p>
<ul>
<li><code>tb_cursostech</code>
  <ul>
    <li><code>id</code> (BIGINT) – Identificador único do curso</li>
    <li><code>nome</code> (VARCHAR) – Nome do curso</li>
    <li><code>valor</code> (DECIMAL) – Valor do curso</li>
    <li><code>quantidade</code> (INT) – Quantidade disponível</li>
    <li><code>modalidade</code> (VARCHAR) – Presencial ou Online</li>
  </ul>
</li>
</ul>
<p><strong>Exemplo de uso:</strong></p>
<pre><code>INSERT INTO tb_cursostech (nome, valor, quantidade, modalidade) 
VALUES ('Curso de Python', 450.00, 20, 'Online');</code></pre>

<h2>3. Escola de Inglês</h2>
<p><strong>Descrição:</strong><br>Banco de dados para gerenciamento de estudantes de uma escola de inglês. O sistema registra informações básicas dos alunos, incluindo suas notas.</p>
<p><strong>Tabelas Principais:</strong></p>
<ul>
<li><code>tb_estudantes</code>
  <ul>
    <li><code>id</code> (BIGINT) – Identificador único do estudante</li>
    <li><code>nome</code> (VARCHAR) – Nome completo</li>
    <li><code>nota</code> (DECIMAL) – Nota do estudante</li>
    <li><code>email</code> (VARCHAR) – Email para contato</li>
    <li><code>telefone</code> (VARCHAR) – Número de telefone</li>
  </ul>
</li>
</ul>
<p><strong>Exemplo de uso:</strong></p>
<pre><code>INSERT INTO tb_estudantes (nome, nota, email, telefone) 
VALUES ('Maria Souza', 8.5, 'maria@email.com', '(11) 91234-5678');</code></pre>

<h2>Como usar os scripts</h2>
<ol>
<li>Clone este repositório:<pre><code>git clone &lt;URL_DO_REPOSITORIO&gt;</code></pre></li>
<li>Acesse a pasta do projeto desejado.</li>
<li>Importe o script SQL no seu SGBD (MySQL, MariaDB, etc.):<pre><code>SOURCE caminho/para/o/arquivo.sql;</code></pre></li>
</ol>

<h2>Observações</h2>
<ul>
<li>Os dados inseridos são fictícios e servem apenas para fins de teste e estudo.</li>
<li>Certifique-se de ter o MySQL ou outro SGBD compatível instalado.</li>
</ul>

</body>
</html>
