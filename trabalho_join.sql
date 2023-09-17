
create database PetShop;          -- Cria o banco de dados
use PetShop;                      -- Seleciona o banco para os próximos comandos

/* As linhas acima não devem ser executas em serviços online como o sqlite oline*/


create table Especies (
	id				integer 			primary key identity,
	nome			varchar(50)			unique  not null,
	alimentacao		varchar(20)
);

create table Animais (
	id				integer 			primary key identity,
	nome			varchar(50) 		not null,
	data_nasc		date 				not null,
	peso			decimal(10,2)		check (peso > 0),
	cor				varchar(50),
	especie_id		int					references Especies(id)
);


insert into Especies (nome, alimentacao) values ('gato', 'carnívoro');
insert into Especies (nome, alimentacao) values ('cachorro', 'carnívoro');
insert into Especies (nome, alimentacao) values ('morcego', 'onívoro');
insert into Especies (nome, alimentacao) values ('rato', 'onívoro');
insert into Especies (nome, alimentacao) values ('ramister', 'herbívoro');
insert into Especies (nome, alimentacao) values ('baleia', 'carnívoro');
insert into Especies (nome, alimentacao) values ('sardinha', 'herbívoro');
insert into Especies (nome, alimentacao) values ('bacalhau', 'herbívoro');
insert into Especies (nome, alimentacao) values ('tubarão', 'carnívoro');
insert into Especies (nome, alimentacao) values ('lambari', 'herbívoro');
insert into Especies (nome, alimentacao) values ('corvina', 'herbívoro');
insert into Especies (nome, alimentacao) values ('iguana', 'herbívoro');
insert into Especies (nome, alimentacao) values ('camaleão', 'herbívoro');
insert into Especies (nome, alimentacao) values ('lagarto', 'herbívoro');
insert into Especies (nome, alimentacao) values ('cobra', 'carnívoro');
insert into Especies (nome, alimentacao) values ('cacatua', 'herbívoro');
insert into Especies (nome, alimentacao) values ('pardal', 'onívoro');
insert into Especies (nome, alimentacao) values ('bentevi', 'herbívoro');
insert into Especies (nome, alimentacao) values ('canario', 'herbívoro');
insert into Especies (nome, alimentacao) values ('virus', null);
insert into Especies (nome, alimentacao) values ('bactéria', null);
insert into Especies (nome) values ('barata');
insert into Especies (nome) values ('carcará');
insert into Especies (nome) values ('polvo');
insert into Especies (nome) values ('nautilus');

