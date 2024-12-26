-- Retrieve services with a derived attribute for total cost (Valor * Quantidade)
SELECT s.idServico, s.Descricao, s.Valor, 
       (s.Valor * so.Quantidade) AS Total_Cost
FROM `oficina`.`Servico` s
JOIN `oficina`.`Servicos_OS` so ON s.idServico = so.Servico_idServico;