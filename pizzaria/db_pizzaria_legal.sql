-- Criação do Banco de Dados
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o Banco de Dados
USE db_pizzaria_legal;

-- Criação da tabela de Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Criação da tabela de Pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes VARCHAR(200) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas salgadas'),
('Especial', 'Receitas exclusivas e diferenciadas'),
('Doce', 'Pizzas doces e sobremesas'),
('Vegana', 'Pizzas sem ingredientes de origem animal'),
('Premium', 'Ingredientes nobres e importados');

-- Inserindo registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, id_categoria) VALUES
('Mussarela', 'Grande', 40.00, 'Queijo mussarela, molho de tomate', 1),
('Calabresa', 'Média', 45.00, 'Calabresa, cebola, molho de tomate', 1),
('Frango com Catupiry', 'Grande', 55.00, 'Frango desfiado, catupiry, molho de tomate', 2),
('Chocolate', 'Média', 60.00, 'Chocolate ao leite, granulado', 3),
('Romeu e Julieta', 'Pequena', 50.00, 'Goiabada, queijo minas', 3),
('Vegana Mix', 'Grande', 65.00, 'Legumes variados, queijo vegano', 4),
('Quatro Queijos', 'Grande', 70.00, 'Mussarela, gorgonzola, parmesão, provolone', 5),
('Margherita', 'Média', 48.00, 'Mussarela, tomate, manjericão', 1);

-- SELECT 1: Pizzas com valor > 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT 2: Pizzas com valor entre 50 e 100
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT 3: Pizzas cujo nome contém a letra 'M'
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

-- SELECT 4: INNER JOIN entre pizzas e categorias
SELECT p.id, p.nome, p.tamanho, p.preco, p.ingredientes, c.nome AS categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

-- SELECT 5: INNER JOIN filtrando apenas pizzas da categoria 'Doce'
SELECT p.id, p.nome, p.tamanho, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doce';
