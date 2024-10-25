CREATE DATABASE Atv31_4;
USE Atv31_4;

CREATE TABLE Fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(50),
    endereco VARCHAR(255)
);

CREATE TABLE Vinhos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tipo VARCHAR(50),
    ano INT,
    teor_alcoolico DECIMAL(5, 2),
    quantidade INT,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_venda TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensVenda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venda_id INT,
    vinho_id INT,
    quantidade INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (vinho_id) REFERENCES Vinhos(id)
);


INSERT INTO Fornecedores 
(nome, contato, endereco) 
VALUES
('Fornecedor A', '1234-5678', 'Rua A, 123'),
('Fornecedor B', '2345-6789', 'Rua B, 234'),
('Fornecedor C', '3456-7890', 'Rua C, 345'),
('Fornecedor D', '4567-8901', 'Rua D, 456'),
('Fornecedor E', '5678-9012', 'Rua E, 567'),
('Fornecedor F', '6789-0123', 'Rua F, 678'),
('Fornecedor G', '7890-1234', 'Rua G, 789'),
('Fornecedor H', '8901-2345', 'Rua H, 890'),
('Fornecedor I', '9012-3456', 'Rua I, 901'),
('Fornecedor J', '1010-1010', 'Rua J, 10'),
('Fornecedor K', '1111-1111', 'Rua K, 11'),
('Fornecedor L', '1212-1212', 'Rua L, 12'),
('Fornecedor M', '1313-1313', 'Rua M, 13'),
('Fornecedor N', '1414-1414', 'Rua N, 14'),
('Fornecedor O', '1515-1515', 'Rua O, 15'),
('Fornecedor P', '1616-1616', 'Rua P, 16'),
('Fornecedor Q', '1717-1717', 'Rua Q, 17'),
('Fornecedor R', '1818-1818', 'Rua R, 18'),
('Fornecedor S', '1919-1919', 'Rua S, 19'),
('Fornecedor T', '2020-2020', 'Rua T, 20'),
('Fornecedor U', '2121-2121', 'Rua U, 21'),
('Fornecedor V', '2222-2222', 'Rua V, 22'),
('Fornecedor W', '2323-2323', 'Rua W, 23'),
('Fornecedor X', '2424-2424', 'Rua X, 24'),
('Fornecedor Y', '2525-2525', 'Rua Y, 25'),
('Fornecedor Z', '2626-2626', 'Rua Z, 26'),
('Fornecedor AA', '2727-2727', 'Rua AA, 27'),
('Fornecedor AB', '2828-2828', 'Rua AB, 28'),
('Fornecedor AC', '2929-2929', 'Rua AC, 29'),
('Fornecedor AD', '3030-3030', 'Rua AD, 30'),
('Fornecedor AE', '3131-3131', 'Rua AE, 31'),
('Fornecedor AF', '3232-3232', 'Rua AF, 32'),
('Fornecedor AG', '3333-3333', 'Rua AG, 33'),
('Fornecedor AH', '3434-3434', 'Rua AH, 34'),
('Fornecedor AI', '3535-3535', 'Rua AI, 35'),
('Fornecedor AJ', '3636-3636', 'Rua AJ, 36'),
('Fornecedor AK', '3737-3737', 'Rua AK, 37'),
('Fornecedor AL', '3838-3838', 'Rua AL, 38'),
('Fornecedor AM', '3939-3939', 'Rua AM, 39'),
('Fornecedor AN', '4040-4040', 'Rua AN, 40'),
('Fornecedor AO', '4141-4141', 'Rua AO, 41'),
('Fornecedor AP', '4242-4242', 'Rua AP, 42'),
('Fornecedor AQ', '4343-4343', 'Rua AQ, 43'),
('Fornecedor AR', '4444-4444', 'Rua AR, 44'),
('Fornecedor AS', '4545-4545', 'Rua AS, 45'),
('Fornecedor AT', '4646-4646', 'Rua AT, 46'),
('Fornecedor AU', '4747-4747', 'Rua AU, 47'),
('Fornecedor AV', '4848-4848', 'Rua AV, 48'),
('Fornecedor AW', '4949-4949', 'Rua AW, 49'),
('Fornecedor AX', '5050-5050', 'Rua AX, 50');


