USE Exercicios;

INSERT INTO Artista(Nome)
VALUES('Metallica')

INSERT INTO Album(IdArtista, Titulo, DataLancamento, localizacao, Qtminutos, ATIVO)
VALUES(1,'Ride The Lightning','1984-27-07','Inglês','00:47:26','Sim')

INSERT INTO Estilo(NomeEstilo)
VALUES('Metal')

INSERT INTO AlbumEstilo(IdAlbum,IdEstilo)
VALUES(1,1)

INSERT INTO Usuario(NomeUsuario, Email, Senha, Permissao)
VALUES('Marcelo04', 'marcelo@gmail.com', '742617', 'Nao')

INSERT INTO Artista(Nome)
VALUES('Deep Purple')

INSERT INTO Album(IdArtista, Titulo, DataLancamento, localizacao, Qtminutos, ATIVO)
VALUES(2,'The Battle Rages On','1993-19-07','Inglês','00:50:19','Nao')

INSERT INTO Estilo(NomeEstilo)
VALUES('Rock')

INSERT INTO AlbumEstilo(IdAlbum,IdEstilo)
VALUES(2,2)

INSERT INTO Usuario(NomeUsuario, Email, Senha, Permissao)
VALUES('Regis44', 'regis@gmail.com', '51563', 'Sim')

SELECT * FROM AlbumEstilo