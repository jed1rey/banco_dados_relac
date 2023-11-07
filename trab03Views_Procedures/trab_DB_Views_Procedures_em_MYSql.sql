create database Empresa;
use Empresa;


create table marcas (
	marca_id		int 			auto_increment		primary key,
	nome_marca		varchar(50)		not null,			
	origem			varchar(50)		
);

create table produtos (

	prod_id			int 			auto_increment 		primary key,
	nome_prod		varchar(50)		not null,
	qtd_estoque		int				not null 			default 0,
	estoque_mim		int 			not null			default 0,
	data_fabricacao	timestamp 							default now(),
	perecivel		boolean,
	valor			decimal(10,2),
	
	marca_id		int		references marcas(marca_id)
);

create table fornecedores (
	forn_id			int 			auto_increment 		primary key,	
	nome_forn		varchar(50)		not null,
	email			varchar(50)		
);


create table produto_fornecedor (
	prod_id			int				not null	references produtos(prod_id),
	forn_id			int				not null	references fornecedores(forn_id),
	
	primary key (prod_id, forn_id)
);

insert into fornecedores values (null, 'Los Pollos Hermanos'       ,'frig@pollos.com.mx');
insert into fornecedores values (null, 'Umbrella Corporation'      ,'umbrella@umbrella.com.ca');
insert into fornecedores values (null, 'UAC'                       ,'uac@uac.com.mars.dm');
insert into fornecedores values (null, 'Huey Materiais Escolares'  ,'huey@duck.com.us');
insert into fornecedores values (null, 'Dewey Materiais Escolares' ,'dewey@duck.com.us');
insert into fornecedores values (null, 'Louie Materiais Escolares' ,'louie@duck.com.us');
insert into fornecedores values (null, 'New Informática'           ,'ni@newinf.com.br');
insert into fornecedores values (null, 'Meio Bit TI'               ,'meiobit@bitbit.com.br');
insert into fornecedores values (null, 'Ze Faisca SA'              ,'ze@faisca.com.br');
insert into fornecedores values (null, 'Facens'                    ,'facens@facens.com.br');
insert into fornecedores values (null, 'Linux'                     ,'linux@linux.br');




insert into marcas (marca_id, nome_marca, origem) values (null, 'Faber Castel'	, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Labra'			, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'TOTVS'  		, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Multilaser'	, 'Brasil');
insert into marcas (marca_id, nome_marca, origem) values (null, 'ORCACLE'		, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'IBM'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Microsoft'		, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'HP'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Apple'			, 'EUA');
insert into marcas (marca_id, nome_marca, origem) values (null, 'SAP'			, 'Alemanha');
insert into marcas (marca_id, nome_marca, origem) values (null, 'Lenovo'		, 'China');
insert into marcas (marca_id, nome_marca, origem) values (null, 'ASUS'			, 'Taiwan');
insert into marcas (marca_id, nome_marca, origem) values (null, 'AOC'			, 'Taiwan');
insert into marcas (marca_id, nome_marca, origem) values (null, 'LG'			, 'Corea do Sul');




