DELIMITER $$

create trigger ESTOQUE
after update on produto
for each row
begin
UPDATE produto SET qtdestoque = produto.qtdestoque-pedido.qtdpedido