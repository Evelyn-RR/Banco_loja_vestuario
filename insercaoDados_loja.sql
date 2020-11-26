-- Alimentando a tabela com inserts

insert into fornecedor (nome_forn, email_forn, telefone_forn, cnpj_forn, endereco_forn)
values 
('Marisa', 'marisa@gmail.com', '(15)3518-7764', 33510545000105, 'Rua Balbina Mestrinho, nº 98/ Mauazinho - Manaus/AM'),
('Riechuelo', 'riechuelo@outlook.com', '(21)8874-3270', 09161714000156, 'Rua Avestruz, n° 45/ Boqueirão - Guarapuava/PR'),
('C&A', 'c&a@gmail.com', '(95)3207-4296', 76407815000151, 'Quadra AE 304 Sul Avenida NS 4, n° 1005/ Plano Diretor Sul - Palmas/TO'),
('Nike', 'nike@hotmail.com', '(18)8714-3367', 33588605000102, 'Via Pedestre 16, n° 596/ Calumbi - Feira de Santana/BA'),
('Adidas', 'adidas@gmail.com', '(66)5718-5626', 81141579000104, 'Rua Veneza, n° 2/ Presidente Médici - Chapecó/SC');

select * from fornecedor;

insert into produto (fk_fornecedor, nome_prod, tamanho_prod, preco_venda_prod, descricao_prod, marca_prod, categoria_prod, qtd_prod)
values 
(1, 'moletom rick and morty', 'G', 79.90, 'moletom de algodão na cor preta', 'hering', 'moletom', 50),
(2, 'camiseta rei leão', 'M', 29.39, 'camiseta de algodão na cor amarela', 'posthaus', 'camiseta', 70),
(3, 'Vestido Feminino', 'P', 50.00, 'Vestido de seda feminino estampa floral manga 3/4', 'C&A', 'vestido', 100),
(4, 'tênis air force', '40', 120.90, 'tênis nike air force lv8 branco/preto', 'nike', 'tênis', 150),
(5, 'tênis classico', '36', 110.50, 'Tênis Adidas Grand Court Base', 'netshoes', 'tênis',200);

select * from produto;

insert into venda (fk_cliente, fk_produto, qtd_itens_vend, data_venda, metodo_pagamento_vend)
values
(1, 1, 2, now(), 'D'), -- 'Dinheiro'
(5, 1, 3, now(), 'D'), -- 'Dinheiro'
(4, 2, 5, now(), 'C'), -- 'Cartão'
(3, 3, 2, now(), 'D'), -- 'Dinheiro'
(2, 4, 1, now(), 'C'), -- 'Cartão'
(1, 5, 1, now(), 'D'); -- 'Dinheiro'

select * from venda;

insert into cliente (fk_avalicao, nome_cli, sexo_cli, cpf_cli, emails_cli, telefone_cli, endereco_cli, data_nasc_cli)
values
(1, 'Evelyn Rodrigues Oliveira', 'F', 13214654324, 'evelyn_rodrigues@gmail.com', '(15)978682315', 'Rodovia Carlos Zipperer Sobrinho, nº 1005/ Serra Alta - São Bento do Sul/SC', '19880208'),
(2, 'Alexsander Silva Rodrigues', 'M', 11698545364, 'alexsander_silva@outlook.com', '(18)986423586', 'Rua Manoel Martins, nº 57/ Jardim Munique - São Carlos/SP ', '19961106'),
(3, 'Mateus Vieira Souza', 'M', 66798464658, 'mateus_vieira@hotmail.com', '(97)933556688', 'Rua Evaldo Zeferino Pereira dos Santos, nº 678/ Padre José de Anchieta - Colatina/ES', '19980312'),
(4, 'Maria Antônia Meneses', 'F', 54965469556, 'maria_antonia@gmail.com', '(51)912368546', 'Avenida Marginal da Ferrovia, nº 4/ Santa Teresa - Juiz de Fora/MG', '19851225'),
(5, 'Carol Cristina Barbosa', 'F', 97984564864, 'carol_cristina@outlook.com', '(22)978323861', 'Rua Eusébio Foreliza, nº 3648/ Santa Lídia - Castanhal/PA', '19820430');

select * from cliente;

insert into avaliacao (avaliacao_cliente)
values
('Ótimo'),
('Bom'),
('Regular'),
('Ruim'),
('N/A');

select * from avaliacao;
