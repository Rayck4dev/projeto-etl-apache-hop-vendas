CREATE TABLE Produtos (
    ID_Produto VARCHAR(10) PRIMARY KEY,
    Nome_Produto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco_Unitario DECIMAL(10, 2),
    Estoque INT
);

CREATE TABLE Vendas (
    ID_Venda INT PRIMARY KEY,
    Data DATE,
    ID_Vendedor VARCHAR(10),
    ID_Produto VARCHAR(10),
    Quantidade INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedor(ID_Vendedor),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);

CREATE TABLE Vendedor (
    ID_Vendedor VARCHAR(10) PRIMARY KEY,
    Nome VARCHAR(100),
    Equipe VARCHAR(50),
    Regiao VARCHAR(50),
    Meta_Mensal DECIMAL(10, 2)
);

CREATE TABLE dw_vendas (
    id_venda INTEGER,
    data_venda DATE, 
    nome_vendedor VARCHAR(100),
    nome_produto VARCHAR(100),
    quantidade INTEGER,
    valor_total_calculado DOUBLE PRECISION
);
