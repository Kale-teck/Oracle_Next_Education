show databases;

use sucos;

show tables;

insert into tbproduto (
	produto,
    nome,
    embalagem,
    tamanho,
    sabor,
    preco_lista
) values (
	'1037797',
    'Clean - 2 Litros - Laranja',
    'PET',
    '2 Litros',
    'Laranja',
    16.01
);
insert into tbproduto (
	produto,
    nome,
    embalagem,
    tamanho,
    sabor,
    preco_lista
) values (
	'1000889',
    'Sabor da Montanha - 700 ml - Uva',
    'Garrafa',
    '700 ml',
    'Uva',
    6.31
);
insert into tbproduto (
	produto,
    nome,
    embalagem,
    tamanho,
    sabor,
    preco_lista
) values (
	'1004327',
    'Videira do Campo - 1,5 Litros - Melância',
    'PET',
    '1,5 Litros',
    'Melância',
    19.51
);



select * from tbproduto;

show tables;

select * from tabela_de_vendedores;

insert into tabela_de_vendedores (
	matricula,
    nome,
    percentual_comissao
) values (
	'00235',
    'Márcio Almeida Silva',
    0.8
);
insert into tabela_de_vendedores (
	matricula,
    nome,
    percentual_comissao
) values (
	'00236',
    'Cláudia Morais',
    0.8
);

DELETE FROM tabela_de_vendedores WHERE percentual_comissao = 10;