insert into produtos values (null, 'lapis'				, 4502, 100, '2016-3-3', false, 002.5, 1);
insert into produtos values (null, 'lapis'				, 8800, 100, '2015-5-5', false, 014.0, 2);
insert into produtos values (null, 'borracha'			, 2907, 100, '2013-7-8', false, 004.2, 1);
insert into produtos values (null, 'borracha'			, 5408, 100, '2015-8-2', false, 002.0, 2);
insert into produtos values (null, 'caderno'			, 7004, 100, '2016-3-4', false, 022.5, 1);
insert into produtos values (null, 'caneta'				, 8030, 100, '2013-2-4', false, 011.0, 1);
insert into produtos values (null, 'ERP'				, 0060, 100, '2016-5-7', false, 937.5, 3);
insert into produtos values (null, 'ERP'				, 3070, 100, '2014-6-5', false, 472.0, 4);
insert into produtos values (null, 'ERP'				, 2083, 100, '2015-8-4', false, 252.0, 5);
insert into produtos values (null, 'Windows'			, 5040, 100, '2012-9-2', false, 532.0, 7);
insert into produtos values (null, 'IOS'				, 6020, 100, '2014-3-3', false, 756.5, 9);
insert into produtos values (null, 'teclado'			, 7030, 100, '2016-5-8', false, 412.5, 4);
insert into produtos values (null, 'teclado'			, 0024, 100, '2013-4-7', false, 172.5, 11);
insert into produtos values (null, 'teclado'			, 9070, 100, '2015-5-4', false, 192.0, 8);
insert into produtos values (null, 'mouse'				, 1303, 100, '2016-7-3', false, 142.0, 4);
insert into produtos values (null, 'mouse'				, 3050, 100, '2013-9-2', false, 122.5, 8);
insert into produtos values (null, 'mouse'				, 0007, 100, '2012-3-7', false, 152.0, 7);
insert into produtos values (null, 'Pendrive'			, 6070, 100, '2014-5-6', false, 172.0, 4);
insert into produtos values (null, 'CD'					, 8080, 100, '2015-6-4', false, 012.5, 4);
insert into produtos values (null, 'Monitor'			, 9040, 100, '2016-5-2', false, 332.0, 8);
insert into produtos values (null, 'Monitor'			, 0001, 100, '2013-3-6', false, 172.0, 11);
insert into produtos values (null, 'Monitor'			, 2300, 100, '2015-2-5', false, 312.5, 14);
insert into produtos values (null, 'Monitor'			, 6620, 100, '2014-3-3', false, 272.0, 6);
insert into produtos values (null, 'Joystick'			, 0063, 100, '2014-5-7', false, 152.0, 4);
insert into produtos values (null, 'Módulo de memória'	, 7230, 100, '2013-6-8', false, 512.5, 6);
insert into produtos values (null, 'Módulo de memória'	, 9032, 100, '2013-7-8', false, 612.0, 12);
insert into produtos values (null, 'Processador'		, 4509, 100, '2016-8-6', false, 282.5, 6);
insert into produtos values (null, 'Placa de Vídeo'		, 2408, 100, '2015-3-5', false, 152.0, 6);
insert into produtos values (null, 'Placa de Vídeo'		, 0066, 100, '2012-2-3', false, 612.5, 13);
insert into produtos values (null, 'Fonte de Energia'	, 9044, 100, '2013-5-2', false, 112.0, 4);
insert into produtos values (null, 'Fonte de Energia'	, 4054, 100, '2014-7-3', false, 012.5, 8);
insert into produtos values (null, 'HD externo'			, 0400, 100, '2016-8-4', false, 412.5, 14);
insert into produtos values (null, 'mesa'				, 0240, 100, '2014-4-8', false, 632.5, null);
insert into produtos values (null, 'cadeira'			, 0490, 100, '2012-3-7', false, 342.0, null);
insert into produtos values (null, 'rack'				, 0030, 100, '2013-2-6', false, 262.0, null);
insert into produtos values (null, 'armario'			, 0404, 100, '2012-5-4', false, 412.5, null);
insert into produtos values (null, 'pera'				, 0069, 100, '2014-7-6', true , 612.0, null);
insert into produtos values (null, 'maça'				, 0020, 100, '2015-3-5', true , 716.8, null);
insert into produtos values (null, 'banana'				, 0081, 100, '2016-5-8', true , 512.0, null);


insert into produto_fornecedor values (1,1);
insert into produto_fornecedor values (4,1);


-- 1. Crie uma view que mostra todos os produtos e seus respectivos fornecedores e marcas.
CREATE VIEW Prod_Fornec AS
	SELECT 
		produtos.nome_prod AS 'Produto',
        fornecedores.nome_forn AS 'Fornecedor',
		marcas.nome_marca AS 'Marca'
		FROM produtos
		LEFT JOIN marcas ON produtos.marca_id = marcas.marca_id
		LEFT JOIN produto_fornecedor ON produtos.prod_id = produto_fornecedor.prod_id
		LEFT JOIN fornecedores ON fornecedores.forn_id = produto_fornecedor.forn_id;
-- teste view
	SELECT * FROM Prod_Fornec


-- 2. Crie uma view que mostra todos os produtos com estoque abaixo do mínimo.
CREATE VIEW Est_Abaixo_Min AS
	SELECT
		nome_prod AS 'Nome Produto',
		qtd_estoque AS 'Qde Atual',
		estoque_mim AS 'Qde Mínima'
		FROM produtos
		WHERE qtd_estoque < estoque_mim;
-- Teste da view
SELECT * FROM Est_Abaixo_Min



-- 3. Adicione o campo data de validade. Insira novos produtos com essa informação.

