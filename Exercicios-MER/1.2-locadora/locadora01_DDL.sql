CREATE DATABASE Exercicios;

USE Exercicios;

CREATE TABLE Locadora
(
	IdLocadora INT PRIMARY KEY IDENTITY,
	Cliente VARCHAR(100),
	Veiculo VARCHAR(100),
	Retirada VARCHAR(100),
	Devolucao VARCHAR(100)
);

