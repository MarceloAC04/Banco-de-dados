USE Exercicios;

INSERT INTO Locadora(Nome)
VALUES('Autosport')

INSERT INTO Cliente(NomeCliente, CPF)
VALUES('Bob','78654398672')

INSERT INTO Modelo(NomeModelo)
VALUES('Civic')

INSERT INTO Marca(NomeMarca)
VALUES('Honda')

INSERT INTO Veiculo(IdLocadora, IdModelo, IdMarca, Placa)
VALUES(1,1,1,'A77V5H8')

INSERT INTO Aluguel(IdVeiculo, IdCliente, Protocolo)
VALUES(1,1,'2776508')

INSERT INTO Locadora(Nome)
VALUES('BetSport')

INSERT INTO Cliente(NomeCliente, CPF)
VALUES('Wilson','67894392372')

INSERT INTO Modelo(NomeModelo)
VALUES('Corolla')

INSERT INTO Marca(NomeMarca)
VALUES('Toyota')

INSERT INTO Veiculo(IdLocadora, IdModelo, IdMarca, Placa)
VALUES(2,2,2,'FF5VGH9')

INSERT INTO Aluguel(IdVeiculo, IdCliente, Protocolo)
VALUES(2,2,'3436118')


SELECT * FROM Aluguel