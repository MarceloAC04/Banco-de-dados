SELECT 
	NOME, 
	CNH, 
	ENDERECO AS Email, 
	TELEFONE 
FROM 
	Pessoa, Email, Telefone
WHERE
	Pessoa.IdPessoa = Email.IdPessoa
	AND Pessoa.IdPessoa = Telefone.IdPessoa
ORDER BY Nome DESC

SELECT Nome, CNH, Endereco as Email, Telefone
FROM Pessoa
LEFT JOIN Email
ON Pessoa.IdPessoa = Email.IdPessoa
LEFT JOIN Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa ORDER BY Nome DESC