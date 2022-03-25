--Parte 1

CREATE TABLE IF NOT EXISTS kopas(
  id BIGSERIAL CONSTRAINT id_kopas 	PRIMARY KEY,
  selecao VARCHAR(128) 				NOT null UNIQUE,
  qnt_copas 						INTEGER
);


INSERT INTO 
  kopas(selecao, qnt_copas) 
VALUES 
('Brasil',5),
('Alemanha',5),
('Itália',4),
('Argentina',2),
('França',2),
('Uruguai',2),
('Inglaterra',1),
('Espanha',1),
('Japão',1);

select * from kopas;

update kopas set qnt_copas = 4  where selecao  = 'Alemanha';

delete from kopas where selecao = 'Japão' returning  *;

select * from kopas;