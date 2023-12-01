-- Consultas do Professor

-- 1. Retornar o nome e as notas de avaliação dos baristas.
SELECT F.nome AS Nome_Barista, P.avaliacao AS Nota_Avaliacao
FROM Barista B
JOIN Funcionario F ON B.ID_Funcionario = F.ID
JOIN Pedido P ON B.ID_Funcionario = P.ID_Barista;

-- 2. Retornar os fornecedores que atenderam pelos menos dois pedidos de ingredientes.
SELECT F.nome AS Nome_Fornecedor,COUNT(PF.ID) AS Numero_Pedidos
FROM Fornecedor F
JOIN PedidosFornecedor PF ON F.ID = PF.ID_Fornecedor
GROUP BY F.ID
HAVING COUNT(PF.ID) >= 2;

-- 3. Retornar o nome do cliente, a quantidade e o valor total dos seus pedidos.
SELECT C.nome AS Nome_Cliente, COUNT(NF.ID) AS Quantidade_Pedidos, ROUND(SUM(Pr.preco), 2) AS Valor_Total
FROM Cliente C
JOIN NotaFiscal NF ON C.ID = NF.ID_Cliente
JOIN Pedido P ON NF.ID = P.ID_NotaFiscal
JOIN Produto Pr ON P.ID_Produto = Pr.ID
GROUP BY C.ID;

-- 4. Listar o id, a descrição e o nome dos produtos, além dos ingredientes usados para prepará-los.
SELECT P.ID AS ID_Produto, P.descricao AS Descricao_Produto,
P.nome AS Nome_Produto,
I.descricao AS Descricao_Ingrediente
FROM Produto P
JOIN ProdutoIngrediente PI ON P.ID = PI.ID_Produto
JOIN Ingrediente I ON PI.ID_Ingrediente = I.ID;

-- 5. Listar a descrição e o preço e a descrição dos produtos que nunca foram vendidos.
SELECT P.descricao AS Descricao_Produto, P.preco AS Preco_Produto
FROM Produto P
LEFT JOIN Pedido PD ON P.ID = PD.ID_Produto
WHERE PD.ID IS NULL;
