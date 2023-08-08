use master

go
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'petcare2')
	DROP DATABASE petcare2

	go
create database petcare2

go
use petcare2

go
create table Equipe(
  id_email int identity not null,
  email_user varchar(100),
  senha varchar(10),
  tipo_user varchar(20),
  primary key (id_email),
)

go
create table Cuidador(
 id_cuidador int identity not null,
 nome varchar(100),
 email_cuidador varchar(100),
 data_nasc date,
 telefone varchar(15),
 cpf varchar(15),
 genero varchar(100),
 senha varchar(100),
 especializacao varchar(100),
 tempo_exper varchar(100),
 curr_aberto int,
 curr_aceito int,
 primary key (id_cuidador)
)

go
create table Dono(
 id_dono int identity not null,
 nome varchar(100),
 email_dono varchar(100),
 data_nasc date,
 telefone varchar(15),
 CPF varchar(15),
 genero varchar(100),
 senha varchar(10),
 primary key (id_dono)
)

create table Endereco(
 id_endereco int identity not null,
 cidade varchar(100),
 bairro varchar(100),
 uf char(2),
 cep char(9),
 complemento varchar(100),
 numero int,
 primary key (id_endereco),
 id_dono int foreign key references
	   dono (id_dono),
id_cuidador int foreign key references
	   cuidador (id_cuidador)
)

go
create table Pet(
 id_pet int identity not null,
 nome varchar(100),
 data_nasc date,
 raca varchar(100),
 genero varchar(100),
 peso varchar(100),
 porte varchar(100),
 vacinacao varchar(100),
 descricao varchar(255),
 primary key (id_pet),
 id_dono int foreign key references
	   dono (id_dono)
)

go
create table Tipo_pet(
id_tipoPet int identity not null,
nome_tipoPet varchar(100),
descr_tipoPet varchar(100),
primary key (Id_tipoPet),
id_pet int foreign key references
	   pet (id_pet),
id_cuidador int foreign key references
	   cuidador (id_cuidador)
)

go
create table Servico(
 id_serv int identity not null,
 data_inicial date,
 data_final date,
 primary key (id_serv),
 id_dono int foreign key references
	dono (id_dono),
 id_cuidador int foreign key references 
    cuidador (id_cuidador)
)
go

create table Status_pedido(
 id_status int identity not null, 
 agendado int,
 pendente int, 
 feito int,
 primary key (id_status)
)

go
create table tipo_servico(
 Id_tipoServ int identity not null,
 nome_servico varchar(100),
 descr_servico varchar(255),
 primary key(Id_tipoServ),
 id_serv int foreign key references
	servico (id_serv),
 id_cuidador int foreign key references
	cuidador (id_cuidador),
 id_status int foreign key references
	status_pedido (id_status)
)

go
create table Pedido(
 id_ped int identity not null,
 nome_prod varchar(100),
 nome_servico varchar(100),
 descricao varchar(100),
 data_ped datetime,
 nome_comprador varchar(100),
 primary key (id_ped),
 id_dono int foreign key references 
     dono(id_dono),
 id_status int foreign key references
     status_pedido(id_status)
)

go
create table Produto(
 id_prod int identity not null,
 nome_prod varchar(100),
 qtde int,
 descricao varchar(100),
 CNPJ_Fornecedor varchar(20),
 primary key (id_prod),
 id_email int foreign key references
	Equipe (id_email)
)

go
create table Prod_Ser_Ped(
 id_serv int foreign key references
    servico(id_serv),
 id_ped int foreign key references
    pedido(id_ped),
 id_prod int foreign key references
    produto(id_prod),
	primary key (id_serv, Id_ped, Id_prod),
)

go
create table Conversa(
 id_conversa int identity not null,
 primary key (id_conversa),
 id_dono int foreign key references
    dono(id_dono),
 id_cuidador int foreign key references
     cuidador(id_cuidador)
)

go
create table Mensagem(
 id_mensagem int identity not null,
 data_mensagem datetime,
 mensagem varchar(255),
 primary key (id_mensagem),
 id_conversa int foreign key references 
    conversa(id_conversa)
)

go
create table Token_cuidador(
 id_cuidador int foreign key references
  cuidador(id_cuidador),
  token varchar(255),
  primary key (id_cuidador, token)
)

