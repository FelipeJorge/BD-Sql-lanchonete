drop database if exists Lanchonete;
create database Lanchonete;
use Lanchonete;

create table Lanchonete.cliente(
	id_cliente int auto_increment, 
	nome_cliente varchar(45) not null,
	telefone varchar(25) not null,
	endereco varchar (45) not null,
	primary key (id_cliente));
    
create table Lanchonete.sanduiche(
	id_sanduiche int primary key not null auto_increment,
	nome_sanduiche varchar (45) not null
);

create table Lanchonete.cardapio(
id_cardapio int primary key not null auto_increment,
nome_sanduiche varchar (45) not null,
valores float not null,
id_sanduiche int,
foreign key (id_sanduiche)references Lanchonete.sanduiche(id_sanduiche)
);

create table Lanchonete.entregador(
id_entregador int primary key not null auto_increment,
nome_entregador varchar(45) not null,
telefone varchar (25) not null
);




create table Lanchonete.pedido(
	id_pedido int primary key not null,
    data_emissao date not null,
    status_pedido tinyint(4) not null,
    id_cliente int,
    id_entregador int,
    id_sanduiche int,
	foreign key (id_cliente) references Lanchonete.cliente(id_cliente),
	foreign key (id_entregador) references Lanchonete.entregador(id_entregador),
	foreign key (id_sanduiche) references Lanchonete.sanduiche(id_sanduiche)
);
    
--       inserindo dados   

insert into Lanchonete.Pedido(id_pedido,data_emissao,status_pedido) values 
(5692,"2021-12-08'",1),(5688,"2021-12-08",0),(5689,"2021-12-08",3),(5690,"2021-12-08",0),(5691,"2021-12-08",0),(5695,"2021-12-08",1);


-- consulta dados completos 

select * from Lanchonete.Pedido;

-- consulta  somente em preparacao status 0

select * from Lanchonete.Pedido where (status_pedido = 0);










