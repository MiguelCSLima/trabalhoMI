-- Inserir dados na tabela Cliente
INSERT INTO Cliente (ID, nome, CPF) VALUES
(1, 'Feth Nando G. P. Thin', '12345678901'),
(2, 'Ronaldo Alves Costa', '98765432109'),
(3, 'Michael Morcego', '11122334455'),
(4, 'Hedoktor Franji', '55566677788'),
(5, 'Abah Cassy', '99988877766'),
(6, 'Leo Pele', '29287877166'),
(7, 'Robison Bambu', '79984777061'),
(8, 'Cristiano Roberto', '73588878562'),
(9, 'Ze Vitor', '51988884761'),
(10, 'Miliano Dias', '12849877769');

-- Inserir dados na tabela Fornecedor
INSERT INTO Fornecedor (ID, setor, endereco, nome, CNPJ) VALUES
(1, 'Café', 'Rua Barata Morta, 123', 'Café dos Aromas', '12345678901234'),
(2, 'Alimentos', 'Avenida Magali, 456', 'Farinhas Brancas', '98765432109876'),
(3, 'Bebidas', 'Rua Machado de Assis, 789', 'Coca-Cola', '45678901234567'),
(4, 'Laticínios', 'Praça da República, 567', 'Leite Lah Elen', '23456789012345');

-- Inserir dados na tabela Ingrediente
INSERT INTO Ingrediente (ID, descricao, validade, quantidade, preco, nome, dataCompra) VALUES
(1, 'Grãos de Café', '2023-12-31', 500, 20.00, 'Café em grãos', '2023-01-10'),
(2, 'Água', '2023-07-30', 100, 3, 'Água', '2023-02-05'),
(3, 'Farinha de trigo', '2023-10-31', 2000, 5.00, 'Farinha', '2023-01-05'),
(4, 'Fermento', '2023-11-30', 100, 10.00, 'Fermento', '2023-01-25'),
(5, 'Açúcar', '2023-02-28', 50, 1.50, 'Açúcar', '2023-02-01'),
(6, 'Ovo', '2023-02-22', 500, 7, 'Ovo', '2023-02-05'),
(7, 'Cenoura', '2023-08-25', 300, 4, 'Cenoura Grande', '2023-02-05'),
(8, 'Chocolate', '2023-02-23', 500, 7, 'Chocolate', '2023-02-05'),
(9, 'Leite pasteurizado', '2023-02-28', 200, 1.80, 'Leite pasteurizado', '2023-02-05'),
(10, 'Pão', '2023-02-22', 500, 7, 'Pão de Forma', '2023-02-05'),
(11, 'Queijo', '2023-03-22', 100, 3, 'Queijo Prato', '2023-02-05'),
(12, 'Presunto', '2023-03-15', 300, 5, 'Presunto Sadia', '2023-02-05');

-- Inserir dados na tabela Funcionario
INSERT INTO Funcionario (ID, telefone, salario, endereco, CPF, nome) VALUES
(1, '987654321', 3500.00, 'Rua Principal, 111', '11122233344', 'Bob Jeffy'),
(2, '123456789', 2800.00, 'Avenida Secundária, 222', '55566677788', 'Leonardo Pedra'),
(3, '999888777', 4000.00, 'Rua do Terceiro, 333', '33344455566', 'Lucia da Silva'),
(4, '444555666', 2500.00, 'Avenida Quartenal, 444', '77788899900', 'Felipe Peixoto'),
(5, '111222333', 3200.00, 'Rua do Quinteto, 555', '42334556667', 'Dante Machado');

-- Inserir dados na tabela Produto
INSERT INTO Produto (ID, descricao, especificacoes, nome, preco) VALUES
(1, 'Café Espresso', 'Blend especial', 'Espresso', 3.50),
(2, 'Bolo de Cenoura', 'Cobertura de chocolate', 'Bolo de Cake', 15.90),
(3, 'Água Mineral', 'Água', 'Água Mineral', 4.50),
(4, 'Café Pingado', 'Café com Leite', 'Pingado', 3.00),
(5, 'Misto Quente', 'Misto quente', 'Mistão do Ferd', 5);

-- Inserir dados na tabela NotaFiscal
INSERT INTO NotaFiscal (ID, dataPedido, formaPagamento, ID_Cliente) VALUES
(1, '2023-01-15', 'Cartão de Crédito', 1),
(2, '2023-01-16', 'Dinheiro', 2),
(3, '2023-01-28', 'Dinheiro', 3),
(4, '2023-02-03', 'Cartão de Débito', 4),
(5, '2023-02-08', 'Cartão de Crédito', 5);

-- Inserir dados na tabela ProdutoIngredientes
INSERT INTO ProdutoIngrediente (ID_Produto, ID_Ingrediente) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 2),
(4, 1),
(4, 9),
(5, 10),
(5, 11),
(5, 12);

-- Inserir dados na tabela Gerente
INSERT INTO Gerente (ID_Funcionario) VALUES
(1);

-- Inserir dados na tabela Atendente
INSERT INTO Atendente (ID_Funcionario) VALUES
(2),
(3);

-- Inserir dados na tabela Barista
INSERT INTO Barista (ID_Funcionario) VALUES
(4),
(5);

-- Inserir dados na tabela PedidosFornecedor
INSERT INTO PedidosFornecedor (ID, descricao, dataChegada, dataPedido, quantidade, custo, ID_Fornecedor, ID_Gerente, ID_Ingrediente) VALUES
(1, 'Pedido de café', '2023-01-20', '2023-01-15', 500, 800.00, 1, 1, 1),
(2, 'Pedido de Água', '2023-01-18', '2023-01-10', 1000, 300.00, 3, 1, 2),
(3, 'Pedido de Farinha de Trigo', '2023-01-17', '2023-01-10', 800, 500.00, 2, 1, 3),
(4, 'Pedido de Fermento', '2023-01-12', '2023-01-10', 800, 500.00, 2, 1, 4),
(5, 'Pedido de Açúcar', '2023-03-18', '2023-01-10', 900, 520.00, 2, 1, 5),
(6, 'Pedido de Ovo', '2023-06-17', '2023-01-10', 600, 100.00, 2, 1, 6),
(7, 'Pedido de Cenoura', '2023-01-17', '2023-01-10', 300, 500.00, 2, 1, 7),
(8, 'Pedido de Chocolate', '2023-09-17', '2023-01-10', 900, 500.00, 2, 1, 8),
(9, 'Pedido de Leite', '2023-06-17', '2023-01-10', 310, 500.00, 4, 1, 9),
(10, 'Pedido de Pão', '2023-06-17', '2023-01-10', 600, 400.00, 2, 1, 10),
(11, 'Pedido de Queijo', '2023-06-19', '2023-01-10', 270, 570.00, 4, 1, 11),
(12, 'Pedido de Presunto', '2023-01-12', '2023-01-10', 820, 580.00, 2, 1, 12);

-- Inserir dados na tabela Pedido
INSERT INTO Pedido (ID, avaliacao, estado, ID_NotaFiscal, ID_Barista, ID_Produto) VALUES
(1, 5.0, 'Concluído', 1, 4, 1),
(2, 4.0, 'Concluído', 2, 4, 2),
(3, 3.0, 'Concluído', 3, 4, 3),
(4, 4.5, 'Concluído', 4, 5, 4),
(5, 3.0, 'Em andamento', 5, 5, 2);
