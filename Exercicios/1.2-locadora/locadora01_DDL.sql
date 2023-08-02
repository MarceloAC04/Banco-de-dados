CREATE DATABASE Exercicios;

USE Exercicios;

CREATE TABLE Locadora
(
	IdLocadora INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(30) NOT NULL
);

CREATE TABLE Cliente 
(
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(50) NOT NULL,
	CPF CHAR(11) NOT NULL
)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	NomeModelo VARCHAR(50) NOT NULL
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	NomeMarca VARCHAR(50) NOT NULL
)

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdLocadora INT FOREIGN KEY REFERENCES Locadora(IdLocadora),
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo),
	IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca),
	Placa CHAR(7) NOT NULL
)

CREATE TABLE Aluguel
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo),
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
	Retirada SMALLDATETIME,
	Devolucao SMALLDATETIME,
	Protocolo CHAR(7) NOT NULL
)
