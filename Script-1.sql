-- Inserir dados na tabela Cliente
INSERT INTO Cliente (ID, nome, CPF) VALUES
(1, 'Feth Nando G. P. Thin', '12345678901'),
(2, 'Ronaldo Alves Costa', '98765432109'),
(3, 'Michael Morcego', '11122334455'),
(4, 'Hedoktor Franji', '55566677788'),
(5, 'Abah Cassy', '99988877766');

-- Inserir dados na tabela Fornecedor
INSERT INTO Fornecedor (ID, setor, endereco, nome, CNPJ) VALUES
(1, 'Café', 'Rua Barata Morta, 123', 'Café dos Aromas', '12345678901234'),
(2, 'Alimentos', 'Avenida Magali, 456', 'Farinhas Brancas', '98765432109876'),
(3, 'Bebidas', 'Rua Machado de Assis, 789', 'Coca-Cola', '45678901234567'),
(4, 'Frutas', 'Rua dos Afogados, 321', 'Hortifruti', '78901234567890'),
(5, 'Laticínios', 'Praça da República, 567', 'Leite Lah Elen', '23456789012345');

-- Inserir dados na tabela Produto
INSERT INTO Produto (ID, descricao, especificacoes, nome, preco) VALUES
(1, 'Café Espresso', 'Blend especial', 'Espresso', 3.50),
(2, 'Bolo Recheado', 'Cobertura de morango', 'Bolo de Cake', 15.90),
(3, 'Coca-Cola Zero', 'Sem açúcar', 'Cola Zero', 4.50),
(4, 'Maçã Fuji', 'Importada', 'Maçã Fuji', 2.00),
(5, 'Leite Integral', 'Embalagem de 1L', 'Leite Integral', 2.50);

-- Inserir dados na tabela Ingrediente
INSERT INTO Ingrediente (ID, descricao, validade, quantidade, preco, nome, dataCompra) VALUES
(1, 'Grãos de Café', '2023-12-31', 500, 20.00, 'Café em grãos', '2023-01-10'),
(2, 'Farinha de trigo', '2023-10-31', 2000, 5.00, 'Farinha', '2023-01-05'),
(3, 'Xarope de cola', '2023-11-30', 100, 10.00, 'Xarope de cola', '2023-01-25'),
(4, 'Maçãs frescas', '2023-02-28', 50, 1.50, 'Maçãs', '2023-02-01'),
(5, 'Leite pasteurizado', '2023-02-28', 200, 1.80, 'Leite pasteurizado', '2023-02-05');

INSERT INTO Funcionario (ID, telefone, salario, endereco, CPF, nome) VALUES
(1, '987654321', 3500.00, 'Rua Principal, 111', '11122233344', 'Bob Jeffy'),
(2, '123456789', 2800.00, 'Avenida Secundária, 222', '55566677788', 'Leonardo Pedra'),
(3, '999888777', 4000.00, 'Rua do Terceiro, 333', '33344455566', 'Lucia da Silva'),
(4, '444555666', 2500.00, 'Avenida Quartenal, 444', '77788899900', 'Felipe Peixoto'),
(5, '111222333', 3200.00, 'Rua do Quinteto, 555', '42334556667', 'Dante Machado');

-- Inserir dados na tabela NotaFiscal
INSERT INTO NotaFiscal (ID, dataPedido, formaPagamento, ID_Cliente) VALUES
(1, '2023-01-15', 'Cartão de Crédito', 1),
(2, '2023-01-16', 'Dinheiro', 2),
(3, '2023-01-28', 'Dinheiro', 3),
(4, '2023-02-03', 'Cartão de Débito', 4),
(5, '2023-02-08', 'Cartão de Crédito', 5);

-- Inserir dados na tabela PedidosFornecedor
INSERT INTO PedidosFornecedor (ID, descricao, dataChegada, dataPedido, quantidade, custo, ID_Fornecedor, ID_Ingrediente) VALUES
(1, 'Pedido de café', '2023-01-20', '2023-01-15', 500, 800.00, 1, 1),
(2, 'Pedido de farinha', '2023-01-18', '2023-01-10', 1000, 300.00, 2, 2),
(3, 'Pedido de refrigerantes', '2023-02-01', '2023-01-25', 200, 150.00, 3, 3),
(4, 'Pedido de frutas', '2023-02-05', '2023-01-30', 300, 250.00, 4, 4),
(5, 'Pedido de leite', '2023-02-10', '2023-02-01', 150, 180.00, 5, 5);

-- Inserir dados na tabela Atendente
INSERT INTO Atendente (ID_Funcionario) VALUES
(1),
(2);

-- Inserir dados na tabela Barista
INSERT INTO Barista (ID_Funcionario, avaliacaoMedia, quantidadePedidos, ID_Pedido) VALUES
(1, 4.8, 20, 1),
(1, 5, 20, 3),
(2, 4.2, 30, 2);
