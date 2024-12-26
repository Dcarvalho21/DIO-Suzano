-- Retrieve clients with a specific name
SELECT * FROM `oficina`.`Cliente` WHERE Nome = 'João Silva';

-- Retrieve mechanics who specialize in 'Motor'
SELECT * FROM `oficina`.`Mecanico` WHERE Especialidade = 'Motor';

-- Retrieve vehicles of a specific color
SELECT * FROM `oficina`.`Veiculo` WHERE Cor = 'Preto';