show tables;

alter table tbproduto add primary key (produto);

select * from tbproduto;

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);
update tbproduto set embalagem = 'Garrafa' where produto = '1078680';

delete from tbproduto where produto = '1078680';