go
create table Token_tutor(
 id_dono int foreign key references
  dono(id_dono),
 token varchar(255),
 primary key (id_dono, token)
)

--img varbinary(max) --para salvar imagem no banco

-----------------------------------Inserts----------------------------------------------------

go
insert equipe values 
 ('pedrosilva@gmail.com', 'Pe#20143', 'RH'),
 ('maria@gmail.com', 'Ma@36978', 'Administrador'),
 ('louisy@gmail.com', 'Lou*23890', 'Estoque')

go
insert Produto values 
 ('bowl para comida', 16, 'potinho para comida', '15.896.574/0001-20', 3),
 ('ração', 24, 'ração para cachorros porte médio','78.451.693/0001-84', 3)

go
insert cuidador values
('Pedro Alves','Pedrosilva@gmail.com', '30-05-2004', '(11) 40022-8922', '133.476.697-39', 'masculino','Psilv80*','profissional em pet sitter', '2 anos', 0, 1),
('Sabrina Barros','Sabarros@gmail.com', '20-08-2004', '(11) 56789-8876', '132.566.978-09', 'feminino','Sabb@201','profissional em hospedagem', '5 anos', 0, 1),
('Marcia Curie','Curiemarcia@gmail.com', '25-11-1975', '(11) 30903-5679', '164.734.859-99', 'feminino','CuriX206','profissional em passeio', '1 ano', 0, 1),
('Rubens Silva','Rubao34@gmail.com', '06-02-1988', '(11) 69876-0856', '175.478.073-14', 'masculino','Rube*886','profissional em creche', '3 anos', 0, 1),
('Bombom Souza','Bombomsouza@gmail.com', '19-12-2001', '(11) 25432-9009', '156.243.650-78', 'masculino','Bombom9*','profissional em cuidados', '8 anos', 0, 1)

go
insert Dono values
('Louisy Tomazi','loulou@gmail.com', '01-04-2005', '(11) 45089-8765', '133.476.697-39','feminino', 'LuoY2010'),
('Maria Eduarda Canto','duda@gmail.com', '21-07-2006', '(11) 78965-1214', '133.436.697-39','feminino', 'MarC6219'),
('Lillian Nunes','dorock@gmail.com', '26-06-2005', '(11) 12367-8792', '134.476.697-39','feminino', 'LilT8479')

go
insert endereco values
('São Paulo','Jardins','SP','09865-098','Bloco C', 11, 1, 2),
('Rio de Janeiro','Copacaban','RJ','13509-196','Bloco D', 26, 3, 1),
('Minas Gerais','Ribeirão das Neves','MG','89654-697','Bloco A',9, 2, 3)

go
insert pet values
('Katy','05-02-2013','escaminha','feminino', '3kg', 'pequeno','vacinada','personalidade forte', 1),
('Raja','04-10-2020','bolder colie','masculino', '4,5kg', 'médio','vacinado','anti-social', 1),
('Tody','20-03-2018','york shire','masculino', '3kg', 'pequeno','vacinado','dog manso e carinhoso', 2),
('Grandão','20-02-2020','dálmata','masculino', '6kg', 'grande','vacinado','bravo',3)

go
insert tipo_pet values
('gato', 'gatos pequenos', 1, 2),
('cachorro', 'cachorros de porte grande', 2, 1)

go
insert Status_pedido values
 (1,0,0), -- aceito 
 (0,1,0), -- pendente
 (0,0,1)  -- feito

go
insert Servico values
('29-05-2023', '20-08-2023', 1, 1),
('11-07-2022', '09-11-2023', 2, 2),
('30-01-2020', '23-06-2023', 3, 3)

go
insert tipo_servico values
('passeio', 'passseios em parques com animais de porte pequeno', 1, 2, 1),
('creche', 'creche de 5 horas', 2, 3, 1)

go
insert Pedido values
('pote para comida', 'não há', 'pote para comida rosa', '20-05-2018', 'Christian',1, 1),
('não há', 'creche', 'Serviço de creche para animais porte pequeno integral', '06-08-2020', 'Lúcia', 2, 3)

go
insert Conversa values
(1,2),
(2,1)

go
insert Mensagem values
('20-05-2018', 'Oiii,amigos!', 1),
('18-12-2019', 'Helllo World!', 2)



