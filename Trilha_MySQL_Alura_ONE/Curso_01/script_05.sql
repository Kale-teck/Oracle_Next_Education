use sucos;

update tbproduto set embalagem = 'Lata', preco_lista = 2.46
where produto = '544931';

update tbproduto set embalagem = 'Garrafa' where produto = '1078680';

select * from tabela_de_vendedores;

update tabela_de_vendedores set nome = 'José Geraldo da Fonseca Junior' where
 matricula = '00233';
 
 select * from tbproduto;
 
 delete from tbproduto where produto = '1078680';
 
 select * from tabela_de_vendedores;
 
 delete from tabela_de_vendedores where matricula = '00233';
 
 
 
 