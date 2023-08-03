USE Exercicios;

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT NomeUsuario, Email, Permissao
FROM Usuario
WHERE Permissao = 'Sim'

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT Nome, Titulo, DataLancamento, localizacao, Qtminutos,  ATIVO
FROM Album
LEFT JOIN Artista
ON Album.IdArtista = Artista.IdArtista
WHERE DataLancamento  > '1976'

--- listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT NomeUsuario, Email, Senha, Permissao
FROM Usuario
WHERE Email = 'marcelo@gmail.com' AND Senha = '742617'

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 
SELECT Nome, Titulo, NomeEstilo
FROM AlbumEstilo
LEFT JOIN Estilo
ON AlbumEstilo.IdEstilo = Estilo.IdEstilo
LEFT JOIN Album ON AlbumEstilo.IdAlbum = Album.IdAlbum
LEFT JOIN Artista ON Album.IdArtista = Artista.IdArtista
WHERE ATIVO = 'Sim'