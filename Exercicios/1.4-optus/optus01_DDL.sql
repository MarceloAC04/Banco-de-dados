USE Exercicios;

CREATE TABLE Artista
(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL
)

CREATE TABLE Album
(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista),
	Titulo VARCHAR(50) NOT NULL,
	DataLancamento SMALLDATETIME NOT NULL,
	localizacao CHAR(30) NOT NULL,
	Qtminutos TIME NOT NULL,
	ATIVO CHAR(3) NOT NULL
)

CREATE TABLE Estilo
(
	IdEstilo INT PRIMARY KEY IDENTITY,
	NomeEstilo CHAR(15) NOT NULL
)

CREATE TABLE AlbumEstilo
(
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
)

CREATE TABLE Usuario
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	NomeUsuario VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(20) NOT NULL,
	Permissao CHAR(3)NOT NULL
)
