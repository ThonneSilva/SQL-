create database Atv31_8;
use Atv31_8;
 
CREATE TABLE Fornecedores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    contato VARCHAR(50),
    endereco VARCHAR(255)
);

CREATE TABLE Produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Mesas (
    id INT PRIMARY KEY,
    numero INT,
    status VARCHAR(20)
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    mesa_id INT,
    data_pedido TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (mesa_id) REFERENCES Mesas(id)
);

CREATE TABLE ItensPedido (
    id INT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
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
(11, 'Fornecedor K', '1111-1111', 'Rua K, 111'),
(12, 'Fornecedor L', '1212-1212', 'Rua L, 222'),
(13, 'Fornecedor M', '1313-1313', 'Rua M, 333'),
(14, 'Fornecedor N', '1414-1414', 'Rua N, 444'),
(15, 'Fornecedor O', '1515-1515', 'Rua O, 555'),
(16, 'Fornecedor P', '1616-1616', 'Rua P, 666'),
(17, 'Fornecedor Q', '1717-1717', 'Rua Q, 777'),
(18, 'Fornecedor R', '1818-1818', 'Rua R, 888'),
(19, 'Fornecedor S', '1919-1919', 'Rua S, 999'),
(20, 'Fornecedor T', '2020-2020', 'Rua T, 1010'),
(21, 'Fornecedor U', '2121-2121', 'Rua U, 1111'),
(22, 'Fornecedor V', '2222-2222', 'Rua V, 1212'),
(23, 'Fornecedor W', '2323-2323', 'Rua W, 1313'),
(24, 'Fornecedor X', '2424-2424', 'Rua X, 1414'),
(25, 'Fornecedor Y', '2525-2525', 'Rua Y, 1515'),
(26, 'Fornecedor Z', '2626-2626', 'Rua Z, 1616'),
(27, 'Fornecedor AA', '2727-2727', 'Rua AA, 1717'),
(28, 'Fornecedor AB', '2828-2828', 'Rua AB, 1818'),
(29, 'Fornecedor AC', '2929-2929', 'Rua AC, 1919'),
(30, 'Fornecedor AD', '3030-3030', 'Rua AD, 2020'),
(31, 'Fornecedor AE', '3131-3131', 'Rua AE, 2121'),
(32, 'Fornecedor AF', '3232-3232', 'Rua AF, 2222'),
(33, 'Fornecedor AG', '3333-3333', 'Rua AG, 2323'),
(34, 'Fornecedor AH', '3434-3434', 'Rua AH, 2424'),
(35, 'Fornecedor AI', '3535-3535', 'Rua AI, 2525'),
(36, 'Fornecedor AJ', '3636-3636', 'Rua AJ, 2626'),
(37, 'Fornecedor AK', '3737-3737', 'Rua AK, 2727'),
(38, 'Fornecedor AL', '3838-3838', 'Rua AL, 2828'),
(39, 'Fornecedor AM', '3939-3939', 'Rua AM, 2929'),
(40, 'Fornecedor AN', '4040-4040', 'Rua AN, 3030'),
(41, 'Fornecedor AO', '4141-4141', 'Rua AO, 3131'),
(42, 'Fornecedor AP', '4242-4242', 'Rua AP, 3232'),
(43, 'Fornecedor AQ', '4343-4343', 'Rua AQ, 3333'),
(44, 'Fornecedor AR', '4444-4444', 'Rua AR, 3434'),
(45, 'Fornecedor AS', '4545-4545', 'Rua AS, 3535'),
(46, 'Fornecedor AT', '4646-4646', 'Rua AT, 3636'),
(47, 'Fornecedor AU', '4747-4747', 'Rua AU, 3737'),
(48, 'Fornecedor AV', '4848-4848', 'Rua AV, 3838'),
(49, 'Fornecedor AW', '4949-4949', 'Rua AW, 3939'),
(50, 'Fornecedor AX', '5050-5050', 'Rua AX, 4040');

INSERT INTO Produtos 
(id, nome, categoria, preco, fornecedor_id) 
VALUES
(1, 'Picanha', 'carne', 49.90, 1),
(2, 'Fraldinha', 'carne', 39.90, 1),
(3, 'Cerveja', 'bebida', 7.50, 2),
(4, 'Refrigerante', 'bebida', 5.00, 2),
(5, 'Vinagrete', 'acompanhamento', 3.50, 3),
(6, 'Farofa', 'acompanhamento', 4.00, 3),
(7, 'Salada', 'acompanhamento', 6.00, 4),
(8, 'Doce de Leite', 'sobremesa', 8.00, 1),
(9, 'Pudim', 'sobremesa', 7.00, 5),
(10, 'Torta de Limão', 'sobremesa', 9.00, 6),
(11, 'Costela', 'carne', 55.00, 1),
(12, 'Linguiça', 'carne', 25.00, 1),
(13, 'Água Mineral', 'bebida', 3.00, 2),
(14, 'Suco Natural', 'bebida', 6.00, 2),
(15, 'Arroz', 'acompanhamento', 4.00, 3),
(16, 'Feijão', 'acompanhamento', 5.00, 3),
(17, 'Batata Frita', 'acompanhamento', 7.00, 4),
(18, 'Sorvete', 'sobremesa', 10.00, 5),
(19, 'Mousse de Chocolate', 'sobremesa', 12.00, 6),
(20, 'Torta de Frutas', 'sobremesa', 11.00, 1),
(21, 'Churrasco de Cordeiro', 'carne', 70.00, 1),
(22, 'Peixe Grelhado', 'carne', 45.00, 1),
(23, 'Vinho Tinto', 'bebida', 35.00, 2),
(24, 'Vinho Branco', 'bebida', 30.00, 2),
(25, 'Salada de Frutas', 'acompanhamento', 8.00, 3),
(26, 'Polenta', 'acompanhamento', 5.50, 3),
(27, 'Bife Acebolado', 'carne', 29.90, 1),
(28, 'Galinha Caipira', 'carne', 35.00, 1),
(29, 'Brahma', 'bebida', 7.00, 2),
(30, 'Skol', 'bebida', 6.50, 2),
(31, 'Tapioca', 'acompanhamento', 4.50, 3),
(32, 'Pão de Queijo', 'acompanhamento', 5.00, 3),
(33, 'Gelatina', 'sobremesa', 4.00, 4),
(34, 'Crepe', 'sobremesa', 9.00, 5),
(35, 'Brownie', 'sobremesa', 8.50, 6),
(36, 'Frango a Parmegiana', 'carne', 32.00, 1),
(37, 'Pernil', 'carne', 50.00, 1),
(38, 'Refrigerante Diet', 'bebida', 5.00, 2),
(39, 'Chá Gelado', 'bebida', 4.50, 2),
(40, 'Fritas', 'acompanhamento', 6.00, 3),
(41, 'Pão Francês', 'acompanhamento', 1.50, 3),
(42, 'Cuscuz', 'acompanhamento', 3.00, 4),
(43, 'Cocada', 'sobremesa', 3.50, 5),
(44, 'Bolo de Cenoura', 'sobremesa', 7.00, 6),
(45, 'Bolo de Chocolate', 'sobremesa', 6.50, 1),
(46, 'Marmelada', 'sobremesa', 5.00, 2),
(47, 'Pasta de Amendoim', 'sobremesa', 4.50, 3),
(48, 'Bolo de Limão', 'sobremesa', 5.50, 4),
(49, 'Doce de Abóbora', 'sobremesa', 4.00, 5),
(50, 'Geléia de Frutas', 'sobremesa', 4.00, 6);

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

INSERT INTO Mesas 
(id, numero, status) 
VALUES
(1, 1, 'disponível'),
(2, 2, 'ocupada'),
(3, 3, 'ocupada'),
(4, 4, 'disponível'),
(5, 5, 'disponível'),
(6, 6, 'ocupada'),
(7, 7, 'disponível'),
(8, 8, 'disponível'),
(9, 9, 'ocupada'),
(10, 10, 'disponível'),
(11, 11, 'disponível'),
(12, 12, 'ocupada'),
(13, 13, 'ocupada'),
(14, 14, 'disponível'),
(15, 15, 'disponível'),
(16, 16, 'ocupada'),
(17, 17, 'disponível'),
(18, 18, 'disponível'),
(19, 19, 'ocupada'),
(20, 20, 'disponível'),
(21, 21, 'disponível'),
(22, 22, 'ocupada'),
(23, 23, 'ocupada'),
(24, 24, 'disponível'),
(25, 25, 'disponível'),
(26, 26, 'ocupada'),
(27, 27, 'disponível'),
(28, 28, 'disponível'),
(29, 29, 'ocupada'),
(30, 30, 'disponível'),
(31, 31, 'disponível'),
(32, 32, 'ocupada'),
(33, 33, 'ocupada'),
(34, 34, 'disponível'),
(35, 35, 'disponível'),
(36, 36, 'ocupada'),
(37, 37, 'disponível'),
(38, 38, 'disponível'),
(39, 39, 'ocupada'),
(40, 40, 'disponível'),
(41, 41, 'disponível'),
(42, 42, 'ocupada'),
(43, 43, 'ocupada'),
(44, 44, 'disponível'),
(45, 45, 'disponível'),
(46, 46, 'ocupada'),
(47, 47, 'disponível'),
(48, 48, 'disponível'),
(49, 49, 'ocupada'),
(50, 50, 'disponível');

INSERT INTO Pedidos 
(id, cliente_id, mesa_id, data_pedido, total) 
VALUES
(1, 1, 1, NOW(), 100.00),
(2, 2, 2, NOW(), 75.50),
(3, 3, 3, NOW(), 150.00),
(4, 4, 4, NOW(), 90.00),
(5, 5, 5, NOW(), 120.00),
(6, 6, 6, NOW(), 110.00),
(7, 7, 7, NOW(), 85.00),
(8, 8, 8, NOW(), 130.00),
(9, 9, 9, NOW(), 95.00),
(10, 10, 10, NOW(), 115.00),
(11, 11, 11, NOW(), 160.00),
(12, 12, 12, NOW(), 80.00),
(13, 13, 13, NOW(), 145.00),
(14, 14, 14, NOW(), 200.00),
(15, 15, 15, NOW(), 70.00),
(16, 16, 16, NOW(), 140.00),
(17, 17, 17, NOW(), 90.00),
(18, 18, 18, NOW(), 105.00),
(19, 19, 19, NOW(), 50.00),
(20, 20, 20, NOW(), 130.00),
(21, 21, 21, NOW(), 125.00),
(22, 22, 22, NOW(), 85.00),
(23, 23, 23, NOW(), 95.00),
(24, 24, 24, NOW(), 150.00),
(25, 25, 25, NOW(), 175.00),
(26, 26, 26, NOW(), 65.00),
(27, 27, 27, NOW(), 80.00),
(28, 28, 28, NOW(), 110.00),
(29, 29, 29, NOW(), 140.00),
(30, 30, 30, NOW(), 90.00),
(31, 31, 31, NOW(), 120.00),
(32, 32, 32, NOW(), 100.00),
(33, 33, 33, NOW(), 130.00),
(34, 34, 34, NOW(), 80.00),
(35, 35, 35, NOW(), 170.00),
(36, 36, 36, NOW(), 60.00),
(37, 37, 37, NOW(), 140.00),
(38, 38, 38, NOW(), 75.00),
(39, 39, 39, NOW(), 125.00),
(40, 40, 40, NOW(), 190.00),
(41, 41, 41, NOW(), 110.00),
(42, 42, 42, NOW(), 130.00),
(43, 43, 43, NOW(), 80.00),
(44, 44, 44, NOW(), 150.00),
(45, 45, 45, NOW(), 200.00),
(46, 46, 46, NOW(), 70.00),
(47, 47, 47, NOW(), 140.00),
(48, 48, 48, NOW(), 100.00),
(49, 49, 49, NOW(), 130.00),
(50, 50, 50, NOW(), 160.00);

INSERT INTO ItensPedido 
(id, pedido_id, produto_id, quantidade, subtotal) 
VALUES
(1, 1, 1, 2, 99.80),
(2, 1, 3, 5, 37.50),
(3, 2, 2, 1, 39.90),
(4, 2, 4, 2, 10.00),
(5, 3, 1, 3, 149.70),
(6, 3, 2, 2, 79.80),
(7, 4, 5, 1, 3.50),
(8, 4, 6, 2, 8.00),
(9, 5, 7, 1, 6.00),
(10, 6, 8, 2, 16.00),
(11, 7, 9, 1, 7.00),
(12, 8, 10, 2, 18.00),
(13, 9, 1, 2, 99.80),
(14, 10, 2, 1, 39.90),
(15, 11, 3, 3, 22.50),
(16, 12, 4, 1, 5.00),
(17, 13, 5, 2, 7.00),
(18, 14, 6, 1, 8.00),
(19, 15, 7, 2, 12.00),
(20, 16, 8, 2, 16.00),
(21, 17, 9, 1, 7.00),
(22, 18, 10, 1, 9.00),
(23, 19, 1, 3, 149.70),
(24, 20, 2, 2, 79.80),
(25, 21, 3, 1, 7.50),
(26, 22, 4, 2, 10.00),
(27, 23, 5, 1, 3.50),
(28, 24, 6, 1, 4.00),
(29, 25, 7, 1, 6.00),
(30, 26, 8, 1, 8.00),
(31, 27, 9, 1, 7.00),
(32, 28, 10, 1, 9.00),
(33, 29, 1, 2, 99.80),
(34, 30, 2, 1, 39.90),
(35, 31, 3, 1, 22.50),
(36, 32, 4, 1, 10.00),
(37, 33, 5, 2, 7.00),
(38, 34, 6, 1, 8.00),
(39, 35, 7, 1, 6.00),
(40, 36, 8, 2, 16.00),
(41, 37, 9, 2, 14.00),
(42, 38, 10, 1, 9.00),
(43, 39, 1, 3, 149.70),
(44, 40, 2, 2, 79.80),
(45, 41, 3, 1, 22.50),
(46, 42, 4, 1, 10.00),
(47, 43, 5, 2, 14.00),
(48, 44, 6, 1, 8.00),
(49, 45, 7, 1, 6.00),
(50, 46, 8, 1, 10.00);

SELECT * FROM Produtos;

SELECT c.nome, SUM(p.total) AS total_vendas
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.id
GROUP BY c.nome;

SELECT * FROM Mesas WHERE status = 'ocupada';

SELECT p.id AS pedido_id, c.nome AS cliente, i.quantidade, pr.nome AS produto, i.subtotal
FROM Pedidos p
JOIN Clientes c ON p.cliente_id = c.id
JOIN ItensPedido i ON p.id = i.pedido_id
JOIN Produtos pr ON i.produto_id = pr.id;

SELECT SUM(total) AS total_vendas_dia
FROM Pedidos
WHERE DATE(data_pedido) = CURDATE();

SELECT m.numero, SUM(p.total) AS total_vendas
FROM Pedidos p
JOIN Mesas m ON p.mesa_id = m.id
GROUP BY m.numero;

SELECT pr.nome, SUM(i.quantidade) AS total_vendido
FROM ItensPedido i
JOIN Produtos pr ON i.produto_id = pr.id
GROUP BY pr.nome
ORDER BY total_vendido DESC;

SELECT *
FROM Pedidos
WHERE DATE(data_pedido) = '2024-10-24'; 