INSERT INTO Vinhos 
(nome, tipo, ano, teor_alcoolico, quantidade, fornecedor_id) 
VALUES
('Vinho Tinto A', 'Tinto', 2018, 13.5, 100, 1),
('Vinho Tinto B', 'Tinto', 2019, 14.0, 80, 2),
('Vinho Branco A', 'Branco', 2020, 12.5, 60, 3),
('Vinho Branco B', 'Branco', 2019, 13.0, 90, 4),
('Vinho Rosé A', 'Rosé', 2021, 11.5, 70, 5),
('Vinho Espumante A', 'Espumante', 2022, 12.0, 50, 6),
('Vinho Tinto C', 'Tinto', 2017, 15.0, 40, 7),
('Vinho Tinto D', 'Tinto', 2018, 14.5, 30, 8),
('Vinho Branco C', 'Branco', 2020, 13.5, 20, 9),
('Vinho Rosé B', 'Rosé', 2021, 12.0, 25, 10),
('Vinho Tinto E', 'Tinto', 2016, 14.0, 35, 1),
('Vinho Branco D', 'Branco', 2021, 12.5, 15, 2),
('Vinho Tinto F', 'Tinto', 2018, 13.0, 50, 3),
('Vinho Tinto G', 'Tinto', 2019, 12.5, 45, 4),
('Vinho Espumante B', 'Espumante', 2020, 11.5, 55, 5),
('Vinho Tinto H', 'Tinto', 2017, 14.5, 60, 6),
('Vinho Branco E', 'Branco', 2020, 12.0, 20, 7),
('Vinho Rosé C', 'Rosé', 2021, 13.0, 30, 8),
('Vinho Tinto I', 'Tinto', 2018, 13.5, 25, 9),
('Vinho Tinto J', 'Tinto', 2016, 14.0, 35, 10),
('Vinho Branco F', 'Branco', 2019, 11.0, 50, 1),
('Vinho Tinto K', 'Tinto', 2020, 12.0, 60, 2),
('Vinho Tinto L', 'Tinto', 2019, 14.5, 55, 3),
('Vinho Rosé D', 'Rosé', 2021, 13.5, 20, 4),
('Vinho Tinto M', 'Tinto', 2018, 13.0, 30, 5),
('Vinho Tinto N', 'Tinto', 2020, 12.5, 25, 6),
('Vinho Espumante C', 'Espumante', 2021, 11.5, 15, 7),
('Vinho Tinto O', 'Tinto', 2017, 14.0, 40, 8),
('Vinho Branco G', 'Branco', 2020, 12.0, 20, 9),
('Vinho Tinto P', 'Tinto', 2019, 14.5, 35, 10),
('Vinho Tinto Q', 'Tinto', 2020, 13.5, 60, 1),
('Vinho Tinto R', 'Tinto', 2018, 12.0, 70, 2),
('Vinho Branco H', 'Branco', 2021, 11.0, 80, 3),
('Vinho Tinto S', 'Tinto', 2019, 13.0, 50, 4),
('Vinho Tinto T', 'Tinto', 2020, 12.5, 40, 5),
('Vinho Rosé E', 'Rosé', 2021, 13.5, 30, 6),
('Vinho Tinto U', 'Tinto', 2018, 14.0, 35, 7),
('Vinho Branco I', 'Branco', 2020, 12.0, 20, 8),
('Vinho Tinto V', 'Tinto', 2019, 14.5, 50, 9),
('Vinho Espumante D', 'Espumante', 2021, 11.0, 15, 10),
('Vinho Tinto W', 'Tinto', 2016, 13.0, 55, 1),
('Vinho Branco J', 'Branco', 2021, 12.0, 75, 2),
('Vinho Rosé F', 'Rosé', 2021, 12.5, 40, 3),
('Vinho Tinto X', 'Tinto', 2018, 14.5, 30, 4),
('Vinho Tinto Y', 'Tinto', 2020, 13.5, 80, 5),
('Vinho Branco K', 'Branco', 2019, 11.0, 65, 6),
('Vinho Espumante E', 'Espumante', 2022, 12.0, 50, 7),
('Vinho Tinto Z', 'Tinto', 2018, 14.0, 90, 8),
('Vinho Branco I', 'Branco', 2023, 13.0, 20, 7),
('Vinho Branco I', 'Branco', 2020, 17.0, 50, 5),
('Vinho Branco I', 'Branco', 2020, 11.0, 30, 2);

INSERT INTO Clientes 
(nome, telefone, email)
 VALUES