insert into Animais values ('ágata', '2015-4-9', 13.9, 'branco', 1);
insert into Animais values ('félix', '2016-6-6', 14.3, 'preto', 1);
insert into Animais values ('tom', '2013-2-8', 11.2, 'azul', 1);
insert into Animais values ('garfield', '2015-7-6', 17.1, 'laranja', 1);
insert into Animais values ('frajola', '2013-8-1', 13.7, 'preto', 1);
insert into Animais values ('manda-chuva', '2012-2-3', 12.3, 'amarelo', 1);
insert into Animais values ('snowball', '2014-4-6', 13.2, 'preto'  , 1);
insert into Animais values ('ágata', '2015-8-3', 11.9, 'azul', 1);
insert into Animais values ('ágata', '2016-3-4', 18.6, 'roxo', 1);
insert into Animais values ('gato de botas', '2012-12-10', 11.6, 'amarelo', 1);
insert into Animais values ('bola de pelo', '2020-04-06', 11.6, 'amarelo', 2);
insert into Animais values ('milu', '2013-2-4', 17.9, 'branco', 2);
insert into Animais values ('pluto', '2012-1-3', 12.3, 'amarelo' , 2);
insert into Animais values ('pateta', '2015-5-1', 17.7, 'preto', 2);
insert into Animais values ('snoopy', '2013-7-2', 18.2, 'branco', 2);
insert into Animais values ('bidu', '2012-9-8', 12.4, 'azul', 2);
insert into Animais values ('dum dum', '2015-4-6', 11.2, 'laranja', 2);
insert into Animais values ('muttley', '2011-2-3', 14.3, 'laranja', 2);
insert into Animais values ('scooby', '2012-1-2', 19.9, 'marrom', 2);
insert into Animais values ('rufus', '2014-4-5', 19.7, 'branco', 2);
insert into Animais values ('costelinha', '2016-5-2', 13.4, 'branco', 2);
insert into Animais values ('coragem', '2013-7-8', 12.2, 'vermelho', 2);
insert into Animais values ('jake', '2012-2-7', 11.6, 'vermelho', 2);
insert into Animais values ('k900', '2012-11-25', 11.6, 'amarelo', 2);
insert into Animais values ('gato de botas', '2012-11-25', 11.6, 'amarelo', 2);
insert into Animais values ('jerry', '2010-2-4', 06.6, 'laranja', 4);
insert into Animais values ('ligeirinho', '2011-5-3', 04.4, 'amarelo', 4);
insert into Animais values ('mikey', '2012-7-1', 02.2, 'preto', 4);
insert into Animais values ('minie', '2013-9-3', 03.2, 'preta', 4);
insert into Animais values ('topo gigio', '2016-6-8', 05.5, 'amarelo', 4);
insert into Animais values ('bafo de onça', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values ('susan murphy', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values ('insectosauro', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values ('gallaxhar', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values ('hathaway', '2016-6-8', 05.5, 'amarelo', null);
insert into Animais values ('tutubarão', '2010-2-6', 101.9 , 'branca', 9);
insert into Animais values ('prof. pardal', '2012-4-4', 1.7, 'amarelo', 17);
insert into Animais values ('mobie', '2014-5-2', 5069.4, 'branca', 6);
insert into Animais values ('batman', '2013-7-1', 96.1, 'preto', 3);
insert into Animais values ('caramelo', '2013-7-1', 96.1, 'amarelo', 3);




--   Selecione o nome e a espécie de todos os animais​

SELECT Animais.nome, Especies.nome as Especie
FROM Animais 
LEFT JOIN Especies ON Animais.especie_id = Especies.id;


--    Selecione todos os gatos laranja​

SELECT Animais.nome, Especies.nome as Especie, Animais.cor
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE Especies.nome = 'gato' and Animais.cor = 'laranja';



-- Selecione todos os cachorros da cor amarelo​

SELECT Animais.nome, Especies.nome as Especie, Animais.cor
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE Especies.nome = 'cachorro' and Animais.cor = 'amarelo';



--  Selecione todos os animais aquáticos que pesam mais que 70 Kg​

SELECT Animais.nome, Animais.data_nasc, Animais.cor, Animais.peso, Especies.nome, Especies.alimentacao 
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE (Especies.id = 7 or Especies.id = 8 or Especies.id = 9 or Especies.id = 10 or Especies.id = 11 or Especies.id = 25 or Especies.id = 26)
and Animais.peso > 70.0;



-- Selecione todos os herbívoro ordenados pelos mais pesados​

SELECT  Animais.nome, Animais.peso, Especies.nome as Especie, Especies.alimentacao
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE Especies.alimentacao = 'herbívoro' ORDER BY Animais.peso DESC;


--    Selecione todos os carnívoro que são pretos e brancos​

SELECT  Animais.nome, Animais.cor, Especies.nome as Especie, Especies.alimentacao
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE Especies.alimentacao = 'Carnívoro' AND (Animais.cor LIKE 'branc%' OR Animais.cor LIKE 'pret%')




-- Selecione todos os onívoros que nasceram antes de 2013​

SELECT  Animais.nome, Animais.data_nasc, Especies.nome as Especie, Especies.alimentacao
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE Especies.alimentacao = 'Onívoro' AND Animais.data_nasc < '2013-01-01'



-- Selecione todos os mamíferos que pesam mais que 10 quilos e são marrons ou azul​

SELECT  Animais.nome, Animais.peso, Animais.cor, Especies.nome as Especie
FROM Animais 
INNER JOIN Especies ON Animais.especie_id = Especies.id
WHERE (Especies.id = 1 OR Especies.id = 2 OR Especies.id = 3 OR Especies.id = 4 OR Especies.id = 6) -- ID DAS ESPECIES QUE SÃO MAMÍFERAS
AND Animais.peso > 10.0 AND (Animais.cor = 'marrom' OR Animais.cor = 'azul');




-- Selecione a quantidade total de animais​ de cada espécie

SELECT Especies.nome AS Especie, COUNT(Animais.id) AS Quantidade
FROM Especies
LEFT JOIN Animais ON Especies.id = Animais.especie_id
GROUP BY Especies.nome
ORDER BY Quantidade DESC;


-- Selecione a soma do peso de todos os gatos

SELECT 'Gatos' AS Especie, SUM(Animais.peso) AS Peso_Total
FROM Animais
WHERE Animais.especie_id = 2;
