INSERT INTO `oficina`.`Cliente` (idCliente, Nome, CPF) VALUES
(1, 'João Silva', '123.456.789-00'),
(2, 'Maria Oliveira', '987.654.321-00'),
(3, 'Carlos Santos', '456.789.123-00'),
(4, 'Ana Costa', '321.654.987-00'),
(5, 'Pedro Almeida', '654.321.789-00');

INSERT INTO `oficina`.`Mecanico` (idMecanico, Nome, Endereco, Especialidade, Equipe_idEquipe) VALUES
(1, 'Lucas Pereira', 'Rua A, 123', 'Motor', NULL),
(2, 'Fernanda Lima', 'Rua B, 456', 'Suspensão', NULL),
(3, 'Ricardo Gomes', 'Rua C, 789', 'Freios', NULL),
(4, 'Juliana Rocha', 'Rua D, 101', 'Elétrica', NULL),
(5, 'Roberto Dias', 'Rua E, 202', 'Transmissão', NULL);

INSERT INTO `oficina`.`Equipe` (idEquipe, Mecanico_idMecanico, Nome) VALUES
(1, 1, 'Equipe A'),
(2, 2, 'Equipe B'),
(3, 3, 'Equipe C'),
(4, 4, 'Equipe D'),
(5, 5, 'Equipe E');

INSERT INTO `oficina`.`Veiculo` (Placa, Modelo, Cor, Cliente_idCliente) VALUES
('ABC1A23', 'Fusca', 'Azul', 1),
('DEF4B56', 'Civic', 'Preto', 2),
('GHI7C89', 'Palio', 'Vermelho', 3),
('JKL0D12', 'Corolla', 'Branco', 4),
('MNO3E45', 'Gol', 'Prata', 5);

INSERT INTO `oficina`.`Peca` (idPeca, Valor, Nome) VALUES
(1, 100.00, 'Pastilha de Freio'),
(2, 200.00, 'Amortecedor'),
(3, 150.00, 'Bateria'),
(4, 50.00, 'Filtro de Óleo'),
(5, 75.00, 'Correia Dentada');

INSERT INTO `oficina`.`Servico` (idServico, Valor, Descricao) VALUES
(1, 300.00, 'Troca de Óleo'),
(2, 500.00, 'Revisão Completa'),
(3, 150.00, 'Alinhamento'),
(4, 200.00, 'Balanceamento'),
(5, 400.00, 'Troca de Freios');

INSERT INTO `oficina`.`Ordem_de_Serviço` (idOrdem_de_Serviço, Emissao, Entrega, Valor_Total, Status, Prazo, Equipe_idEquipe, Veiculo_idVeiculo) VALUES
(1, '2023-10-01 10:00:00', '2023-10-05', 350.00, 'Em andamento', '2023-10-05', 1, 1),
(2, '2023-10-02 11:00:00', '2023-10-06', 600.00, 'Em andamento', '2023-10-06', 2, 2),
(3, '2023-10-03 12:00:00', '2023-10-07', 200.00, 'Em andamento', '2023-10-07', 3, 3),
(4, '2023-10-04 13:00:00', '2023-10-08', 450.00, 'Em andamento', '2023-10-08', 4, 4),
(5, '2023-10-05 14:00:00', '2023-10-09', 300.00, 'Em andamento', '2023-10-09', 5, 5); 

### Insert Data into `Pecas_OS` Table

INSERT INTO `oficina`.`Pecas_OS` (Peca_idPeca, Ordem_de_Serviço_idOrdem_de_Serviço, Quantidade) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 4),
(4, 4, 3),
(5, 5, 1);

INSERT INTO `oficina`.`Servicos_OS` (Servico_idServico, Ordem_de_Serviço_idOrdem_de_Serviço, Quantidade) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 1),
(5, 5, 1);
