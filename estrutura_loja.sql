-- Estrutura do código

create database loja;

use loja;

-- drop database loja;

create table fornecedor
(
	id_fornecedor int auto_increment,
	nome_forn varchar(50),
	email_forn varchar(50),
	telefone_forn varchar(15),
	cnpj_forn numeric(18),
	endereco_forn varchar(500),

	constraint pk_fornecedor primary key (id_fornecedor),
	constraint uq_cnpj_fornecedor unique (cnpj_forn)
);

create table produto 
(
	id_produto int auto_increment,
	fk_fornecedor int,
	nome_prod varchar (50),
	tamanho_prod varchar (50),
	preco_venda_prod decimal (7,2),
	descricao_prod varchar (70),
	marca_prod varchar (50),
	categoria_prod varchar (50),
	qtd_prod int,

	constraint pk_produto primary key (id_produto),
	constraint fk_produto_fornecedor foreign key (fk_fornecedor) references fornecedor(id_fornecedor)
);

create table venda 
(
	id_venda int auto_increment,
	fk_cliente int,
	fk_produto int,
	qtd_itens_vend int,
	data_venda datetime,
	metodo_pagamento_vend char (1) check (metodo_pagamento_vend in('D', 'C')), -- D = Dinheiro, C = Cartão

	constraint id_venda primary key (id_venda),
	constraint fk_venda_cliente foreign key (fk_cliente) references cliente(id_cliente),
	constraint fk_venda_produto foreign key (fk_produto) references produto(id_produto)
);

create table cliente 
(
	id_cliente int auto_increment,
	fk_avalicao int,
	nome_cli varchar (50),
	sexo_cli        char(01) check (sexo_cli in('M', 'F')),
	cpf_cli numeric (14),
	emails_cli varchar (50),
	telefone_cli varchar (15),
	endereco_cli varchar (500),
	data_nasc_cli date,

	constraint pk_cliente primary key (id_cliente),
	constraint fk_cliente_avalicao foreign key (fk_avalicao) references avaliacao(id_avaliacao),
	constraint uq_cpf_cliente unique (cpf_cli)
);

create table avaliacao 
(
	id_avaliacao int auto_increment,
	avaliacao_cliente varchar (10),

	constraint pk_avaliacao primary key (id_avaliacao)
);

