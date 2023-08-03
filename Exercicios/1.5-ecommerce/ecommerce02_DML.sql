USE Exercicios;

INSERT INTO Loja(LojaNome)
VALUES ('Amazon'),
	   ('ChipArt');

INSERT INTO Categoria(IdLoja, NomeCategoria)
VALUES (1,'SmartPhones'),
	   (2,'Placas De Videos');

INSERT INTO SubCategoria(IdCategoria,NomeSubCategoria)
Values (1,'Apple'),
	   (2,'NVIDIA');

INSERT INTO Produto(IdSubCategoria,NomeProduto)
VALUES (1,'Iphone 13'),
	   (2,'NVIDIA RTX 2080');

INSERT INTO Clienteloja(NomeCliente)
VALUES ('Marcus'),
	   ('Douglas');

INSERT INTO Pedido(IdClienteloja,Numero)
VALUES (1,'734735'),
	   (2,'873784');

INSERT INTO PedidoProduto(IdPedido, IdProduto)
VALUES (1,1),
	   (2,2);