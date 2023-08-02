-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT IdAluguel, NomeCliente, NomeModelo, Retirada, Devolucao
FROM Aluguel
LEFT JOIN Cliente
ON Aluguel.IdCliente = Cliente.IdCliente 
LEFT JOIN Modelo
ON Aluguel.IdVeiculo = Modelo.IdModelo

-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT IdAluguel, NomeCliente, NomeModelo, Retirada, Devolucao
FROM Aluguel
LEFT JOIN Cliente
ON Aluguel.IdCliente = Cliente.IdCliente 
LEFT JOIN Modelo
ON Aluguel.IdVeiculo = Modelo.IdModelo
WHERE NomeCliente = 'Wilson'