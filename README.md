# 📘 Projeto MySQL - Generation Brasil

Este repositório contém os scripts SQL desenvolvidos como parte das atividades práticas do curso da **Generation Brasil**.

---

## 📂 Estrutura do Repositório

banco_de_dados_generetion/ │ ├── ecommerce/ │ └── ecommerce.sql │ ├── farmacia/ │ └── db_farmacia_bem_estar.sql │ ├── gameOnline/ │ └── db_generation_game_online.sql │ ├── pizzaria/ │ └── db_pizzaria_legal.sql │ ├── RH/ │ └── db_rh.sql ├── vidas/
│   └── db_construindo_vidas.sql


---

## 🛠️ Tecnologias Utilizadas
- **MySQL Workbench** – Modelagem e execução dos scripts  
- **MySQL Server** – SGBD relacional  
- **Git & GitHub** – Versionamento e colaboração  
- **SQL** – DDL, DML, DQL  

---

## 📑 Atividades Desenvolvidas

### 1. 🎮 Game Online
- Banco: `db_generation_game_online`  
- Arquivo: `exe01.sql`  
- Tabelas: `tb_classes`, `tb_personagens`  
- Relacionamento: 1:N (`tb_personagens` → `tb_classes`)  
- Funcionalidades:
  - Criação de tabelas com chave estrangeira  
  - Inserção de 5 classes e 8 personagens  
  - Consultas com operadores: `>`, `BETWEEN`, `LIKE`  
  - `INNER JOIN` entre tabelas relacionadas  

---

### 2. 🍕 Pizzaria Legal
- Banco: `db_pizzaria_legal`  
- Arquivo: `exe02.sql`  
- Tabelas: `tb_categorias`, `tb_pizzas`  
- Relacionamento: 1:N (`tb_pizzas` → `tb_categorias`)  
- Funcionalidades:
  - Categorização de pizzas (Tradicional, Doce, Vegana, etc.)  
  - Consultas por faixa de preço  
  - Filtros por categoria específica  
  - `INNER JOIN` para relacionar pizzas com categorias  

---

### 3. 💊 Farmácia Bem Estar
- Banco: `db_farmacia_bem_estar`  
- Arquivo: `exe03.sql`  
- Tabelas: `tb_categorias`, `tb_produtos`  
- Relacionamento: 1:N (`tb_produtos` → `tb_categorias`)  
- Funcionalidades:
  - Organização por categorias de produtos  
  - Consultas de preço com operadores relacionais  
  - Busca de produtos por nome  
  - Relacionamento entre produtos e categorias  

---

### 4. 👔 Recursos Humanos (RH)
- Banco: `db_rh`  
- Arquivo: `db_rh.sql`  
- Tabelas: `tb_colaboradores`  
- Funcionalidades:
  - Cadastro de colaboradores  
  - Consultas salariais  
  - Atualização de registros  

---

### 5. 🛒 E-commerce
- Banco: `db_ecommerce`  
- Arquivo: `ecommerce.sql`  
- Tabelas: `tb_produtos`, `tb_categorias`  
- Funcionalidades:
  - Catálogo de produtos  
  - Categorização  
  - Consultas diversas  

---

## 🚀 Como Executar os Scripts

### Pré-requisitos
- MySQL Server instalado  
- MySQL Workbench ou cliente SQL  
- Git (para clonar o repositório)  

### Passos
1. Clone o repositório:
   ```bash
   git clone https://github.com/davidMarostica/banco_de_dados_generetion.git
   cd banco_de_dados_generetion

2.Execute no MySQL Workbench:

    Abra o MySQL Workbench

    Conecte-se ao servidor MySQL

    Navegue até a pasta do projeto desejado

    Abra o arquivo .sql

    Execute o script completo (Ctrl+Shift+Enter)

3.Execute via linha de comando:
mysql -u seu_usuario -p < ecommerce/ecommerce.sql

Conceitos SQL Aplicados

    DDL (Data Definition Language): CREATE DATABASE, CREATE TABLE

    DML (Data Manipulation Language): INSERT, UPDATE, DELETE

    DQL (Data Query Language): SELECT, WHERE, JOIN, BETWEEN, LIKE

    Constraints: PRIMARY KEY, FOREIGN KEY, NOT NULL, AUTO_INCREMENT
    Boas Práticas Implementadas

    Nomenclatura consistente de tabelas e colunas

    Uso de chaves primárias e estrangeiras

    Normalização de dados

    Documentação clara dos scripts

    Organização modular por atividades

Contato

Desenvolvido por David Marostica – Generation Brasil 2025

