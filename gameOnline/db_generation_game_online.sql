-- Criação do Banco de Dados
CREATE DATABASE db_generation_game_online;

-- Seleciona o Banco de Dados
USE db_generation_game_online;

-- Criação da tabela de Classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Criação da tabela de Personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserindo registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Mestre em ataques à distância'),
('Mago', 'Utiliza magias poderosas'),
('Assassino', 'Ágil e furtivo, especialista em ataques críticos'),
('Cavaleiro', 'Defensor com alta resistência');

-- Inserindo registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Arthur', 2500, 1800, 20, 1),
('Luna', 1800, 1200, 18, 2),
('Merlin', 3000, 900, 25, 3),
('Cassandra', 2200, 1500, 22, 2),
('Drake', 2700, 2000, 24, 4),
('Helena', 1500, 1100, 15, 5),
('Cedric', 2100, 950, 19, 1),
('Clara', 1900, 1300, 17, 3);

-- SELECT 1: Personagens com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT 2: Personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT 3: Personagens cujo nome contém a letra 'C'
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT 4: INNER JOIN entre personagens e classes
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome AS classe, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

-- SELECT 5: INNER JOIN filtrando apenas personagens da classe 'Arqueiro'
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';
