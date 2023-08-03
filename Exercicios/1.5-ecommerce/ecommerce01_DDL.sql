CREATE DATABASE Exercicios;

DROP DATABASE Exercicios;

USE Exercicios;

CREATE TABLE Loja
(
	IdLoja INT PRIMARY KEY IDENTITY,
	LojaNome VARCHAR(30)
);

CREATE TABLE Categoria
(
	IdCategoria INT PRIMARY KEY IDENTITY,
	IdLoja INT FOREIGN KEY REFERENCES Loja(IdLoja),
	NomeCategoria VARCHAR(50)
);

CREATE TABLE SubCategoria
(
	IdSubCategoria INT PRIMARY KEY IDENTITY,
	IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),
	NomeSubCategoria VARCHAR(50)
);

CREATE TABLE Produto
(
	IdProduto INT PRIMARY KEY IDENTITY,
	IdSubCategoria INT FOREIGN KEY REFERENCES SubCategoria(IdSubCategoria),
	NomeProduto VARCHAR(30)
);

CREATE TABLE ClienteLoja
(
	IdClienteLoja INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(50)
);

CREATE TABLE Pedido
(
	IdPedido INT PRIMARY KEY IDENTITY,
	IdClienteloja INT FOREIGN KEY REFERENCES ClienteLoja(IdClienteLoja),
	Numero VARCHAR(50)
);


CREATE TABLE PedidoProduto
(
	IdPedido INT FOREIGN KEY REFERENCES Pedido(IdPedido),
	IdProduto INT FOREIGN KEY REFERENCES Produto(IdProduto)
);
