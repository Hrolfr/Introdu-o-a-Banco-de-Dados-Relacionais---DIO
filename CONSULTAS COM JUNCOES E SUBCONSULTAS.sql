-- INNER JOIN: retorna apenas as linhas que existem em ambas as tabelas

SELECT * 
FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario
INNER JOIN destinos ds ON rs.id_destino = ds.id; 
-- puxou os usuários com reserva

INSERT INTO usuarios (nome, email, data_nascimento, endereco, rua, numero, cidade, estado)
VALUES
('sem reservas', 'dio@teste.com', '1992-05-05', 'rua, 12. cidade, estado' , 'rua', '12', 'cidade', 'estado');

SELECT * 
FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;

--LEFT JOIN
SELECT * FROM destinos des
LEFT JOIN reservas rs
	ON des.id = rs.id_destino;

--RIGHT JOIN
SELECT * FROM reservas rs
RIGHT JOIN destinos ds
	ON ds.id = rs.id_destino;