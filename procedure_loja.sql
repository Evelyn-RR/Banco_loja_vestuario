-- criando PROCEDURE para somar total de venda

drop procedure valor_total

delimiter $$
create procedure valor_total
(in n_pedido int,
out vlr_total decimal(10,2)
)
begin
set @preco_desconto = (
select 
sum(produto.preco_venda_prod) * 0.10 as 'Desconto' 
from venda 
inner join produto on venda.fk_produto = produto.id_produto
where fk_cliente = 1 and metodo_pagamento_vend = 'D'
);
select
	cliente.nome_cli as 'Nome do cliente', 
	cliente.cpf_cli as 'CPF do cliente', 
    @preco_desconto as 'Valor do desconto',
	SUM(qtd_itens_vend * preco_venda_prod) - @preco_desconto as 'Valor total do pedido'
FROM venda
INNER JOIN cliente ON venda.fk_cliente = cliente.id_cliente
INNER JOIN produto ON venda.fk_produto = produto.id_produto
WHERE venda.fk_cliente = 1 
GROUP BY 
cliente.nome_cli, cliente.cpf_cli;
end;
 $$

call valor_total(1, @vlr_total);