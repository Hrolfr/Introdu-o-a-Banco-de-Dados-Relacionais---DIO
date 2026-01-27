CREATE TABLE usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL, --'Nome do usuário'
  email VARCHAR(255) NOT NULL UNIQUE, --COMMENT 'Endereço de e-mail do usuário'
  data_nascimento DATE NOT NULL, --COMMENT 'Data de nascimento do usuário'
  endereco VARCHAR(100) NOT NULL --COMMENT 'Endereço do Cliente'
);

INSERT INTO usuarios_nova (id, nome, email, endereco, data_nascimento)
SELECT id, nome, email, endereco, data_nascimento
FROM usuarios;

SELECT * FROM usuarios_nova;
SELECT * FROM usuarios;

DROP TABLE usuarios;

--seria assim no MariaDB, porém no SQL Server não funciona
--ALTER TABLE usuarios_nova RENAME usuarios;

--esse modo funciona
exec sp_rename 'usuarios_nova', 'usuarios'; 

ALTER TABLE usuarios 
ALTER COLUMN endereco VARCHAR(150);