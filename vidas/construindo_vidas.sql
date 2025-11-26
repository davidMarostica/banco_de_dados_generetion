CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

-- Criação da tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Criação da tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela de categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Hidráulica', 'Tubos, conexões e acessórios para encanamento'),
('Elétrica', 'Fios, cabos e materiais elétricos'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Acabamento', 'Tintas, pisos e revestimentos'),
('Estrutura', 'Cimento, areia e materiais de base');

-- Inserindo registros na tabela de produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Cimento CP-II', 'Saco de 50kg', 35.00, 200, 5),
('Tubo PVC 100mm', 'Tubo para esgoto', 120.00, 80, 1),
('Interruptor Simples', 'Interruptor 10A', 15.00, 150, 2),
('Fio Elétrico 2,5mm', 'Rolo de 100m', 140.00, 60, 2),
('Martelo', 'Ferramenta manual', 75.00, 100, 3),
('Parafusadeira', 'Ferramenta elétrica', 320.00, 30, 3),
('Tinta Acrílica 18L', 'Cor branca', 180.00, 40, 4),
('Piso Cerâmico', 'Caixa com 2m²', 95.00, 70, 4);

-- SELECTs solicitados

-- 1. Produtos com valor maior que R$ 100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- 2. Produtos com valor entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- 3. Produtos que possuem a letra 'C' no nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 4. INNER JOIN entre produtos e categorias
SELECT p.id, p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- 5. INNER JOIN filtrando apenas produtos da categoria 'Hidráulica'
SELECT p.id, p.nome AS produto, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Hidráulica';
