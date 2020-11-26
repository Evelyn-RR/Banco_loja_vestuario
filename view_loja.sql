-- criando os relatórios com view

create view relatorio_de_produtos as select
produto.nome_prod           'Nome do produto',
produto.tamanho_prod		'Tamanho do produto',
produto.preco_venda_prod	'Preço do produto',
produto.marca_prod			'Marca do produto',
produto.categoria_prod		'Categoria do produto',
produto.qtd_prod			'Quantidade de produto',

fornecedor.nome_forn		'Nome do fornecedor',
fornecedor.cnpj_forn		'CNPJ',
fornecedor.email_forn		'Email do fornecedor',
fornecedor.telefone_forn	'Telefone do fornecedor',
fornecedor.endereco_forn	'Endereço do fornecedor'

from produto inner join fornecedor on fornecedor.id_fornecedor = produto.fk_fornecedor;

select * from relatorio_de_produtos;

create view relatorio_de_clientes as select
cliente.nome_cli		'Nome do cliente',
cliente.cpf_cli			'CPF',
cliente.emails_cli		'Email',
cliente.telefone_cli	'Telefone',
cliente.endereco_cli	'Endereço',

avaliacao.avaliacao_cliente		'Avaliação'

from cliente inner join avaliacao on avaliacao.id_avaliacao = cliente.fk_avalicao;

select * from relatorio_de_clientes;

create view relatorio_de_vendas as select
venda.qtd_itens_vend			'Quantidade de itens',
venda.data_venda				'Data da venda',
venda.metodo_pagamento_vend		'Metodo pagamento',

cliente.nome_cli				'Nome do cliente',
cliente.cpf_cli					'CPF',
cliente.telefone_cli			'Telefone',

produto.nome_prod				'Nome do produto',
produto.tamanho_prod			'Tamanho do produto',
produto.preco_venda_prod		'Preço do produto',
produto.marca_prod				'Marca do produto',
produto.categoria_prod			'Categoria do produto',

venda.qtd_itens_vend * produto.preco_venda_prod as 'Preço total de cada produto'	

from venda inner join cliente on venda.fk_cliente = cliente.id_cliente
inner join produto on venda.fk_produto = produto.id_produto;

select * from relatorio_de_vendas


