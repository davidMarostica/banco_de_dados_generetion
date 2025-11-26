CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Ana Silva", "Analista de RH", 2500.00, "Recursos Humanos");

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Carlos Souza", "Desenvolvedor", 3500.00, "TI");

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Mariana Costa", "Assistente Administrativo", 1800.00, "Administrativo");

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("João Pereira", "Gerente de Projetos", 5000.00, "TI");

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Fernanda Lima", "Estagiária", 1200.00, "Marketing");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores
SET salario = 2200.00
WHERE id = 3;   -- substitua pelo id correto
