USE Exercicios;

INSERT INTO Clinica(Endereco)
VALUES('Rua Niteroi')

INSERT INTO Veterinario(IdClinica, Nome, CRMV)
VALUES(1, 'Eduardo', '42679878789')

INSERT INTO DONO(NomeDono)
VALUES('Raquel')

INSERT INTO Raca(DescricaoRaca)
VALUES('Persa')

INSERT INTO Tipo(DescricaoTipo)
VALUES('Gato')

INSERT INTO Pet(IdTipo, IdRaca, IdDono, NomePet, DataNascimento)
VALUES(1,1,1,'Tito','25/01/2017')

INSERT INTO Atendimento(IdVeterinario, IdPet, Descricao, DataAtendimento)
VALUES(1,1,'Consulta de Rotina', '08/08/23')


INSERT INTO Clinica(Endereco)
VALUES('Rua Frei Caneca')

INSERT INTO Veterinario(IdClinica, Nome, CRMV)
VALUES(2, 'James', '32672648798')

INSERT INTO DONO(NomeDono)
VALUES('Daniel')

INSERT INTO Raca(DescricaoRaca)
VALUES('Pug')

INSERT INTO Tipo(DescricaoTipo)
VALUES('Cachorro')

INSERT INTO Pet(IdTipo, IdRaca, IdDono, NomePet, DataNascimento)
VALUES(2,2,2,'Mel','24/06/2016')

INSERT INTO Atendimento(IdVeterinario, IdPet, Descricao, DataAtendimento)
VALUES(2,2,'Retirada de Gesso', '03/08/23')


SELECT * FROM Atendimento