-- Retrieve all orders sorted by emission date
SELECT * FROM `oficina`.`Ordem_de_Serviço` ORDER BY Emissao ASC;

-- Retrieve all mechanics sorted by name
SELECT * FROM `oficina`.`Mecanico` ORDER BY Nome DESC;