SELECT c.Nome, c.Sobrenome, p.Descricao, p.Valor 
FROM ecommerce.Cliente c 
JOIN ecommerce.Pedido pd ON c.idCliente = pd.Cliente_idCliente 
JOIN ecommerce.Relacao_produto_Pedido rpp ON pd.idPedido = rpp.Pedido_idPedido 
JOIN ecommerce.Produto p ON rpp.Produto_idProduto = p.idProduto;

SELECT f.Razao_Social, p.Nome, p.Valor 
FROM ecommerce.Fornecedor f 
JOIN ecommerce.Produto p ON f.CNPJ = p.Categoria; -- Assuming CNPJ is used as a foreign key for demonstration