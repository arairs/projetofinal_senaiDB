create schema if not exists churrascoMaranhao default character set utf8;
use churrascoMaranhao;

create table if not exists comanda(
	idComanda int auto_increment,
    mesa int not null,
    clienteNome varchar(255),
    abertura datetime not null,
    fechamento datetime not null,
		constraint PK_comanda primary key(idComanda)
);

create table if not exists cardapio(
	nome varchar(150) not null,
    descrição varchar(255) not null,
    preco decimal(5,2) not null,
    qtdEstoque int
);

create table if not exists pedido(
	idPedido int auto_increment,
    idComanda int,
    dataPedido datetime not null,
    nomePedido varchar(150) not null,
    qtdPedido int not null,
		constraint PK_pedido primary key(idPedido),
        constraint FK_pedido_comanda foreign key(idComanda) references comanda(idComanda)
);