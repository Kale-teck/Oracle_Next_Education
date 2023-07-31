select * from tbcliente;

select * from tbcliente where DATA_NASCIMENTO = '1995-01-13';

select * from tbcliente where DATA_NASCIMENTO > '1995-01-13';

select * from tbcliente where DATA_NASCIMENTO <= '1995-01-13';

select * from tbcliente where year(DATA_NASCIMENTO) = 1995;

select * from tbcliente where month(DATA_NASCIMENTO) = 10;

select * from tabela_de_vendedores;

select * from tabela_de_vendedores where year(data_admissao) >= 2016;