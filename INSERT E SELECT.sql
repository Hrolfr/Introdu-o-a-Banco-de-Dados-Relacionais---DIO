--INSERT INTO usuarios (id, nome, email, data_nascimento, endereco)
--VALUES
--(1, 'Pâmela Apolinario', 'teste.123@gmail.com', '1991-10-07', 'Avenida dos Tupinambas, 153 - Vila Rocha/SP' );

--SELECT * FROM usuarios

--INSERT INTO usuarios (id, nome, email, data_nascimento, endereco)
--VALUES
--(2, 'Ângela Souza', 'teste.234@gmail.com', '1991-10-25', 'Avenida Maria das Dores, 11200 - Vila Lupercio/MG' ),
--(3, 'José Weidemann Pires', 'teste.345@gmail.com', '1969-05-01', 'Rua Denilson Bonifácil, 22 - Vila Rosa/MT'),
--(4, 'Odete Soares Santos de Cunha', 'teste.456@gmail.com', '1958-11-15', 'Rua Engenheiro Ademir Costa, 1300 - Vila Joelma/MT');


INSERT INTO usuarios (id, nome, email, data_nascimento, endereco) VALUES 
(5, 'João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
(6, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
(7, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

INSERT INTO destinos (id, nome, descricao) VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUES 
(1, 1, 2, '2023-07-10', 'confirmada'),
(2, 2, 1, '2023-08-05', 'pendente'),
(3, 3, 3, '2023-09-20', 'cancelada');

--SELECT * FROM destinos

--SELECT * FROM reservas