('Cliente A', '9999-0001', 'clienteA@email.com'),
('Cliente B', '9999-0002', 'clienteB@email.com'),
('Cliente C', '9999-0003', 'clienteC@email.com'),
('Cliente D', '9999-0004', 'clienteD@email.com'),
('Cliente E', '9999-0005', 'clienteE@email.com'),
('Cliente F', '9999-0006', 'clienteF@email.com'),
('Cliente G', '9999-0007', 'clienteG@email.com'),
('Cliente H', '9999-0008', 'clienteH@email.com'),
('Cliente I', '9999-0009', 'clienteI@email.com'),
('Cliente J', '9999-0010', 'clienteJ@email.com'),
('Cliente K', '9999-0011', 'clienteK@email.com'),
('Cliente L', '9999-0012', 'clienteL@email.com'),
('Cliente M', '9999-0013', 'clienteM@email.com'),
('Cliente N', '9999-0014', 'clienteN@email.com'),
('Cliente O', '9999-0015', 'clienteO@email.com'),
('Cliente P', '9999-0016', 'clienteP@email.com'),
('Cliente Q', '9999-0017', 'clienteQ@email.com'),
('Cliente R', '9999-0018', 'clienteR@email.com'),
('Cliente S', '9999-0019', 'clienteS@email.com'),
('Cliente T', '9999-0020', 'clienteT@email.com'),
('Cliente U', '9999-0021', 'clienteU@email.com'),
('Cliente V', '9999-0022', 'clienteV@email.com'),
('Cliente W', '9999-0023', 'clienteW@email.com'),
('Cliente X', '9999-0024', 'clienteX@email.com'),
('Cliente Y', '9999-0025', 'clienteY@email.com'),
('Cliente Z', '9999-0026', 'clienteZ@email.com'),
('Cliente AA', '9999-0027', 'clienteAA@email.com'),
('Cliente AB', '9999-0028', 'clienteAB@email.com'),
('Cliente AC', '9999-0029', 'clienteAC@email.com'),
('Cliente AD', '9999-0030', 'clienteAD@email.com'),
('Cliente AE', '9999-0031', 'clienteAE@email.com'),
('Cliente AF', '9999-0032', 'clienteAF@email.com'),
('Cliente AG', '9999-0033', 'clienteAG@email.com'),
('Cliente AH', '9999-0034', 'clienteAH@email.com'),
('Cliente AI', '9999-0035', 'clienteAI@email.com'),
('Cliente AJ', '9999-0036', 'clienteAJ@email.com'),
('Cliente AK', '9999-0037', 'clienteAK@email.com'),
('Cliente AL', '9999-0038', 'clienteAL@email.com'),
('Cliente AM', '9999-0039', 'clienteAM@email.com'),
('Cliente AN', '9999-0040', 'clienteAN@email.com'),
('Cliente AO', '9999-0041', 'clienteAO@email.com'),
('Cliente AP', '9999-0042', 'clienteAP@email.com'),
('Cliente AQ', '9999-0043', 'clienteAQ@email.com'),
('Cliente AR', '9999-0044', 'clienteAR@email.com'),
('Cliente AS', '9999-0045', 'clienteAS@email.com'),
('Cliente AT', '9999-0046', 'clienteAT@email.com'),
('Cliente AU', '9999-0047', 'clienteAU@email.com'),
('Cliente AV', '9999-0048', 'clienteAV@email.com'),
('Cliente AW', '9999-0049', 'clienteAW@email.com'),
('Cliente AX', '9999-0050', 'clienteAX@email.com');


