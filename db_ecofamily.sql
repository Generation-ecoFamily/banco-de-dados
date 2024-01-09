#criação database
create database db_ecofamily;

use db_ecofamily;

#criação tabelas
create table tb_categorias (
id bigint auto_increment primary key,
descricao varchar(255) not null,
perecivel boolean not null
);

create table tb_usuarios (
id bigint auto_increment primary key,
nome varchar(255) not null,
usuario varchar(255) not null unique,
senha varchar(255) not null,
foto varchar(255)
);

create table tb_produtos (
id bigint auto_increment primary key,
nome varchar(255) not null unique,
descricao varchar(255),
preco decimal(10,2) not null,
quantidade int not null,
categoria_id bigint,
usuario_id bigint,
foreign key (categoria_id) references tb_categorias(id),
foreign key (usuario_id) references tb_usuarios(id)
);

#visualização
select * from tb_produtos;

select * from tb_categorias;

select * from tb_usuarios;