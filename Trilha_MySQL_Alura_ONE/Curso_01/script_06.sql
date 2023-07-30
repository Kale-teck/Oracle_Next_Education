alter table tbclientes add primary key (cpf);

alter table tbclientes add column (data_nascimento date);

select * from tabela_de_vendedores;



insert into tbclientes (
	CPF,
    nome,
    endereco1,
    endereco2,
    bairro,
    cidade,
    estado,
    CEP,
    idade,
    sexo,
    limite_credito,
    limite_compra,
    primeira_compra,
    data_nascimento
) values (
	'00388934505',
    'João da Silva',
    'Rua Projetada A número 10',
    '',
    'Vila Romana',
    'Caratinga',
    'Amazonas',
    '22222222',
    30,
    'M',
    10000.00,
    2000,
    0,
    '1989-10-05'
);

show tables;

alter table tabela_de_vendedores add column (data_admissao date, de_ferias bool);

alter table tabela_de_vendedores add primary key (matricula);

update tabela_de_vendedores set data_admissao = '2014-08-15'
where matricula = '00235';

update tabela_de_vendedores set de_ferias = 0 where matricula = '00235';

update tabela_de_vendedores set 
data_admissao = '2013-09-17'
where matricula = '00236';

select * from tabela_de_vendedores;

insert into tabela_de_vendedores (
	matricula,
    nome,
    percentual_comissao,
    data_admissao,
    de_ferias
) values (
	'00237',
    'Roberta Martins',
    0.11,
    '2017-03-18',
    1
);

insert into tabela_de_vendedores (
	matricula,
    nome,
    percentual_comissao,
    data_admissao,
    de_ferias
) values (
	'00238',
    'Péricles Alves',
    0.11,
    '2016-08-21',
    0
);