INSERT INTO Vendas 
(cliente_id, data_venda, total) 
VALUES
(1, NOW(), 150.00),
(2, NOW(), 200.00),
(3, NOW(), 120.00),
(4, NOW(), 250.00),
(5, NOW(), 180.00),
(6, NOW(), 130.00),
(7, NOW(), 220.00),
(8, NOW(), 160.00),
(9, NOW(), 90.00),
(10, NOW(), 300.00),
(11, NOW(), 140.00),
(12, NOW(), 130.00),
(13, NOW(), 100.00),
(14, NOW(), 170.00),
(15, NOW(), 110.00),
(16, NOW(), 180.00),
(17, NOW(), 190.00),
(18, NOW(), 160.00),
(19, NOW(), 220.00),
(20, NOW(), 140.00),
(21, NOW(), 250.00),
(22, NOW(), 300.00),
(23, NOW(), 130.00),
(24, NOW(), 110.00),
(25, NOW(), 210.00),
(26, NOW(), 180.00),
(27, NOW(), 200.00),
(28, NOW(), 150.00),
(29, NOW(), 160.00),
(30, NOW(), 170.00),
(31, NOW(), 140.00),
(32, NOW(), 190.00),
(33, NOW(), 130.00),
(34, NOW(), 160.00),
(35, NOW(), 180.00),
(36, NOW(), 140.00),
(37, NOW(), 170.00),
(38, NOW(), 200.00),
(39, NOW(), 250.00),
(40, NOW(), 120.00),
(41, NOW(), 160.00),
(42, NOW(), 170.00),
(43, NOW(), 140.00),
(44, NOW(), 130.00),
(45, NOW(), 190.00),
(46, NOW(), 110.00),
(47, NOW(), 150.00),
(48, NOW(), 180.00),
(49, NOW(), 160.00),
(50, NOW(), 140.00);


INSERT INTO ItensVenda 
(venda_id, vinho_id, quantidade, subtotal) 
VALUES
(1, 1, 2, 27.00),
(1, 2, 1, 20.00),
(2, 3, 3, 37.50),
(2, 4, 2, 22.00),
(3, 5, 1, 25.00),
(4, 6, 4, 48.00),
(5, 7, 2, 55.00),
(6, 8, 5, 75.00),
(7, 9, 1, 15.00),
(8, 10, 3, 60.00),
(9, 1, 2, 27.00),
(10, 2, 1, 20.00),
(11, 3, 2, 45.00),
(12, 4, 4, 88.00),
(13, 5, 3, 75.00),
(14, 6, 5, 100.00),
(15, 7, 1, 25.00),
(16, 8, 2, 40.00),
(17, 9, 3, 45.00),
(18, 10, 4, 80.00),
(19, 1, 2, 27.00),
(20, 2, 1, 20.00),
(21, 3, 3, 45.00),
(22, 4, 2, 22.00),
(23, 5, 1, 25.00),
(24, 6, 4, 48.00),
(25, 7, 2, 55.00),
(26, 8, 5, 75.00),
(27, 9, 1, 15.00),
(28, 10, 3, 60.00),
(29, 1, 2, 27.00),
(30, 2, 1, 20.00),
(31, 3, 2, 45.00),
(32, 4, 4, 88.00),
(33, 5, 3, 75.00),
(34, 6, 5, 100.00),
(35, 7, 1, 25.00),
(36, 8, 2, 40.00),
(37, 9, 3, 45.00),
(38, 10, 4, 80.00),
(39, 1, 2, 27.00),
(40, 2, 1, 20.00),
(41, 3, 3, 45.00),
(42, 4, 2, 22.00),
(43, 5, 1, 25.00),
(44, 6, 4, 48.00),
(45, 7, 2, 55.00),
(46, 8, 5, 75.00),
(47, 9, 1, 15.00),
(48, 10, 3, 60.00),
(49, 1, 2, 27.00),
(50, 2, 1, 20.00);

SELECT id, nome, tipo, ano, teor_alcoolico, quantidade 
FROM Vinhos 
WHERE quantidade > 0;

SELECT v.id AS venda_id, c.nome AS cliente, v.data_venda, v.total 
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
ORDER BY v.data_venda DESC;

SELECT iv.venda_id, v.data_venda, w.nome AS vinho, iv.quantidade, iv.subtotal
FROM ItensVenda iv
JOIN Vendas v ON iv.venda_id = v.id
JOIN Vinhos w ON iv.vinho_id = w.id
ORDER BY iv.venda_id;

SELECT c.nome, SUM(v.total) AS total_vendas
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
GROUP BY c.nome;

SELECT w.nome, SUM(iv.quantidade) AS total_vendido
FROM ItensVenda iv
JOIN Vinhos w ON iv.vinho_id = w.id
GROUP BY w.nome
ORDER BY total_vendido DESC;

SELECT v.id AS venda_id, c.nome AS cliente, v.data_venda, v.total 
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
WHERE v.data_venda >= NOW() - INTERVAL 7 DAY
ORDER BY v.data_venda DESC;

SELECT SUM(quantidade) AS total_vinhos_em_estoque 
FROM Vinhos;