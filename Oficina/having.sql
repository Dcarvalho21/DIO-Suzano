-- Retrieve the total number of services per order, filtering for orders with more than 1 service
SELECT Ordem_de_Serviço_idOrdem_de_Serviço, COUNT(*) AS Total_Servicos
FROM `oficina`.`Servicos_OS`
GROUP BY Ordem_de_Serviço_idOrdem_de_Serviço
HAVING Total_Servicos > 1;