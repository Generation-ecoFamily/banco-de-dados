#criação database
create database db_ecofamily;

use db_ecofamily;

#criação tabelas
create table tb_categorias (
id BIGINT auto_increment primary key,
descricao VARCHAR(255) not null,
perecivel boolean not null
);

create table tb_usuarios (
id BIGINT auto_increment primary key,
nome VARCHAR(255) not null,
usuario VARCHAR(255) not null unique,
senha VARCHAR(255) not null,
foto VARCHAR(255)
);

create table tb_produtos (
id BIGINT auto_increment primary key,
nome VARCHAR(255) not null unique,
descricao VARCHAR(255),
preco DECIMAL(10,2) not null,
quantidade INT not null,
categoria_id BIGINT,
usuario_id BIGINT,
foreign key (categoria_id) references tb_categorias(id),
foreign key (usuario_id) references tb_usuarios(id)
);

#visualização
select * from tb_produtos;

select * from tb_categorias;

select * from tb_usuarios;