create database agroindustria;

use agroindustria;

CREATE TABLE Produtores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE Fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    contato VARCHAR(100)
);

CREATE TABLE Insumos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT,
    fornecedor_id INT,
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(id)
);

CREATE TABLE ProcessosIndustriais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    data DATE
);

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2),
    processo_id INT,
    FOREIGN KEY (processo_id) REFERENCES ProcessosIndustriais(id)
);

CREATE TABLE Vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    preco_total DECIMAL(10, 2),
    data_venda DATE,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

CREATE TABLE Funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);

CREATE TABLE Logistica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    venda_id INT,
    status VARCHAR(50),
    data_entrega DATE,
    FOREIGN KEY (venda_id) REFERENCES Vendas(id)
);

CREATE TABLE Estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT,
    data_movimentacao DATE,
    tipo_movimentacao ENUM('entrada', 'saida'),
    FOREIGN KEY (produto_id) REFERENCES Produtos(id)
);

INSERT INTO Produtores (nome, localizacao, contato) VALUES
('Produtor A', 'Cidade A', 'contatoA@exemplo.com'),
('Produtor B', 'Cidade B', 'contatoB@exemplo.com'),
('Produtor C', 'Cidade C', 'contatoC@exemplo.com'),
('Produtor D', 'Cidade D', 'contatoD@exemplo.com'),
('Produtor E', 'Cidade E', 'contatoE@exemplo.com'),
('Produtor F', 'Cidade F', 'contatoF@exemplo.com'),
('Produtor G', 'Cidade G', 'contatoG@exemplo.com'),
('Produtor H', 'Cidade H', 'contatoH@exemplo.com'),
('Produtor I', 'Cidade I', 'contatoI@exemplo.com'),
('Produtor J', 'Cidade J', 'contatoJ@exemplo.com'),
('Produtor K', 'Cidade K', 'contatoK@exemplo.com'),
('Produtor L', 'Cidade L', 'contatoL@exemplo.com'),
('Produtor M', 'Cidade M', 'contatoM@exemplo.com'),
('Produtor N', 'Cidade N', 'contatoN@exemplo.com'),
('Produtor O', 'Cidade O', 'contatoO@exemplo.com'),
('Produtor P', 'Cidade P', 'contatoP@exemplo.com'),
('Produtor Q', 'Cidade Q', 'contatoQ@exemplo.com'),
('Produtor R', 'Cidade R', 'contatoR@exemplo.com'),
('Produtor S', 'Cidade S', 'contatoS@exemplo.com'),
('Produtor T', 'Cidade T', 'contatoT@exemplo.com');

INSERT INTO Fornecedores (nome, tipo, contato) VALUES
('Fornecedor A', 'insumos', 'contatoA@fornecedor.com'),
('Fornecedor B', 'máquinas', 'contatoB@fornecedor.com'),
('Fornecedor C', 'produtos químicos', 'contatoC@fornecedor.com'),
('Fornecedor D', 'insumos', 'contatoD@fornecedor.com'),
('Fornecedor E', 'máquinas', 'contatoE@fornecedor.com'),
('Fornecedor F', 'produtos químicos', 'contatoF@fornecedor.com'),
('Fornecedor G', 'insumos', 'contatoG@fornecedor.com'),
('Fornecedor H', 'máquinas', 'contatoH@fornecedor.com'),
('Fornecedor I', 'produtos químicos', 'contatoI@fornecedor.com'),
('Fornecedor J', 'insumos', 'contatoJ@fornecedor.com'),
('Fornecedor K', 'máquinas', 'contatoK@fornecedor.com'),
('Fornecedor L', 'produtos químicos', 'contatoL@fornecedor.com'),
('Fornecedor M', 'insumos', 'contatoM@fornecedor.com'),
('Fornecedor N', 'máquinas', 'contatoN@fornecedor.com'),
('Fornecedor O', 'produtos químicos', 'contatoO@fornecedor.com'),
('Fornecedor P', 'insumos', 'contatoP@fornecedor.com'),
('Fornecedor Q', 'máquinas', 'contatoQ@fornecedor.com'),
('Fornecedor R', 'produtos químicos', 'contatoR@fornecedor.com'),
('Fornecedor S', 'insumos', 'contatoS@fornecedor.com'),
('Fornecedor T', 'máquinas', 'contatoT@fornecedor.com');

