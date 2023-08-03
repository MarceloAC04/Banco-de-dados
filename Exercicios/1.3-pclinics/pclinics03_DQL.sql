USE Exercicios;

--- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT Clinica.Nome, Endereco, Veterinario.Nome, CRMV
FROM Clinica
LEFT JOIN Veterinario
ON Clinica.IdClinica = Veterinario.IdClinica

--- listar todas as raças que começam com a letra S
SELECT DescricaoRaca
FROM Raca
WHERE DescricaoRaca LIKE 'S%'

--- listar todos os tipos de pet que terminam com a letra O
SELECT DescricaoTipo
FROM Tipo
WHERE DescricaoTipo LIKE '%o'

--- listar todos os pets mostrando os nomes dos seus donos
SELECT NomePet , NomeDono
FROM Pet
LEFT JOIN Dono
ON Pet.IdDono = Dono.IdDono

--- listar todos os atendimentos mostrando o nome do veterinário que atendeu, 
--- o nome, a raça e o tipo do pet que foi atendido, 
--- o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT Veterinario.Nome AS Veterinario , NomePet, DescricaoRaca, DescricaoTipo, NomeDono , Clinica.Nome AS Clinica
FROM Atendimento
LEFT JOIN Veterinario ON Atendimento.IdVeterinario = Veterinario.IdVeterinario
LEFT JOIN Pet ON Atendimento.IdPet = Pet.IdPet
LEFT JOIN Raca ON Pet.IdRaca = Raca.IdRaca 
LEFT JOIN Tipo ON Pet.IdTipo = Tipo.IdTipo
LEFT JOIN Dono ON Pet.IdDono = Dono.IdDono
LEFT JOIN Clinica ON Veterinario.IdClinica = Clinica.IdClinica