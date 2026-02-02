ALTER TABLE usuarios
ADD rua VARCHAR(100),
 numero VARCHAR (10),
 cidade VARCHAR(50),
 estado VARCHAR(20);
-- Não preciso escrever ADD a cada criação de coluna. Basta escrever um e fazer como o exemplo acima

SELECT * FROM usuarios

-- não funciona
--UPDATE usuarios
--SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
--	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
--	cidade= SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
--	estado = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1;

--então:
UPDATE usuarios
SET  rua = PARSENAME(REPLACE(endereco, ',', '.'), 4),
     numero = PARSENAME(REPLACE(endereco, ',', '.'), 3),
     cidade = PARSENAME(REPLACE(endereco, ',', '.'), 2),
     estado = PARSENAME(REPLACE(endereco, ',', '.'), 1);

-- mostra como o update deverá ficar
SELECT 
    endereco,
    PARSENAME(REPLACE(endereco, ',', '.'), 4) AS rua,
    PARSENAME(REPLACE(endereco, ',', '.'), 3) AS numero,
    PARSENAME(REPLACE(endereco, ',', '.'), 2) AS cidade,
    PARSENAME(REPLACE(endereco, ',', '.'), 1) AS estado
FROM usuarios;

-- o comando não estava rodando, pois as 4 linhas abaixo estavam em um modelo diferente do que monteoi. corrigi, e agora vou dar sequência
UPDATE usuarios
SET endereco = 'Avenida dos Tupinambas, 153. Sao Paulo, Sao Paulo' 
WHERE id = 1;

UPDATE usuarios
SET endereco = 'Avenida Maria das Dores, 11200. Sao Paulo, Sao Paulo' 
WHERE id = 2;

UPDATE usuarios
SET endereco = 'Rua Denilson Bonifácio, 22. Sao Paulo, Sao Paulo' 
WHERE id = 3;

UPDATE usuarios
SET endereco = 'Rua Engenheiro Ademir Costa, 1300. Sao Paulo, Sao Paulo' 
WHERE id = 4;

--UPDATE usuarios
--SET numero = LTRIM(RTRIM(
--    SUBSTRING(endereco,
--              CHARINDEX(',', endereco) + 1,
--              CHARINDEX(',', endereco, CHARINDEX(',', endereco) + 1) - CHARINDEX(',', endereco) - 1)
--));

 exec sp_help usuarios;

 SELECT * FROM usuarios