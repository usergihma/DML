CREATE DATABASE venda_bd;
use venda_bd;

create table venda(
	venda_id int auto_increment primary key not null,
    produto varchar(100) not null,
    quantidade int not null,
    preco decimal(10,2) not null

);
insert into venda(produto, quantidade, preco)
	values("Porsche", 10, 1000000.00),
		  ("Ferrari", 10, 1000000.00),
          ("Lamborghini", 10, 1000000.00),
          ("Fusca", 10, 30000.00),
          ("Audi", 10, 1000000.00),
          ("Civic", 10, 100000.00),
          ("Corsa", 10, 80000.00),
          ("Kwid", 10, 70000.00),
          ("BMW", 10, 1000000),
          ("Variante", 10, 10000.00);
          
select count(*) AS Total_venda
from venda;

select sum(quantidade) AS Total_produto
from venda;

select avg(preco) AS Media_de_Preço
from venda;

select min(preco) AS Menor_preço
from venda;

select max(preco) AS Meior_preço
from venda;

select * from venda;

select produto, count(*) AS Total_venda
from venda
group by produto;

select produto, sum(quantidade) AS Total_produtos_venda
from venda
group by produto
having Total_produtos_venda > 17;

select produto,quantidade, preco
from venda
order by preco asc;

select produto,quantidade, preco
from venda
order by produto asc
limit 5;

select produto, preco,
	(select max(preco) from venda) As Maior_preco
    from venda;