ALTER TABLE produtos ADD data_val DATE;
INSERT INTO produtos VALUES 
  (null, 'leite', 50, 5, '2023-10-15', 1, 2.50, 1, '2023-10-1'),
  (null, 'iogurte', 30, 3, '2023-10-20', 1, 1.50, 1, '2023-10-5'),
  (null, 'queijo', 40, 4, '2023-11-15', 1, 5.00, 1, '2023-10-20'),
  (null, 'carne bovina', 20, 2, '2023-11-10', 1, 12.00, 1, '2023-11-1'),
  (null, 'peixe', 25, 3, '2023-11-30', 1, 8.00, 1, '2023-11-10');

SELECT * FROM produtos;

-- 4. Crie uma view que mostra todos os produtos e suas respectivas marcas com validade vencida.

CREATE VIEW vencimento_prod AS
	SELECT
		nome_prod AS 'Produto',
		nome_marca AS 'Marca',
        data_val AS 'Data de Validade',
		CASE
			WHEN produtos.data_val < CURRENT_DATE THEN 'Vencido !!!'
			WHEN produtos.data_val >= CURRENT_DATE THEN 'Apropriado'
		END AS 'Validade'
	FROM
		produtos
	LEFT JOIN marcas
		ON produtos.marca_id = marcas.marca_id
	WHERE produtos.data_val IS NOT NULL
	ORDER BY produtos.nome_prod ASC;

SELECT * FROM vencimento_prod

-- 5. Selecionar os produtos com preços acima da média.

CREATE VIEW Produto_acima_media AS
SELECT
    prod_id,
    nome_prod,
    valor
FROM produtos
WHERE valor > (SELECT AVG(valor) FROM produtos)
ORDER BY valor DESC;

SELECT * FROM Produto_acima_media

-- SP - Stored Procedures:
--  1- Crie uma SP que exibe o preço médio dos produtos

DELIMITER //

CREATE PROCEDURE Preco_medio()
BEGIN
    SELECT AVG(valor) AS 'preço médio'
    FROM produtos;
END;
//

DELIMITER ;

CALL Preco_medio;

--  2- Crie uma SP que ao passar uma marca como parâmetro retorna todos os produtos daquela marca.
DELIMITER //

CREATE PROCEDURE Produtos_Marca(
    IN marca_param VARCHAR(100)
)
BEGIN
    SELECT produtos.*
    FROM produtos
    INNER JOIN marcas ON produtos.marca_id = marcas.marca_id
    WHERE marcas.nome_marca = marca_param;
END;
//

DELIMITER ;

CALL Produtos_Marca('Faber Castel')

--  3- Crie uma SP que receba dois valores (um menor e outro maior) como parâmetro e 
--  retorne todos os produtos com a quantidade dentro do intervalo dos dois valores fornecidos como parâmetros.

DELIMITER //

CREATE PROCEDURE Produtos_Qtd(
    IN qtd_min INT,
    IN qtd_max INT  
)
BEGIN
    SELECT *
    FROM produtos
    WHERE qtd_estoque BETWEEN qtd_min AND qtd_max;
END;
//

DELIMITER ;

CALL Produtos_Qtd(5, 100)


-- 4- Crie uma SP onde após um novo registro na tabela produto fornecedor for criado, ele exibe o nome do produto e o nome do fornecedor
-- que acabou de ser registrado.
DELIMITER //

CREATE PROCEDURE Produto_Fornecedor(
    IN prod_id_param INT,
    IN forn_id_param INT
)
BEGIN
    SELECT produtos.nome_prod AS Produto, fornecedores.nome_forn AS Fornecedor
    FROM produto_fornecedor
    JOIN produtos ON produto_fornecedor.prod_id = produtos.prod_id
    JOIN fornecedores ON produto_fornecedor.forn_id = fornecedores.forn_id
    WHERE produtos.prod_id = prod_id_param AND fornecedores.forn_id = forn_id_param;
END;
//

DELIMITER ;

CALL Produto_Fornecedor(1, 1); -- id produto e id marca

-- 5- Crie uma SP que receba como parâmetro o nome de um fornecedor e insira automaticamente o nome do fornecedor e um e-mail no
-- formato nome_fornecedor@nome_fornecedor.com.br na tabela fornecedores.
DELIMITER //
CREATE PROCEDURE InserirEmail (
    IN fornecedor_param VARCHAR(50)
)
BEGIN
    DECLARE email_param VARCHAR(50);
    
    SET email_param = CONCAT(fornecedor_param, '@', fornecedor_param, '.com.br');

    INSERT INTO fornecedores (nome_forn, email)
    VALUES (fornecedor_param, email_param);
END;
//
DELIMITER ;

CALL InserirEmail('teste_email');




