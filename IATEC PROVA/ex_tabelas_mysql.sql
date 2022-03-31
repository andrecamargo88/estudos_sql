create table tb_cliente (
  id int not null primary key,
  nome varchar(80) not null,
  dtnasc date,
  genero varchar(5),
  estado_civil varchar(20)
);

create table tb_pais (
  id int not null primary key,
  nome varchar(80) not null,
  abreviacao varchar(30)
);

create table tb_endereco (
  id int not null primary key,
  id_cliente int not null, foreign key my_fk (id_cliente) references tb_cliente(id),
  id_pais int not null, foreign key my_fk2 (id_pais) references tb_pais(id),
  type_logradouro varchar(30),
  logradouro varchar(80),
  numres varchar(20),
  complemento varchar(40),
  bairro varchar(40),
  cidade varchar(80),
  cep varchar(8),
  estado varchar(2)
);

create table tb_contato (
  id int not null primary key,
  id_cliente int not null, foreign key my_fk (id_cliente)references tb_cliente(id),
  ddd varchar(3),
  fone varchar(10)
);


insert into tb_cliente (id, nome) values (1, 'fernando');
insert into tb_cliente (id, nome) values (2, 'andre');

insert into tb_pais values (1, 'brasil', 'br');
insert into tb_pais values (2, 'estados unidos', 'us');

insert into tb_contato values (1, 1, '019', '980000000');
insert into tb_contato values (2, 1, '019', '981111111');
insert into tb_contato values (3, 1, '019', '922222222');
insert into tb_contato values (4, 2, '019', '922222222');


insert into tb_endereco values (1, 1, 1, 'principal', 'av do estado', '504', 'casa', 'centro', 'sao paulo', '13041306', 'sp');
insert into tb_endereco values (2, 2, 2, 'principal', '5th av', '504', null, 'centro', 'new york', '13041306', 'ny');




-- consulta ex.02

select c.nome,
	   c.estado_civil, 
	   concat(o.ddd, ' ',o.fone) as contato,
	   e.type_logradouro,
	   e.logradouro,
	   e.numres,
	   e.complemento,
	   e.bairro,
	   e.cidade,
	   e.cep,
	   e.estado,
	   p.nome as pais
  from tb_cliente c inner join tb_contato o on c.id = o.id_cliente
    inner join tb_endereco e on e.id_cliente = c.id
	inner join tb_pais p on p.id = e.id_pais;
    
    
    
-- consulta ex.03

Create procedure prc_retorna_cli_pais
  @nm_pais varchar(100)
as
begin
  select c.id, c.nome
    from tb_cliente c join tb_endereco e on c.id = e.id_cliente
    join tb_pais p on p.id = e.id_pais
   where p.nome = @nm_pais;
end
go

execute prc_retorna_cli_pais 'brasil'