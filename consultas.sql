CREATE DATABASE Jogo

CREATE TABLE Usuario (
id INT,
nome VARCHAR(60),
data_nasc DATE,
score DECIMAL(8,2)

);

INSERT INTO Usuario 
VALUES (1, 'Mario', '1990-10-17', 900.00);

select * from Usuario

select score from usuario

UPDATE usuario SET score = '9000.00' WHERE id = 1;

DELETE from usuario WHERE id = 1;


CREATE TABLE Animais(
id int primary key identity,
nome varchar(50) not null,
data_nasc date not null,
peso decimal(10,2),
cor varchar(50)

);

select * from Animais;

INSERT INTO animais
VALUES ('Lindalva', '2022-10-10', 10.00, 'branco');

insert into Animais values ('Ágata', '2015-04-09', 13.9, 'branco'  );
insert into Animais values ('Félix', '2016-06-06', 14.3, 'preto'   );
insert into Animais values ('Tom', '2013-02-08', 11.2, 'azul'    );
insert into Animais values ('Garfield', '2015-07-06', 17.1, 'laranja' );
insert into Animais values ('Frajola', '2013-08-01', 13.7, 'preto'   );
insert into Animais values ('Manda-chuva'????, '2012-02-03', 12.3, 'amarelo' );
insert into Animais values ('Snowball'????, '2014-04-06', 13.2, 'preto'   );
insert into Animais values ('Ágata'??????, '2015-08-03', 11.9, 'azul'    );
insert into Animais values ('Ágata'??????, '2016-03-04', 18.6, 'roxo'    );
insert into Animais values ('Gato de Botas'??, '2012-12-10', 11.6, 'amarelo' );
insert into Animais values ('Bola de pelo'??, '2020-04-06', 11.6, 'amarelo' );
 
insert into Animais values ('Milu'??????, '2013-02-04', 17.9, 'branco'  );
insert into Animais values ('Pluto'??????, '2012-01-03', 12.3, 'amarelo' );
insert into Animais values ('Pateta'??????, '2015-05-01', 17.7, 'preto'   );
insert into Animais values ('Snoopy'??????, '2013-07-02', 18.2, 'branco'  );
insert into Animais values ('bidu'??????, '2012-09-08', 12.4, 'azul'    );
insert into Animais values ('Dum Dum'??????, '2015-04-06', 11.2, 'laranja' );
insert into Animais values ('Muttley'??????, '2011-02-03', 14.3, 'laranja' );
insert into Animais values ('Scooby'??????, '2012-01-02', 19.9, 'marrom'  );
insert into Animais values ('Rufus'??????, '2014-04-05', 19.7, 'branco'  );
insert into Animais values ('Costelinha'????, '2016-05-02', 13.4, 'branco'  );
insert into Animais values ('Coragem'??????, '2013-07-08', 12.2, 'vermelho');
insert into Animais values ('Jake'??????, '2012-02-07', 11.6, 'vermelho');
insert into Animais values ('K900'??????, '2012-11-25', 11.6, 'amarelo' );
 
insert into Animais values ('Jerry'??????, '2010-02-04', 06.6, 'laranja' );
insert into Animais values ('Ligeirinho'????, '2011-05-03', 04.4, 'amarelo' );
insert into Animais values ('Mikey'??????, '2012-07-01', 02.2, 'preto'   );
insert into Animais values ('Minie'??????, '2013-09-03', 03.2, 'preta'   );
insert into Animais values ('Topo Gigio'????, '2016-06-08', 05.5, 'amarelo' );
 
insert into Animais values ('Bafo de Onça'??, '2016-01-03', 15.5, 'amarelo' );
insert into Animais values ('Susan Murphy'??, '2021-02-08', 03.5, 'vermelho');
insert into Animais values ('Insectosauro'??, '2016-01-10', 35.8, 'amarelo' );
insert into Animais values ('Gallaxhar'   ??, '2020-06-07', 05.5, 'azul'    );
insert into Animais values ('Hathaway'    ??, '2019-03-08', 85.5, 'roxo'    );
 
insert into Animais values ('Tutubarão'????, '2010-02-06', 101.9 , 'branca' );
insert into Animais values ('Prof. Pardal'??, '2012-04-04', 1.7   , 'amarelo');
insert into Animais values ('Mobie'??????, '2014-05-02', 5069.4, 'branca' );
insert into Animais values ('Batman'??????, '2013-07-01', 96.1  , 'preto'  );


-- filtros 

SELECT nome, cor, peso FROM animais WHERE peso >= 15
order by peso;

SELECT nome, cor, peso FROM animais WHERE cor != 'Laranja';

SELECT nome, cor, peso FROM animais WHERE cor != 'Laranja' and peso < 13.00;

SELECT * FROM animais WHERE cor in ('branco', 'preto', 'azul')


SELECT * FROM animais WHERE peso between 10 and 25;

SELECT * FROM animais WHERE nome like 'li%';