-- Criação do banco de dados para e-commerce
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- Criação da tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    marca VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

-- Inserção de dados na tabela (8 registros)
INSERT INTO tb_produtos (nome, categoria, marca, preco, quantidade_estoque) 
VALUES 
('Smartphone Galaxy S23', 'Eletrônicos', 'Samsung', 2899.99, 15),
('Fone de Ouvido Bluetooth', 'Áudio', 'JBL', 299.90, 30),
('Notebook Gamer', 'Informática', 'Dell', 4500.00, 8),
('Mouse Sem Fio', 'Informática', 'Logitech', 89.90, 50),
('Tablet 10 polegadas', 'Eletrônicos', 'Samsung', 1200.00, 12),
('Teclado Mecânico', 'Informática', 'Redragon', 350.00, 25),
('Smart TV 55" 4K', 'Eletrônicos', 'LG', 3200.00, 10),
('Caixa de Som Portátil', 'Áudio', 'Sony', 450.00, 20);

-- SELECT para produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- SELECT para produtos com valor menor que 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualização de um registro (aumentando o preço do Tablet)
UPDATE tb_produtos 
SET preco = 1350.00 
WHERE nome = 'Tablet 10 polegadas';

-- Verificação da atualização
SELECT * FROM tb_produtos WHERE nome = 'Tablet 10 polegadas';

-- SELECT final para mostrar todos os produtos atualizados
SELECT * FROM tb_produtos;