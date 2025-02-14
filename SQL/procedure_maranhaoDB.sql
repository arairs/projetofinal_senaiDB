

create procedure recarga_produto(qt int, id int)
LANGUAGE plpgsql
AS $$
begin
	
	update produto 	set qtdEstoque = qt	where idProduto = id;
	
end;
$$


