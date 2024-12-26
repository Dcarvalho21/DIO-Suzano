SELECT Cliente_idCliente, COUNT(*) AS Total_Pedidos 
FROM ecommerce.Pedido 
GROUP BY Cliente_idCliente 
HAVING Total_Pedidos > 1;

SELECT Produto_idProduto, SUM(Quantidade) AS Total_Vendido 
FROM ecommerce.Relacao_produto_Pedido 
GROUP BY Produto_idProduto 
HAVING Total_Vendido > 1;