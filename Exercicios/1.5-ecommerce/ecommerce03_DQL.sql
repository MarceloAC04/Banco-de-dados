USE Exercicios

--- listar todos os pedidos de um cliente (nome), 
--- mostrando quais produtos foram solicitados (titulo) neste pedido 
--- e de qual subcategoria (nome) e categoria (nome) pertencem

SELECT Numero
FROM PedidoProduto
LEFT JOIN Pedido
ON PedidoProduto.IdPedido = Pedido.IdPedido
WHERE Pedido.IdPedido = NULL