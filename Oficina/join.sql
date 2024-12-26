-- Retrieve all orders with client names and vehicle models
SELECT os.idOrdem_de_Serviço, c.Nome AS Cliente, v.Modelo AS Veiculo, os.Valor_Total
FROM `oficina`.`Ordem_de_Serviço` os
JOIN `oficina`.`Veiculo` v ON os.Veiculo_idVeiculo = v.Placa
JOIN `oficina`.`Cliente` c ON v.Cliente_idCliente = c.idCliente;

-- Retrieve all mechanics and their respective teams
SELECT m.Nome AS Mecanico, e.Nome AS Equipe
FROM `oficina`.`Mecanico` m
JOIN `oficina`.`Equipe` e ON m.idMecanico = e.Mecanico_idMecanico;

-- Retrieve all parts used in each order along with their quantities
SELECT os.idOrdem_de_Serviço, p.Nome AS Peca, po.Quantidade
FROM `oficina`.`Pecas_OS` po
JOIN `oficina`.`Peca` p ON po.Peca_idPeca = p.idPeca
JOIN `oficina`.`Ordem_de_Serviço` os ON po.Ordem_de_Serviço_idOrdem_de_Serviço = os.idOrdem_de_Serviço;