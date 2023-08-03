USE Exercicios

--- listar todos os pedidos de um cliente (nome), 
--- mostrando quais produtos foram solicitados (titulo) neste pedido 
--- e de qual subcategoria (nome) e categoria (nome) pertencem

SELECT NomeCliente AS Cliente , Numero AS Pedido , NomeProduto AS Produto , NomeSubCategoria AS SubCategoria , NomeCategoria AS Categoria
FROM PedidoProduto
LEFT JOIN Produto ON PedidoProduto.IdProduto = Produto.IdProduto
LEFT JOIN Pedido ON PedidoProduto.IdPedido = Pedido.IdPedido
LEFT JOIN SubCategoria ON Produto.IdSubCategoria = SubCategoria.IdCategoria
LEFT JOIN Categoria ON SubCategoria.IdCategoria = Categoria.IdCategoria
LEFT JOIN ClienteLoja ON Pedido.IdClienteloja = ClienteLoja.IdClienteLoja 
