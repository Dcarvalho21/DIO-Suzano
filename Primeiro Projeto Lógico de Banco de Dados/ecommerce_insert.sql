-- Inserting data into Cliente
INSERT INTO ecommerce.Cliente (Endereco, Nome, Sobrenome, DataNascimento) VALUES
('Rua A, 123', 'João', 'Silva', '1990-01-01'),
('Rua B, 456', 'Maria', 'Oliveira', '1985-05-15'),
('Rua C, 789', 'Carlos', 'Pereira', '1992-03-20'),
('Rua D, 101', 'Ana', 'Souza', '1988-07-30'),
('Rua E, 202', 'Lucas', 'Lima', '1995-12-12');

-- Inserting data into Cliente_CPF
INSERT INTO ecommerce.Cliente_CPF (Cliente_idCliente, CPF) VALUES
(1, '12345678901'),
(2, '23456789012'),
(3, '34567890123'),
(4, '45678901234'),
(5, '56789012345');

-- Inserting data into Cliente_CNPJ
INSERT INTO ecommerce.Cliente_CNPJ (Cliente_idCliente, Razao_Social, CNPJ) VALUES
(1, 'João Silva LTDA', '12.345.678/0001-90'),
(2, 'Maria Oliveira SA', '23.456.789/0001-01'),
(3, 'Carlos Pereira ME', '34.567.890/0001-12'),
(4, 'Ana Souza EIRELI', '45.678.901/0001-23'),
(5, 'Lucas Lima & Cia', '56.789.012/0001-34');

-- Inserting data into Pagamento
INSERT INTO ecommerce.Pagamento (Cliente_idCliente, Tipo, Identificador) VALUES
(1, 'Crédito', '1234-5678-9012-3456'),
(2, 'Débito', '2345-6789-0123-4567'),
(3, 'Crédito', '3456-7890-1234-5678'),
(4, 'Débito', '4567-8901-2345-6789'),
(5, 'Crédito', '5678-9012-3456-7890');

-- Inserting data into Produto
INSERT INTO ecommerce.Produto (Nome, Descricao, Valor, Categoria) VALUES
('Smartphone', 'Smartphone de última geração', 2999.99, 'Eletronico'),
('Camiseta', 'Camiseta de algodão', 49.99, 'Roupa'),
('Boneca', 'Boneca de pano', 29.99, 'Brinquedo'),
('Pizza', 'Pizza de calabresa', 39.99, 'Comida'),
('Laptop', 'Laptop com 16GB de RAM', 4999.99, 'Eletronico');

-- Inserting data into Fornecedor
INSERT INTO ecommerce.Fornecedor (Razao_Social, CNPJ) VALUES
('Fornecedor A', '12.345.678/0001-90'),
('Fornecedor B', '23.456.789/0001-01'),
('Fornecedor C', '34.567.890/0001-12'),
('Fornecedor D', '45.678.901/0001-23'),
('Fornecedor E', '56.789.012/0001-34');

-- Inserting data into Estoque
INSERT INTO ecommerce.Estoque (Endereco) VALUES
('Estoque 1'),
('Estoque 2'),
('Estoque 3'),
('Estoque 4'),
('Estoque 5');

-- Inserting data into Produto_em_Estoque
INSERT INTO ecommerce.Produto_em_Estoque (Produto_idProduto, Estoque_idEstoque, Quantidade) VALUES
(1, 1, 10),
(2, 2, 20),
(3, 3, 15),
(4, 4, 5),
(5, 5, 8);

-- Inserting data into Pedido
INSERT INTO ecommerce.Pedido (Status_Pedido, Descricao, Status_de_Entrega, Frete, Rastreio, Cliente_idCliente) VALUES
('Processando', 'Pedido de Smartphone', NULL, 10.00, 'Rastreio 001', 1),
('Enviado', 'Pedido de Camiseta', NULL, 5.00, 'Rastreio 002', 2),
('A Caminho', 'Pedido de Boneca', NULL, 7.50, 'Rastreio 003', 3),
('Rota de Entrega', 'Pedido de Pizza', NULL, 8.00, 'Rastreio 004', 4),
('Finalizado', 'Pedido de Laptop', NULL, 15.00, 'Rastreio 005', 5);

-- Inserting data into Relacao_produto_Pedido
INSERT INTO ecommerce.Relacao_produto_Pedido (Produto_idProduto, Pedido_idPedido, Quantidade, Status_Produto) VALUES
(1, 1, 1, 'Em Estoque'),
(2, 2, 2, 'Em Estoque'),
(3, 3, 1, 'Em Falta'),
(4, 4, 1, 'Em Estoque'),
(5, 5, 1, 'Em Estoque');

-- Inserting data into TerceiroVendendor
INSERT INTO ecommerce.TerceiroVendendor (Razao_Social, Endereco, CNPJ) VALUES
('Terceiro A', 'Endereco A', '12.345.678/0001-90'),
('Terceiro B', 'Endereco B', '23.456.789/0001-01'),
('Terceiro C', 'Endereco C', '34.567.890/0001-12'),
('Terceiro D', 'Endereco D', '45.678.901/0001-23'),
('Terceiro E', 'Endereco E', '56.789.012/0001-34');

-- Inserting data into Terceiro_Vende_Produto
INSERT INTO ecommerce.Terceiro_Vende_Produto (TerceiroVendendor_idTerceiroVendendor, Produto_idProduto, Quantidade) VALUES
(1, 1, 5),
(2, 2, 10),
(3, 3, 7),
(4, 4, 3),
(5, 5, 4);

### Verify Data Insertion

-- sql
-- Verify data in Cliente
-- SELECT * FROM ecommerce.Cliente;

-- Verify data in Cliente_CPF
-- SELECT * FROM ecommerce.Cliente_CPF;

-- Verify data in Cliente_CNPJ
-- SELECT * FROM ecommerce.Cliente_CNPJ;

-- Verify data in Pagamento
-- SELECT * FROM ecommerce.Pagamento;

-- Verify data in Produto
-- SELECT * FROM ecommerce.Produto;

-- Verify data in Fornecedor
-- SELECT * FROM ecommerce.Fornecedor;

-- Verify data in Estoque
-- SELECT * FROM ecommerce.Estoque;

-- Verify data in Produto_em_Estoque
-- SELECT * FROM ecommerce.Produto_em_Estoque;

-- Verify data in Pedido
-- SELECT * FROM ecommerce.Pedido;

-- Verify data in Relacao_produto_Pedido
-- SELECT * FROM ecommerce.Relacao_produto_Pedido;

-- Verify data in Terceiro_Vendendor
-- SELECT * FROM ecommerce.Terceiro_Vendendor;

-- Verify data in Terceiro_Vende_Produto
-- SELECT * FROM ecommerce.Terceiro_Vende_Produto;