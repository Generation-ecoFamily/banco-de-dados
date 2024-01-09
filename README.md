<img width="785" alt="image" src="https://github.com/Generation-ecoFamily/banco-de-dados/assets/105950444/0925fde8-43db-411f-869d-f07b4db63f7b">

<h1>Tabela tb_categorias: </h1>
</br>

**```id (bigint auto_increment primary key)```:** Identificador único para cada categoria.
</br>
**```descricao (varchar(255) not null)```:** Descrição da categoria.
</br>
**```perecivel (boolean not null)```:** Indica se os produtos nesta categoria são perecíveis ou não.
</br>
</br>

<h3>Motivo das Escolhas:</h3>

O **id** é uma chave primária para garantir unicidade.
</br>
A **descricao** permite uma descrição informativa da categoria.
</br>
O atributo **perecivel** é uma escolha relevante para indicar se os produtos nessa categoria são perecíveis ou não.
</br>
</br>

<h1>Tabela tb_usuarios: </h1>

**```id (bigint auto_increment primary key)```:** Identificador único para cada usuário.
</br>
**```nome (varchar(255) not null)```:** Nome do usuário.
</br>
**```usuario (varchar(255) not null unique)```:** Nome de usuário único para login.
</br>
**```senha (varchar(255) not null)```:** Senha do usuário.
</br>
**```foto (varchar(255))```:** Caminho para a foto do usuário.
</br>
</br>
<h3> Motivo das Escolhas: </h3>

O **id** é uma chave primária para garantir unicidade.
</br>
O **usuario** é escolhido como único para garantir logins distintos.
</br>
A **foto** é opcional, pois nem todos os usuários podem ter uma foto associada.
</br>
</br>

<h1>Tabela tb_produtos: </h1>

**```id (bigint auto_increment primary key)```:** Identificador único para cada produto.
</br>
**```nome (varchar(255) not null unique)```:** Nome do produto.
</br>
**```descricao (varchar(255))```:** Descrição do produto.
</br>
**```preco (decimal(10,2) not null)```:** Preço do produto.
</br>
**```quantidade (int not null)```:** Quantidade disponível do produto.
</br>
**```categoria_id (bigint)```:** Chave estrangeira referenciando a categoria do produto.
</br>
**```usuario_id (bigint)```:** Chave estrangeira referenciando o usuário associado ao produto.
</br>

<h3> Motivo das Escolhas: </h3>

O **id** é uma chave primária para garantir unicidade.
</br>
O **nome** é escolhido como único para garantir que não haja dois produtos com o mesmo nome.
</br>
O **descricao** permite uma descrição mais detalhada do produto.
</br>
O **preco** é escolhido como decimal(10,2) para armazenar valores monetários.
</br>
A **quantidade** indica a disponibilidade do produto.
</br>
**categoria_id** é uma chave estrangeira que referencia a tabela de categorias, estabelecendo uma relação (N:1) entre produtos e categorias.
</br>
**usuario_id** é uma chave estrangeira que referencia a tabela de usuários, estabelecendo uma relação (N:1) entre produtos e usuários.

