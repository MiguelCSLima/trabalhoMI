CREATE DATABASE CAFETERIA;

-- Tabela Cliente
CREATE TABLE Cliente (
    ID INT PRIMARY KEY,
    nome VARCHAR(100),
    CPF VARCHAR(11) NULL
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    ID INT PRIMARY KEY,
    telefone VARCHAR(20) NULL,
    salario FLOAT,
    endereco VARCHAR(255),
    CPF VARCHAR(11),
    nome VARCHAR(100)
);

-- Tabela Ingrediente
CREATE TABLE Ingrediente (
    ID INT PRIMARY KEY,
    descricao VARCHAR(255) NULL,
    validade DATE,
    quantidade INT,
    preco FLOAT,
    nome VARCHAR(255),
    dataCompra DATE
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    ID INT PRIMARY KEY,
    setor VARCHAR(255),
    endereco VARCHAR(255),
    nome VARCHAR(100),
    CNPJ VARCHAR(14)
);

-- Tabela Gerente
CREATE TABLE Gerente (
    ID_Funcionario INT PRIMARY KEY,
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID)
);

-- Tabela Atendente
CREATE TABLE Atendente (
    ID_Funcionario INT PRIMARY KEY,
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID)
);

-- Tabela Barista
CREATE TABLE Barista (
    ID_Funcionario INT PRIMARY KEY,
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionario(ID)
);

-- Tabela PedidosFornecedor
CREATE TABLE PedidosFornecedor (
    ID INT PRIMARY KEY,
    descricao VARCHAR(255) NULL,
    dataChegada DATE NULL,
    dataPedido DATE,
    quantidade INT,
    custo FLOAT,
    ID_Fornecedor INT,
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID),
    ID_Gerente INT,
    FOREIGN KEY (ID_Gerente) REFERENCES Gerente(ID_Funcionario),
    ID_Ingrediente INT,
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingrediente(ID)
);

-- Tabela NotaFiscal
CREATE TABLE NotaFiscal (
    ID INT PRIMARY KEY,
    dataPedido DATE,
    formaPagamento VARCHAR(50),
    ID_Cliente INT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID)
);

-- Tabela Produto
CREATE TABLE Produto (
    ID INT PRIMARY KEY,
    descricao VARCHAR(255) NULL,
    especificacoes VARCHAR(255) NULL,
    nome VARCHAR(255),
    preco FLOAT
);

-- Tabela Pedido
CREATE TABLE Pedido (
    ID INT PRIMARY KEY,
    avaliacao FLOAT,
    estado VARCHAR(50),
    ID_NotaFiscal INT,
    FOREIGN KEY (ID_NotaFiscal) REFERENCES NotaFiscal(ID),
    ID_Barista INT,
    FOREIGN KEY (ID_Barista) REFERENCES Barista(ID_Funcionario)
);

-- Tabela PedidoProduto
CREATE TABLE PedidoProduto (
    ID_Pedido INT,
    ID_Produto INT,
    quantidade INT,
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID)
);

-- Tabela ProdutoIngrediente
CREATE TABLE ProdutoIngrediente (
    ID_Produto INT,
    ID_Ingrediente INT,
    PRIMARY KEY (ID_Produto, ID_Ingrediente),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID),
    FOREIGN KEY (ID_Ingrediente) REFERENCES Ingrediente(ID)
);
