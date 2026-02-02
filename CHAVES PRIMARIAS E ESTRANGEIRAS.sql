---- No caso do SQL Server, não consigo usar auto incremento em tabelas existentes. Para isso devo recriá-la, ou excluir a tabella e recriar a coluna
--CREATE TABLE usuarios (
--  id INT NOT NULL PRIMARY KEY IDENTITY (1,1) ,
--  nome VARCHAR(255) NOT NULL, --'Nome do usuário'
--  email VARCHAR(255) NOT NULL UNIQUE, --COMMENT 'Endereço de e-mail do usuário'
--  data_nascimento DATE NOT NULL, --COMMENT 'Data de nascimento do usuário'
--  endereco VARCHAR(100) NOT NULL --COMMENT 'Endereço do Cliente'
--);

----INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
----SELECT id, nome, email, endereco, data_nascimento
----FROM usuarios;

---- não consegui executar o comando acima, pois  o identity_insert está setado como "off"
----para isso, seto ele como on para migrar os dados
----SET IDENTITY_INSERT usuarios_nova ON;

----INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
----SELECT id, nome, email, endereco, data_nascimento
----FROM usuarios;

--drop table usuarios

--drop table destinos

--drop table reservas

----Inserts
--INSERT INTO usuarios (nome, email, data_nascimento, endereco)
--VALUES
--('Pâmela Apolinario', 'teste.123@gmail.com', '1991-10-07', 'Avenida dos Tupinambas, 153 - Vila Rocha/SP' );

--SELECT * FROM usuarios
--SELECT * FROM destinos
--SELECT * FROM reservas

--INSERT INTO usuarios (nome, email, data_nascimento, endereco)
--VALUES
--('Ângela Souza', 'teste.234@gmail.com', '1991-10-25', 'Avenida Maria das Dores, 11200 - Vila Lupercio/MG' ),
--('José Weidemann Pires', 'teste.345@gmail.com', '1969-05-01', 'Rua Denilson Bonifácil, 22 - Vila Rosa/MT'),
--('Odete Soares Santos de Cunha', 'teste.456@gmail.com', '1958-11-15', 'Rua Engenheiro Ademir Costa, 1300 - Vila Joelma/MT');


--INSERT INTO usuarios (nome, email, data_nascimento, endereco) 
--VALUES 
--('João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
--('Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
--('Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

--INSERT INTO destinos (nome, descricao) VALUES 
--('Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
--('Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
--('Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

--INSERT INTO reservas (id_usuario, id_destino, data, status) VALUES 
--(1, 2, '2023-07-10', 'confirmada'),
--(2, 1, '2023-08-05', 'pendente'),
--(3, 3, '2023-09-20', 'cancelada');

----ao invés de alterar tudo, dei drop e recriei da forma certa. como a moça fez no MariaDB, os comandos são diferentes, e alguns não funcionam no SQL SERVER