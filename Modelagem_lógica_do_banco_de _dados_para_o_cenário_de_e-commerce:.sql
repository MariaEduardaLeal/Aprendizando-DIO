-- Criação das tabelas
CREATE TABLE Cliente (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Endereco VARCHAR(100),
  Telefone VARCHAR(20),
  Tipo VARCHAR(2)
);

CREATE TABLE Produto (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Descricao TEXT,
  Preco DECIMAL(10, 2)
);

CREATE TABLE Pedido (
  ID INT PRIMARY KEY,
  Data DATE,
  Cliente_ID INT,
  FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);

CREATE TABLE ItemPedido (
  ID INT PRIMARY KEY,
  Pedido_ID INT,
  Produto_ID INT,
  Quantidade INT,
  FOREIGN KEY (Pedido_ID) REFERENCES Pedido(ID),
  FOREIGN KEY (Produto_ID) REFERENCES Produto(ID)
);

CREATE TABLE Fornecedor (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Endereco VARCHAR(100),
  Telefone VARCHAR(20)
);

CREATE TABLE Estoque (
  Produto_ID INT,
  Fornecedor_ID INT,
  Quantidade INT,
  PRIMARY KEY (Produto_ID, Fornecedor_ID),
  FOREIGN KEY (Produto_ID) REFERENCES Produto(ID),
  FOREIGN KEY (Fornecedor_ID) REFERENCES Fornecedor(ID)
);

CREATE TABLE Pagamento (
  ID INT PRIMARY KEY,
