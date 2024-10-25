CREATE DATABASE MaterialConstrucao;
USE MaterialConstrucao;


CREATE TABLE FORNECEDORES (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE CLIENTES (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE PRODUTOS (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2),
    quantidade_estoque INT DEFAULT 0,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDORES(id_fornecedor)
);

CREATE TABLE VENDAS (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_produto INT,
    quantidade INT NOT NULL,
    data_venda DATE,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES PRODUTOS(id_produto)
);


-- Inserção de dados 

INSERT INTO FORNECEDORES (nome, contato, endereco) VALUES
('Fornecedor 1', '111222333', 'Rua A, Cidade X'),
('Fornecedor 2', '444555666', 'Rua B, Cidade Y'),
('Fornecedor 3', '777888999', 'Rua C, Cidade Z'),
('Fornecedor 4', '888999000', 'Rua D, Cidade W'),
('Fornecedor 5', '123456789', 'Rua E, Cidade V'),
('Fornecedor 6', '234567890', 'Rua F, Cidade U'),
('Fornecedor 7', '345678901', 'Rua G, Cidade T'),
('Fornecedor 8', '456789012', 'Rua H, Cidade S'),
('Fornecedor 9', '567890123', 'Rua I, Cidade R'),
('Fornecedor 10', '678901234', 'Rua J, Cidade Q');

-- Inserir registros na tabela CLIENTES
INSERT INTO CLIENTES (nome, contato, endereco) VALUES
('Cliente A', '123456789', 'Avenida 1, Cidade A'),
('Cliente B', '987654321', 'Avenida 2, Cidade B'),
('Cliente C', '456789123', 'Avenida 3, Cidade C'),
('Cliente D', '321654987', 'Avenida 4, Cidade D'),
('Cliente E', '654321789', 'Avenida 5, Cidade E'),
('Cliente F', '789456123', 'Avenida 6, Cidade F'),
('Cliente G', '159753486', 'Avenida 7, Cidade G'),
('Cliente H', '753159852', 'Avenida 8, Cidade H'),
('Cliente I', '852963147', 'Avenida 9, Cidade I'),
('Cliente J', '963258741', 'Avenida 10, Cidade J'),
('Cliente K', '258147369', 'Avenida 11, Cidade K'),
('Cliente L', '147258369', 'Avenida 12, Cidade L'),
('Cliente M', '369258147', 'Avenida 13, Cidade M'),
('Cliente N', '456123789', 'Avenida 14, Cidade N'),
('Cliente O', '321789654', 'Avenida 15, Cidade O'),
('Cliente P', '654987123', 'Avenida 16, Cidade P'),
('Cliente Q', '789123456', 'Avenida 17, Cidade Q'),
('Cliente R', '159258357', 'Avenida 18, Cidade R'),
('Cliente S', '753852159', 'Avenida 19, Cidade S'),
('Cliente T', '963147258', 'Avenida 20, Cidade T');

-- Inserir registros na tabela PRODUTOS
INSERT INTO PRODUTOS (nome, descricao, preco, quantidade_estoque, id_fornecedor) VALUES
('Produto A', 'Descrição do Produto A', 29.90, 100, 1),
('Produto B', 'Descrição do Produto B', 49.90, 200, 2),
('Produto C', 'Descrição do Produto C', 69.90, 150, 3),
('Produto D', 'Descrição do Produto D', 89.90, 250, 4),
('Produto E', 'Descrição do Produto E', 19.90, 300, 5),
('Produto F', 'Descrição do Produto F', 39.90, 50, 6),
('Produto G', 'Descrição do Produto G', 59.90, 75, 7),
('Produto H', 'Descrição do Produto H', 79.90, 120, 8),
('Produto I', 'Descrição do Produto I', 99.90, 30, 9),
('Produto J', 'Descrição do Produto J', 15.90, 60, 10),
('Produto K', 'Descrição do Produto K', 25.90, 80, 1),
('Produto L', 'Descrição do Produto L', 35.90, 90, 2),
('Produto M', 'Descrição do Produto M', 45.90, 40, 3),
('Produto N', 'Descrição do Produto N', 55.90, 110, 4),
('Produto O', 'Descrição do Produto O', 65.90, 150, 5),
('Produto P', 'Descrição do Produto P', 75.90, 70, 6),
('Produto Q', 'Descrição do Produto Q', 85.90, 25, 7),
('Produto R', 'Descrição do Produto R', 95.90, 5, 8),
('Produto S', 'Descrição do Produto S', 105.90, 150, 9),
('Produto T', 'Descrição do Produto T', 115.90, 90, 10),
('Produto U', 'Descrição do Produto U', 125.90, 80, 1),
('Produto V', 'Descrição do Produto V', 135.90, 75, 2),
('Produto W', 'Descrição do Produto W', 145.90, 30, 3),
('Produto X', 'Descrição do Produto X', 155.90, 20, 4),
('Produto Y', 'Descrição do Produto Y', 165.90, 10, 5),
('Produto Z', 'Descrição do Produto Z', 175.90, 5, 6),
('Produto AA', 'Descrição do Produto AA', 185.90, 2, 7),
('Produto AB', 'Descrição do Produto AB', 195.90, 3, 8),
('Produto AC', 'Descrição do Produto AC', 205.90, 1, 9),
('Produto AD', 'Descrição do Produto AD', 215.90, 0, 10),
('Produto AE', 'Descrição do Produto AE', 225.90, 50, 1),
('Produto AF', 'Descrição do Produto AF', 235.90, 40, 2),
('Produto AG', 'Descrição do Produto AG', 245.90, 30, 3),
('Produto AH', 'Descrição do Produto AH', 255.90, 20, 4),
('Produto AI', 'Descrição do Produto AI', 265.90, 10, 5),
('Produto AJ', 'Descrição do Produto AJ', 275.90, 5, 6),
('Produto AK', 'Descrição do Produto AK', 285.90, 15, 7),
('Produto AL', 'Descrição do Produto AL', 295.90, 25, 8),
('Produto AM', 'Descrição do Produto AM', 305.90, 35, 9),
('Produto AN', 'Descrição do Produto AN', 315.90, 45, 10),
('Produto AO', 'Descrição do Produto AO', 325.90, 55, 1),
('Produto AP', 'Descrição do Produto AP', 335.90, 65, 2),
('Produto AQ', 'Descrição do Produto AQ', 345.90, 75, 3),
('Produto AR', 'Descrição do Produto AR', 355.90, 85, 4),
('Produto AS', 'Descrição do Produto AS', 365.90, 95, 5),
('Produto AT', 'Descrição do Produto AT', 375.90, 105, 6);

-- Inserir registros na tabela VENDAS
INSERT INTO VENDAS (id_cliente, id_produto, quantidade, data_venda) VALUES
(1, 1, 2, '2024-01-01'),
(2, 2, 1, '2024-01-01'),
(3, 3, 3, '2024-01-02'),
(4, 4, 2, '2024-01-02'),
(5, 5, 1, '2024-01-03'),
(6, 6, 5, '2024-01-03'),
(7, 7, 2, '2024-01-04'),
(8, 8, 1, '2024-01-04'),
(9, 9, 4, '2024-01-05'),
(10, 10, 2, '2024-01-05'),
(11, 1, 3, '2024-01-06'),
(12, 2, 1, '2024-01-06'),
(13, 3, 2, '2024-01-07'),
(14, 4, 5, '2024-01-07'),
(15, 5, 1, '2024-01-08'),
(16, 6, 2, '2024-01-08'),
(17, 7, 4, '2024-01-09'),
(18, 8, 3, '2024-01-09'),
(19, 9, 1, '2024-01-10'),
(20, 10, 2, '2024-01-10'),
(1, 11, 1, '2024-01-11'),
(2, 12, 5, '2024-01-11'),
(3, 13, 2, '2024-01-12'),
(4, 14, 3, '2024-01-12'),
(5, 15, 1, '2024-01-13'),
(6, 16, 2, '2024-01-13'),
(7, 17, 4, '2024-01-14'),
(8, 18, 2, '2024-01-14'),
(9, 19, 3, '2024-01-15'),
(10, 20, 1, '2024-01-15'),
(11, 1, 2, '2024-01-16'),
(12, 2, 1, '2024-01-16'),
(13, 3, 3, '2024-01-17'),
(14, 4, 2, '2024-01-17'),
(15, 5, 1, '2024-01-18'),
(16, 6, 2, '2024-01-18'),
(17, 7, 5, '2024-01-19'),
(18, 8, 1, '2024-01-19'),
(19, 9, 4, '2024-01-20'),
(20, 10, 2, '2024-01-20');

-- Tabelas para consultas 

SELECT COUNT(*) AS total_produtos_em_estoque
FROM PRODUTOS
WHERE quantidade_estoque > 0;

-- Vendas por Cliente
SELECT c.nome AS cliente, SUM(v.quantidade) AS total_vendas
FROM VENDAS v
JOIN CLIENTES c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente
ORDER BY total_vendas DESC;

--  Vendas Realizadas
SELECT SUM(v.quantidade) AS total_vendas
FROM VENDAS v;

-- Vendas por Produto

SELECT p.nome AS produto, SUM(v.quantidade) AS total_vendas
FROM VENDAS v
JOIN PRODUTOS p ON v.id_produto = p.id_produto
GROUP BY p.id_produto
ORDER BY total_vendas DESC;


--  Vendas por Data
SELECT DATE(v.data_venda) AS data_venda, SUM(v.quantidade) AS total_vendas
FROM VENDAS v
GROUP BY DATE(v.data_venda)
ORDER BY data_venda;

-- Maior Estoque

SELECT nome, quantidade_estoque
FROM PRODUTOS
ORDER BY quantidade_estoque DESC
LIMIT 1;

-- Mais Compras

SELECT c.nome AS cliente, COUNT(v.id_venda) AS numero_de_compras
FROM CLIENTES c
LEFT JOIN VENDAS v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
ORDER BY numero_de_compras DESC;


