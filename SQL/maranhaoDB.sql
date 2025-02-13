-- create schema if not exists churrascoMaranhao default character set utf8;
create database churrascoMaranhao;

-- use churrascoMaranhao;

create table if not exists produto(
	idProduto serial,
	nome varchar(150) not null,
    descrição varchar(255) not null,
    preco decimal(5,2) not null,
    qtdEstoque int,
    	constraint PK_produto primary key(idProduto)
);

create table if not exists comanda(
	idComanda serial,
    mesa int not null,
    clienteNome varchar(255),
    abertura timestamp not null,
    fechamento timestamp not null,
		constraint PK_comanda primary key(idComanda)
);

create table if not exists pedido(
	idPedido serial,
    idComanda int,
    idProduto int,
    dataPedido timestamp not null,
    nomePedido varchar(150) not null,
    qtdPedido int not null,
		constraint PK_pedido primary key(idPedido),
        constraint FK_pedido_comanda foreign key(idComanda) references comanda(idComanda),
        constraint FK_pedido_produto foreign key(idProduto) references produto(idProduto)
);
