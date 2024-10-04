create database empresa_bd;
use empresa_bd;

create table Funcionario (
      codfunc int auto_increment primary key,
    nomefunc varchar(100) not null,
    sexofunc varchar(1) not null,
    bairrofunc varchar(100) not null,
    salfunc decimal (10,2) not null,
    setorfunc varchar(100)
);

insert into Funcionario(nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
values
("Larissa Menezes","F","Jabaquara",1200.00,"Marketing"),
    ("Selma Nunes","F","Grajaú",3800.00,"Vendas"),
    ("Leandro Henrique","M","Socorro",2950.00,"RH"),
    ("Amélia Jeremias","F","Socorro",4200.00,"Marketing"),
    ("Cláudio Jorge da Silva","M","Jabaquara",1480.00,"Vendas"),
    ("Luciano Souza","M","Pedreira",1000.00,"Vendas"),
    ("Gabriela Vieira Jr","F","Jurubatuba",4150.00,""),
    ("Rafaela Vieira Jr","F","Jabaquara",700.00,"Marketing"),
    ("Suzana Crispim","F","Grajaú",5600.00,"Produção"),
    ("Sabrina Oliveira Castro","F","Pedreira",2900.00,"Marketing"),
    ("Jarbas Silva Nunes","M","Jurubatuba",5300.00,"Produção"),
    ("Ralf Borges","M","Jabaquara",1600.00,"Marketing");
    
    Select * FROM Funcionario;

SELECT sum(salfun) AS Soma_Salários
		from Funcionario;

select nomefun, setorfunc As Galera_do_Marketing
        from Funcionario
        having Galera_do_Marketing = "Marketing";
        
select setorfunc, avg(salfun) AS Média_de_Salários
        from Funcionario
        group by setorfunc
        order by Média_de_Salários desc;
        
 select  nomefun, bairrofun, salfun
        from Funcionario
        WHERE bairrofun = "Socorro"
        and salfun < 3000;
        
