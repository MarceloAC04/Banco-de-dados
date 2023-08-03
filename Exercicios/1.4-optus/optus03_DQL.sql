USE Exercicios;

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT NomeUsuario, Email, Permissao
FROM Usuario
WHERE Permissao = 'Sim'

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT Nome, Titulo, DataLancamento, localizacao, Qtminutos,  ATIVO
FROM Album
LEFT JOIN Artista
ON Album.IdArtista = Artista.IdArtista
WHERE DataLancamento  > '1976'

--- listar os dados de um usuário através do e-mail e senha
SELECT NomeUsuario, Email, Senha, Permissao
FROM Usuario
WHERE Email = 'marcelo@gmail.com' AND Senha = '742617'

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 
SELECT Nome, Titulo, NomeEstilo
FROM AlbumEstilo
LEFT JOIN Estilo
ON AlbumEstilo.IdEstilo = Estilo.IdEstilo
LEFT JOIN Album ON AlbumEstilo.IdAlbum = Album.IdAlbum
LEFT JOIN Artista ON Album.IdArtista = Artista.IdArtista
WHERE ATIVO = 'Sim'