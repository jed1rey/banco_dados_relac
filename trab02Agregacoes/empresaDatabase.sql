create database Empresa;
use Empresa;

create table marcas (
	marca_id		int 			identity	primary key,
	nome_marca		varchar(50)		not null,			
	origem			varchar(50)		
);

CREATE TABLE produtos (
    prod_id INT IDENTITY(1,1) PRIMARY KEY,
    nome_prod VARCHAR(50) NOT NULL,
    qtd_estoque INT NOT NULL DEFAULT 0,
    estoque_min INT NOT NULL DEFAULT 0,
    data_fabricacao DATETIME DEFAULT GETDATE(),
    perecivel BIT,
    valor DECIMAL(10, 2),
    marca_id INT REFERENCES marcas(marca_id)
);


create table fornecedores (
	forn_id			int 			identity  		primary key,	
	nome_forn		varchar(50)		not null,
	email			varchar(50)		
);

create table produto_fornecedor (
	prod_id			int				not null	references produtos(prod_id),
	forn_id			int				not null	references fornecedores(forn_id),
	
	primary key (prod_id, forn_id)
);


--2. Selecione quantos produtos cada marca possui.​

SELECT marcas.nome_marca, COUNT(produtos.prod_id) AS total_produtos
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY marcas.nome_marca
ORDER BY total_produtos DESC;


--3. Selecione o preço médio dos produtos de cada marca.​
SELECT marcas.nome_marca, AVG(produtos.valor) AS preco_medio
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY marcas.nome_marca
ORDER BY preco_medio DESC;


--4. Selecione a média dos preços e total em estoque dos produtos agrupados por marca.​
SELECT marcas.nome_marca, AVG (produtos.valor) AS preco_medio, SUM(produtos.qtd_estoque) AS total_estoque
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY marcas.nome_marca
ORDER BY total_estoque;


--5. Selecione quantos produtos estão cadastrados.​

-- 5.1 quantidade total de produtos cadastrados
SELECT COUNT(*) AS total
FROM produtos;

-- 5.2 total por produto
SELECT produtos.nome_prod, COUNT(produtos.prod_id) AS quantidade
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY produtos.nome_prod
ORDER BY quantidade DESC;

--5.3 total por marca
SELECT marcas.nome_marca, COUNT(produtos.prod_id) AS quantidade
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY marcas.nome_marca
ORDER BY quantidade DESC;


--6. Selecione o preço médio dos produtos.​
SELECT nome_prod, AVG(valor) AS preco_medio
FROM produtos
GROUP BY nome_prod;

--7. Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis.​
SELECT 
    IIF(perecivel = 1, 'Perecíveis', 'Não Perecíveis') AS grupo,  --IIF(condicao, valor_se_verdadeiro, valor_se_falso)
    AVG(valor) AS preco_medio
FROM produtos
GROUP BY perecivel;

-- SQL server usa 0 para false, 1 para true 


--8. Selecione a média dos preços dos produtos agrupados pelo nome do produto.​
SELECT nome_prod, AVG(valor) AS media_preco
FROM produtos
GROUP BY nome_prod
ORDER BY media_preco
;


--9. Selecione a média dos preços e total em estoque dos produtos.​

--total
SELECT AVG(valor) AS media_preco, SUM(qtd_estoque) AS total_estoque
FROM produtos;

--por produto
SELECT nome_prod, AVG(valor) AS media_preco, SUM(qtd_estoque) AS total_estoque
FROM produtos
GROUP BY nome_prod
ORDER BY nome_prod;


--10. Selecione o nome, marca e quantidade em estoque do produto mais caro.​
SELECT produtos.nome_prod, produtos.qtd_estoque, marcas.nome_marca
FROM produtos
INNER JOIN marcas ON produtos.marca_id = marcas.marca_id
WHERE produtos.valor = (SELECT MAX(valor) FROM produtos);

--11. Selecione os produtos com preço acima da média.​
SELECT nome_prod, valor
FROM produtos
WHERE valor > (SELECT AVG(valor) FROM produtos) --subconsulta para calcular a média
;


--12. Selecione a quantidade de produtos de cada nacionalidade.​
SELECT marcas.origem, COUNT(produtos.nome_prod) AS quantidade
FROM marcas
LEFT JOIN produtos ON marcas.marca_id = produtos.marca_id
GROUP BY marcas.origem
ORDER BY quantidade DESC;


