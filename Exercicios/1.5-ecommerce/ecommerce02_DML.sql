USE Exercicios;

INSERT INTO Loja(LojaNome)
VALUES ('Amazon'),
	   ('ChipArt');

INSERT INTO Categoria(NomeCategoria)
VALUES ('SmartPhones'),
	   ('Placas De Videos');

INSERT INTO SubCategoria(NomeSubCategoria)
Values ('Apple'),
	   ('NVIDIA');

INSERT INTO Produto(NomeProduto)
VALUES ('Iphone 13'),
	   ('NVIDIA RTX 2080');

INSERT INTO Clienteloja(NomeCliente)
VALUES ('Marcus'),
	   ('Douglas');

INSERT INTO Pedido(Numero)
VALUES ('734735'),
	   ('873784');

SELECT * FROM Categoria