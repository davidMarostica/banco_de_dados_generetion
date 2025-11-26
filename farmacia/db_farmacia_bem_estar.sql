-- Criação do Banco de Dados
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o Banco de Dados
USE db_farmacia_bem_estar;

-- Criação da tabela de Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Criação da tabela de Produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios de uso geral e controlado'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal'),
('Vitaminas', 'Suplementos e vitaminas'),
('Infantil', 'Produtos voltados para crianças e bebês');

-- Inserindo registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, marca, preco, estoque, id_categoria) VALUES
('Dipirona', 'Medley', 12.50, 100, 1),
('Paracetamol', 'EMS', 8.90, 150, 1),
('Shampoo Anticaspa', 'Clear', 35.00, 80, 2),
('Creme Hidratante', 'Nivea', 55.00, 60, 2),
('Sabonete Líquido', 'Dove', 18.00, 120, 3),
('Vitamina C', 'Sundown', 65.00, 40, 4),
('Polivitamínico', 'Centrum', 95.00, 30, 4),
('Pomada Infantil', 'Hipoglós', 25.00, 50, 5);

-- SELECT 1: Produtos com valor > 50
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT 2: Produtos com valor entre 5 e 60
SELECT * FROM tb_produtos WHERE preco > 50.00;