INSERT INTO Insumos (nome, quantidade, fornecedor_id) VALUES
('Insumo A', 100, 1),
('Insumo B', 200, 2),
('Insumo C', 150, 3),
('Insumo D', 250, 1),
('Insumo E', 300, 2),
('Insumo F', 180, 3),
('Insumo G', 220, 1),
('Insumo H', 130, 2),
('Insumo I', 170, 3),
('Insumo J', 190, 1),
('Insumo K', 210, 2),
('Insumo L', 140, 3),
('Insumo M', 260, 1),
('Insumo N', 300, 2),
('Insumo O', 180, 3),
('Insumo P', 220, 1),
('Insumo Q', 150, 2),
('Insumo R', 300, 3),
('Insumo S', 100, 1),
('Insumo T', 200, 2);

INSERT INTO ProcessosIndustriais (descricao, data) VALUES
('Processo A', '2024-01-01'),
('Processo B', '2024-01-02'),
('Processo C', '2024-01-03'),
('Processo D', '2024-01-04'),
('Processo E', '2024-01-05'),
('Processo F', '2024-01-06'),
('Processo G', '2024-01-07'),
('Processo H', '2024-01-08'),
('Processo I', '2024-01-09'),
('Processo J', '2024-01-10'),
('Processo K', '2024-01-11'),
('Processo L', '2024-01-12'),
('Processo M', '2024-01-13'),
('Processo N', '2024-01-14'),
('Processo O', '2024-01-15'),
('Processo P', '2024-01-16'),
('Processo Q', '2024-01-17'),
('Processo R', '2024-01-18'),
('Processo S', '2024-01-19'),
('Processo T', '2024-01-20');

INSERT INTO Produtos (nome, preco, processo_id) VALUES
('Produto A', 10.00, 1),
('Produto B', 20.00, 2),
('Produto C', 30.00, 3),
('Produto D', 40.00, 4),
('Produto E', 50.00, 5),
('Produto F', 60.00, 6),
('Produto G', 70.00, 7),
('Produto H', 80.00, 8),
('Produto I', 90.00, 9),
('Produto J', 100.00, 10),
('Produto K', 110.00, 11),
('Produto L', 120.00, 12),
('Produto M', 130.00, 13),
('Produto N', 140.00, 14),
('Produto O', 150.00, 15),
('Produto P', 160.00, 16),
('Produto Q', 170.00, 17),
('Produto R', 180.00, 18),
('Produto S', 190.00, 19),
('Produto T', 200.00, 20);

INSERT INTO Vendas (produto_id, quantidade, preco_total, data_venda) VALUES
(1, 2, 20.00, '2024-02-01'),
(2, 1, 20.00, '2024-02-02'),
(3, 3, 90.00, '2024-02-03'),
(4, 5, 200.00, '2024-02-04'),
(5, 4, 200.00, '2024-02-05'),
(6, 1, 60.00, '2024-02-06'),
(7, 2, 140.00, '2024-02-07'),
(8, 3, 240.00, '2024-02-08'),
(9, 2, 180.00, '2024-02-09'),
(10, 5, 500.00, '2024-02-10'),
(11, 1, 120.00, '2024-02-11'),
(12, 2, 240.00, '2024-02-12'),
(13, 3, 390.00, '2024-02-13'),
(14, 4, 560.00, '2024-02-14'),
(15, 1, 150.00, '2024-02-15'),
(16, 2, 320.00, '2024-02-16'),
(17, 3, 510.00, '2024-02-17'),
(18, 2, 360.00, '2024-02-18'),
(19, 1, 190.00, '2024-02-19'),
(20, 5, 1000.00, '2024-02-20');

