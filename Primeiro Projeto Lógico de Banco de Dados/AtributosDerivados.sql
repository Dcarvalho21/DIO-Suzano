SELECT Nome, Sobrenome, YEAR(CURDATE()) - YEAR(DataNascimento) AS Idade FROM ecommerce.Cliente;
SELECT Nome, Valor, Valor * 0.9 AS Valor_Com_Desconto FROM ecommerce.Produto; -- 10% discount
SELECT Descricao, Frete, Frete + 5 AS Total_Com_Frete FROM ecommerce.Pedido; -- Adding a fixed handling fee