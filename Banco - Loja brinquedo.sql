Create database Atv31_6;
Use Atv31_6;
drop database atv31_6;
CREATE TABLE Fornecedores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    contato VARCHAR(50),
    endereco VARCHAR(255)
);

CREATE TABLE Brinquedos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade INT,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Vendas (
    id INT PRIMARY KEY,
    cliente_id INT,
    data_venda TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE ItensVenda (
    id INT PRIMARY KEY,
    venda_id INT,
    brinquedo_id INT,
    quantidade INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (venda_id) REFERENCES Vendas(id),
    FOREIGN KEY (brinquedo_id) REFERENCES Brinquedos(id)
);

INSERT INTO Fornecedores 
(id, nome, contato, endereco) 
VALUES
(1, 'Fornecedor A', '1234-5678', 'Rua A, 123'),
(2, 'Fornecedor B', '2345-6789', 'Rua B, 234'),
(3, 'Fornecedor C', '3456-7890', 'Rua C, 345'),
(4, 'Fornecedor D', '4567-8901', 'Rua D, 456'),
(5, 'Fornecedor E', '5678-9012', 'Rua E, 567'),
(6, 'Fornecedor F', '6789-0123', 'Rua F, 678'),
(7, 'Fornecedor G', '7890-1234', 'Rua G, 789'),
(8, 'Fornecedor H', '8901-2345', 'Rua H, 890'),
(9, 'Fornecedor I', '9012-3456', 'Rua I, 901'),
(10, 'Fornecedor J', '1010-1010', 'Rua J, 10'),
(11, 'Fornecedor K', '1111-1111', 'Rua K, 11'),
(12, 'Fornecedor L', '1212-1212', 'Rua L, 12'),
(13, 'Fornecedor M', '1313-1313', 'Rua M, 13'),
(14, 'Fornecedor N', '1414-1414', 'Rua N, 14'),
(15, 'Fornecedor O', '1515-1515', 'Rua O, 15'),
(16, 'Fornecedor P', '1616-1616', 'Rua P, 16'),
(17, 'Fornecedor Q', '1717-1717', 'Rua Q, 17'),
(18, 'Fornecedor R', '1818-1818', 'Rua R, 18'),
(19, 'Fornecedor S', '1919-1919', 'Rua S, 19'),
(20, 'Fornecedor T', '2020-2020', 'Rua T, 20'),
(21, 'Fornecedor U', '2121-2121', 'Rua U, 21'),
(22, 'Fornecedor V', '2222-2222', 'Rua V, 22'),
(23, 'Fornecedor W', '2323-2323', 'Rua W, 23'),
(24, 'Fornecedor X', '2424-2424', 'Rua X, 24'),
(25, 'Fornecedor Y', '2525-2525', 'Rua Y, 25'),
(26, 'Fornecedor Z', '2626-2626', 'Rua Z, 26'),
(27, 'Fornecedor AA', '2727-2727', 'Rua AA, 27'),
(28, 'Fornecedor AB', '2828-2828', 'Rua AB, 28'),
(29, 'Fornecedor AC', '2929-2929', 'Rua AC, 29'),
(30, 'Fornecedor AD', '3030-3030', 'Rua AD, 30'),
(31, 'Fornecedor AE', '3131-3131', 'Rua AE, 31'),
(32, 'Fornecedor AF', '3232-3232', 'Rua AF, 32'),
(33, 'Fornecedor AG', '3333-3333', 'Rua AG, 33'),
(34, 'Fornecedor AH', '3434-3434', 'Rua AH, 34'),
(35, 'Fornecedor AI', '3535-3535', 'Rua AI, 35'),
(36, 'Fornecedor AJ', '3636-3636', 'Rua AJ, 36'),
(37, 'Fornecedor AK', '3737-3737', 'Rua AK, 37'),
(38, 'Fornecedor AL', '3838-3838', 'Rua AL, 38'),
(39, 'Fornecedor AM', '3939-3939', 'Rua AM, 39'),
(40, 'Fornecedor AN', '4040-4040', 'Rua AN, 40'),
(41, 'Fornecedor AO', '4141-4141', 'Rua AO, 41'),
(42, 'Fornecedor AP', '4242-4242', 'Rua AP, 42'),
(43, 'Fornecedor AQ', '4343-4343', 'Rua AQ, 43'),
(44, 'Fornecedor AR', '4444-4444', 'Rua AR, 44'),
(45, 'Fornecedor AS', '4545-4545', 'Rua AS, 45'),
(46, 'Fornecedor AT', '4646-4646', 'Rua AT, 46'),
(47, 'Fornecedor AU', '4747-4747', 'Rua AU, 47'),
(48, 'Fornecedor AV', '4848-4848', 'Rua AV, 48'),
(49, 'Fornecedor AW', '4949-4949', 'Rua AW, 49'),
(50, 'Fornecedor AX', '5050-5050', 'Rua AX, 50');


INSERT INTO Brinquedos 
(id, nome, categoria, preco, quantidade, fornecedor_id) 
VALUES
(1, 'Urso de Pelúcia', 'Pelúcia', 29.90, 100, 1),
(2, 'Carrinho de Controle Remoto', 'Veículos', 99.90, 50, 2),
(3, 'Bola de Futebol', 'Esportes', 39.90, 200, 3),
(4, 'Quebra-Cabeça', 'Educação', 19.90, 150, 4),
(5, 'Boneca', 'Brinquedos de Interação', 49.90, 75, 5),
(6, 'Conjunto de Blocos', 'Construção', 59.90, 80, 6),
(7, 'Trenó', 'Veículos', 89.90, 30, 7),
(8, 'Pião', 'Brinquedos Tradicionais', 9.90, 300, 8),
(9, 'Bicicleta Infantil', 'Veículos', 199.90, 25, 9),
(10, 'Jogo da Memória', 'Educação', 24.90, 120, 10),
(11, 'Trompete', 'Música', 39.90, 40, 1),
(12, 'Estrela Cadente', 'Veículos', 15.90, 200, 2),
(13, 'Play-Doh', 'Artes', 29.90, 160, 3),
(14, 'Baralho', 'Jogos', 9.90, 250, 4),
(15, 'Bola de Basquete', 'Esportes', 45.90, 100, 5),
(16, 'Fantoches', 'Brinquedos de Interação', 34.90, 70, 6),
(17, 'Jogo de Tabuleiro', 'Jogos', 59.90, 40, 7),
(18, 'Dino de Pelúcia', 'Pelúcia', 29.90, 60, 8),
(19, 'Ferro de Passar', 'Brinquedos de Interação', 49.90, 30, 9),
(20, 'Estante de Blocos', 'Construção', 89.90, 80, 10),
(21, 'Carrinho de Passeio', 'Veículos', 79.90, 55, 1),
(22, 'Jogo de Xadrez', 'Jogos', 49.90, 40, 2),
(23, 'Bola de Vôlei', 'Esportes', 39.90, 90, 3),
(24, 'Trampolim', 'Atividades Físicas', 199.90, 20, 4),
(25, 'Boneco de Ação', 'Interação', 34.90, 85, 5),
(26, 'Set de Maquiagem', 'Criatividade', 24.90, 70, 6),
(27, 'Jogo de Cartas', 'Jogos', 19.90, 160, 7),
(28, 'Cubo Mágico', 'Desafios', 14.90, 110, 8),
(29, 'Robô de Brinquedo', 'Tecnologia', 129.90, 30, 9),
(30, 'Trilha de Carrinhos', 'Veículos', 89.90, 50, 10),
(31, 'Vassourinha', 'Brinquedos de Interação', 19.90, 100, 1),
(32, 'Ferro de Brincar', 'Interação', 34.90, 75, 2),
(33, 'Conjunto de Jardinagem', 'Artes', 29.90, 90, 3),
(34, 'Brinquedo de Encaixar', 'Educação', 19.90, 150, 4),
(35, 'Jogo de Construcão', 'Construção', 59.90, 80, 5),
(36, 'Mochila de Brinquedo', 'Interação', 44.90, 60, 6),
(37, 'Fantoches de Dedos', 'Interação', 39.90, 50, 7),
(38, 'Carro de Bombeiro', 'Veículos', 99.90, 40, 8),
(39, 'Caminhão de Lixo', 'Veículos', 99.90, 30, 9),
(40, 'Robô Programável', 'Tecnologia', 249.90, 15, 10),
(41, 'Bola de Gude', 'Jogos Tradicionais', 5.90, 500, 1),
(42, 'Caixa de Som', 'Tecnologia', 49.90, 80, 2),
(43, 'Conjunto de Jogos de Cartas', 'Jogos', 14.90, 200, 3),
(44, 'Estilingue', 'Jogos Tradicionais', 10.90, 150, 4),
(45, 'Pista de Carrinhos', 'Veículos', 59.90, 50, 5),
(46, 'Bingo', 'Jogos', 24.90, 60, 6),
(47, 'Carrinho de Compras', 'Interação', 29.90, 70, 7),
(48, 'Mordedor', 'Interação', 14.90, 90, 8),
(49, 'Balanço', 'Atividades Físicas', 79.90, 30, 9),
(50, 'Bola de Praia', 'Esportes', 19.90, 200, 10);

INSERT INTO Clientes 
(id, nome, telefone, email) 
VALUES
(1, 'Cliente A', '9999-0001', 'clienteA@email.com'),
(2, 'Cliente B', '9999-0002', 'clienteB@email.com'),
(3, 'Cliente C', '9999-0003', 'clienteC@email.com'),
(4, 'Cliente D', '9999-0004', 'clienteD@email.com'),
(5, 'Cliente E', '9999-0005', 'clienteE@email.com'),
(6, 'Cliente F', '9999-0006', 'clienteF@email.com'),
(7, 'Cliente G', '9999-0007', 'clienteG@email.com'),
(8, 'Cliente H', '9999-0008', 'clienteH@email.com'),
(9, 'Cliente I', '9999-0009', 'clienteI@email.com'),
(10, 'Cliente J', '9999-0010', 'clienteJ@email.com'),
(11, 'Cliente K', '9999-0011', 'clienteK@email.com'),
(12, 'Cliente L', '9999-0012', 'clienteL@email.com'),
(13, 'Cliente M', '9999-0013', 'clienteM@email.com'),
(14, 'Cliente N', '9999-0014', 'clienteN@email.com'),
(15, 'Cliente O', '9999-0015', 'clienteO@email.com'),
(16, 'Cliente P', '9999-0016', 'clienteP@email.com'),
(17, 'Cliente Q', '9999-0017', 'clienteQ@email.com'),
(18, 'Cliente R', '9999-0018', 'clienteR@email.com'),
(19, 'Cliente S', '9999-0019', 'clienteS@email.com'),
(20, 'Cliente T', '9999-0020', 'clienteT@email.com'),
(21, 'Cliente U', '9999-0021', 'clienteU@email.com'),
(22, 'Cliente V', '9999-0022', 'clienteV@email.com'),
(23, 'Cliente W', '9999-0023', 'clienteW@email.com'),
(24, 'Cliente X', '9999-0024', 'clienteX@email.com'),
(25, 'Cliente Y', '9999-0025', 'clienteY@email.com'),
(26, 'Cliente Z', '9999-0026', 'clienteZ@email.com'),
(27, 'Cliente AA', '9999-0027', 'clienteAA@email.com'),
(28, 'Cliente AB', '9999-0028', 'clienteAB@email.com'),
(29, 'Cliente AC', '9999-0029', 'clienteAC@email.com'),
(30, 'Cliente AD', '9999-0030', 'clienteAD@email.com'),
(31, 'Cliente AE', '9999-0031', 'clienteAE@email.com'),
(32, 'Cliente AF', '9999-0032', 'clienteAF@email.com'),
(33, 'Cliente AG', '9999-0033', 'clienteAG@email.com'),
(34, 'Cliente AH', '9999-0034', 'clienteAH@email.com'),
(35, 'Cliente AI', '9999-0035', 'clienteAI@email.com'),
(36, 'Cliente AJ', '9999-0036', 'clienteAJ@email.com'),
(37, 'Cliente AK', '9999-0037', 'clienteAK@email.com'),
(38, 'Cliente AL', '9999-0038', 'clienteAL@email.com'),
(39, 'Cliente AM', '9999-0039', 'clienteAM@email.com'),
(40, 'Cliente AN', '9999-0040', 'clienteAN@email.com'),
(41, 'Cliente AO', '9999-0041', 'clienteAO@email.com'),
(42, 'Cliente AP', '9999-0042', 'clienteAP@email.com'),
(43, 'Cliente AQ', '9999-0043', 'clienteAQ@email.com'),
(44, 'Cliente AR', '9999-0044', 'clienteAR@email.com'),
(45, 'Cliente AS', '9999-0045', 'clienteAS@email.com'),
(46, 'Cliente AT', '9999-0046', 'clienteAT@email.com'),
(47, 'Cliente AU', '9999-0047', 'clienteAU@email.com'),
(48, 'Cliente AV', '9999-0048', 'clienteAV@email.com'),
(49, 'Cliente AW', '9999-0049', 'clienteAW@email.com'),
(50, 'Cliente AX', '9999-0050', 'clienteAX@email.com');

INSERT INTO Vendas 
(id, cliente_id, data_venda, total) 
VALUES
(1, 1, NOW(), 150.00),
(2, 2, NOW(), 75.50),
(3, 3, NOW(), 200.00),
(4, 4, NOW(), 90.00),
(5, 5, NOW(), 120.00),
(6, 6, NOW(), 110.00),
(7, 7, NOW(), 85.00),
(8, 8, NOW(), 130.00),
(9, 9, NOW(), 95.00),
(10, 10, NOW(), 115.00),
(11, 11, NOW(), 160.00),
(12, 12, NOW(), 80.00),
(13, 13, NOW(), 145.00),
(14, 14, NOW(), 200.00),
(15, 15, NOW(), 70.00),
(16, 16, NOW(), 140.00),
(17, 17, NOW(), 90.00),
(18, 18, NOW(), 105.00),
(19, 19, NOW(), 50.00),
(20, 20, NOW(), 130.00),
(21, 21, NOW(), 125.00),
(22, 22, NOW(), 85.00),
(23, 23, NOW(), 95.00),
(24, 24, NOW(), 150.00),
(25, 25, NOW(), 175.00),
(26, 26, NOW(), 65.00),
(27, 27, NOW(), 80.00),
(28, 28, NOW(), 110.00),
(29, 29, NOW(), 135.00),
(30, 30, NOW(), 95.00),
(31, 31, NOW(), 115.00),
(32, 32, NOW(), 85.00),
(33, 33, NOW(), 75.00),
(34, 34, NOW(), 125.00),
(35, 35, NOW(), 150.00),
(36, 36, NOW(), 135.00),
(37, 37, NOW(), 190.00),
(38, 38, NOW(), 80.00),
(39, 39, NOW(), 110.00),
(40, 40, NOW(), 95.00),
(41, 41, NOW(), 70.00),
(42, 42, NOW(), 145.00),
(43, 43, NOW(), 80.00),
(44, 44, NOW(), 50.00),
(45, 45, NOW(), 60.00),
(46, 46, NOW(), 125.00),
(47, 47, NOW(), 150.00),
(48, 48, NOW(), 75.00),
(49, 49, NOW(), 90.00),
(50, 50, NOW(), 80.00);

INSERT INTO ItensVenda 
(id, venda_id, brinquedo_id, quantidade, subtotal) 
VALUES
(1, 1, 1, 2, 59.80),
(2, 1, 3, 1, 39.90),
(3, 2, 2, 1, 99.90),
(4, 2, 4, 2, 39.80),
(5, 3, 1, 3, 89.70),
(6, 3, 2, 1, 99.90),
(7, 4, 5, 1, 49.90),
(8, 4, 6, 2, 119.80),
(9, 5, 7, 1, 89.90),
(10, 6, 8, 2, 59.80),
(11, 7, 9, 1, 199.90),
(12, 8, 10, 1, 24.90),
(13, 9, 12, 3, 47.70),
(14, 10, 13, 2, 59.80),
(15, 11, 14, 1, 19.90),
(16, 12, 15, 2, 69.80),
(17, 13, 16, 1, 34.90),
(18, 14, 17, 1, 59.90),
(19, 15, 18, 2, 59.80),
(20, 16, 19, 1, 49.90),
(21, 17, 20, 1, 89.90),
(22, 18, 21, 1, 79.90),
(23, 19, 22, 1, 49.90),
(24, 20, 23, 1, 39.90),
(25, 21, 24, 1, 199.90),
(26, 22, 25, 1, 34.90),
(27, 23, 26, 1, 24.90),
(28, 24, 27, 1, 19.90),
(29, 25, 28, 1, 49.90),
(30, 26, 29, 1, 99.90),
(31, 27, 30, 1, 89.90),
(32, 28, 31, 1, 19.90),
(33, 29, 32, 1, 34.90),
(34, 30, 33, 1, 14.90),
(35, 31, 34, 1, 10.90),
(36, 32, 35, 1, 29.90),
(37, 33, 36, 1, 39.90),
(38, 34, 37, 1, 49.90),
(39, 35, 38, 1, 39.90),
(40, 36, 39, 1, 99.90),
(41, 37, 40, 1, 99.90),
(42, 38, 41, 1, 24.90),
(43, 39, 42, 1, 14.90),
(44, 40, 43, 1, 24.90),
(45, 41, 44, 1, 34.90),
(46, 42, 45, 1, 59.90),
(47, 43, 46, 1, 34.90),
(48, 44, 47, 1, 49.90),
(49, 45, 48, 1, 44.90),
(50, 46, 49, 1, 19.90);

SELECT DATE(data_venda) AS data, SUM(total) AS total_vendas
FROM Vendas
GROUP BY DATE(data_venda);

SELECT b.nome, SUM(iv.quantidade) AS total_vendido
FROM ItensVenda iv
JOIN Brinquedos b ON iv.brinquedo_id = b.id
GROUP BY b.nome
ORDER BY total_vendido DESC;

SELECT b.nome, b.quantidade
FROM Brinquedos b
WHERE b.quantidade < 20; 

SELECT SUM(total) AS total_vendas_dia
FROM Vendas
WHERE DATE(data_venda) = CURDATE();

SELECT c.nome, SUM(v.total) AS total_compras
FROM Vendas v
JOIN Clientes c ON v.cliente_id = c.id
GROUP BY c.nome
ORDER BY total_compras DESC;