INSERT INTO Funcionarios (nome, cargo, salario) VALUES
('Funcionário A', 'Operador', 1500.00),
('Funcionário B', 'Supervisor', 2500.00),
('Funcionário C', 'Gerente', 3500.00),
('Funcionário D', 'Analista', 2000.00),
('Funcionário E', 'Assistente', 1200.00),
('Funcionário F', 'Técnico', 2200.00),
('Funcionário G', 'Coordenador', 3000.00),
('Funcionário H', 'Operador', 1500.00),
('Funcionário I', 'Supervisor', 2500.00),
('Funcionário J', 'Gerente', 3500.00),
('Funcionário K', 'Analista', 2000.00),
('Funcionário L', 'Assistente', 1200.00),
('Funcionário M', 'Técnico', 2200.00),
('Funcionário N', 'Coordenador', 3000.00),
('Funcionário O', 'Operador', 1500.00),
('Funcionário P', 'Supervisor', 2500.00),
('Funcionário Q', 'Gerente', 3500.00),
('Funcionário R', 'Analista', 2000.00),
('Funcionário S', 'Assistente', 1200.00),
('Funcionário T', 'Técnico', 2200.00);

INSERT INTO Logistica (venda_id, status, data_entrega) VALUES
(1, 'entregue', '2024-02-02'),
(2, 'entregue', '2024-02-03'),
(3, 'pendente', '2024-02-04'),
(4, 'entregue', '2024-02-05'),
(5, 'cancelada', '2024-02-06'),
(6, 'entregue', '2024-02-07'),
(7, 'pendente', '2024-02-08'),
(8, 'entregue', '2024-02-09'),
(9, 'entregue', '2024-02-10'),
(10, 'cancelada', '2024-02-11'),
(11, 'entregue', '2024-02-12'),
(12, 'pendente', '2024-02-13'),
(13, 'entregue', '2024-02-14'),
(14, 'pendente', '2024-02-15'),
(15, 'entregue', '2024-02-16'),
(16, 'entregue', '2024-02-17'),
(17, 'pendente', '2024-02-18'),
(18, 'entregue', '2024-02-19'),
(19, 'cancelada', '2024-02-20'),
(20, 'entregue', '2024-02-21');

INSERT INTO Estoque (produto_id, quantidade, data_movimentacao, tipo_movimentacao) VALUES
(1, 100, '2024-01-01', 'entrada'),
(2, 200, '2024-01-02', 'entrada'),
(3, 150, '2024-01-03', 'entrada'),
(4, 250, '2024-01-04', 'entrada'),
(5, 300, '2024-01-05', 'entrada'),
(1, 50, '2024-01-06', 'saida'),
(2, 30, '2024-01-07', 'saida'),
(3, 20, '2024-01-08', 'saida'),
(4, 40, '2024-01-09', 'saida'),
(5, 60, '2024-01-10', 'saida'),
(6, 90, '2024-01-11', 'entrada'),
(7, 80, '2024-01-12', 'entrada'),
(8, 70, '2024-01-13', 'entrada'),
(9, 60, '2024-01-14', 'entrada'),
(10, 50, '2024-01-15', 'entrada'),
(6, 30, '2024-01-16', 'saida'),
(7, 20, '2024-01-17', 'saida'),
(8, 10, '2024-01-18', 'saida'),
(9, 5, '2024-01-19', 'saida'),
(10, 2, '2024-01-20', 'saida');

SELECT nome, preco FROM Produtos;

SELECT p.nome, SUM(v.quantidade) AS total_vendas
FROM Produtos p
JOIN Vendas v ON p.id = v.produto_id
GROUP BY p.nome;

SELECT p.nome, SUM(CASE WHEN e.tipo_movimentacao = 'entrada' THEN e.quantidade ELSE -e.quantidade END) AS estoque_atual
FROM Produtos p
JOIN Estoque e ON p.id = e.produto_id
GROUP BY p.nome;

SELECT v.id, p.nome AS produto, v.quantidade, v.preco_total, l.status
FROM Vendas v
JOIN Produtos p ON v.produto_id = p.id
JOIN Logistica l ON v.id = l.venda_id;

SELECT nome, cargo, salario FROM Funcionarios;
