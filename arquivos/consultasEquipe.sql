-- Consultas da Equipe

-- 1. Retornar o nome e o salário dos funcionários.
SELECT nome AS Nome_Funcionario,
salario AS Salario
FROM Funcionario;

-- 2. Retornar o nome do produto e a quantidade de pedidos do produto.
SELECT Produto.nome AS Nome_Produto,
COUNT(Pedido.ID) AS Quantidade_Pedidos
FROM Produto
LEFT JOIN PedidoProduto ON Produto.ID = PedidoProduto.ID_Produto
LEFT JOIN Pedido ON PedidoProduto.ID_Pedido = Pedido.ID
GROUP BY Produto.ID;

-- 3. Retornar o nome dos baristas que atenderam mais de 2 pedidos.
SELECT Funcionario.nome AS Nome_Barista
FROM Barista 
JOIN Funcionario  ON Barista.ID_Funcionario = Funcionario.ID
JOIN Pedido  ON Barista.ID_Funcionario = Pedido.ID_Barista
GROUP BY Barista.ID_Funcionario
HAVING COUNT(Pedido.ID) > 2;

-- 4. Retornar lista de ingredientes ordenada pelo total de pedidos dos clientes que incluem este ingrediente.
SELECT Ingrediente.nome AS Ingrediente,
COUNT(DISTINCT NotaFiscal.ID) AS TotalPedidosClientes
FROM Ingrediente
LEFT JOIN ProdutoIngrediente ON Ingrediente.ID = ProdutoIngrediente.ID_Ingrediente
LEFT JOIN Produto ON ProdutoIngrediente.ID_Produto = Produto.ID
LEFT JOIN PedidoProduto ON Produto.ID = PedidoProduto.ID_Produto
LEFT JOIN Pedido ON PedidoProduto.ID_Pedido = Pedido.ID
LEFT JOIN NotaFiscal ON Pedido.ID_NotaFiscal = NotaFiscal.ID
GROUP BY Ingrediente.nome
ORDER BY TotalPedidosClientes DESC;

-- 5. Retornar a lista de clientes que já gastaram ordenada pelo cliente que mais gastou na cafeteria para o que menos gastou.
SELECT Cliente.nome AS Cliente,
ROUND(SUM(Produto.preco), 2) AS TotalGasto
FROM Cliente
JOIN NotaFiscal ON Cliente.ID = NotaFiscal.ID_Cliente
JOIN Pedido ON NotaFiscal.ID = Pedido.ID_NotaFiscal
JOIN PedidoProduto ON Pedido.ID = PedidoProduto.ID_Pedido
JOIN Produto ON PedidoProduto.ID_Produto = Produto.ID
GROUP BY Cliente.nome
ORDER BY TotalGasto DESC;
