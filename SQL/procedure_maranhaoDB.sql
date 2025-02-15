
create procedure recarga_produto(qt int, id int)
LANGUAGE plpgsql
AS $$
begin
	
	update produto set qtdEstoque = qt + qtdEstoque	where idProduto = id;
	
end;
$$

drop procedure recarga_produto;

select idproduto, nome, qtdestoque from produto p 
order by idproduto ;

call recarga_produto(20,2);