

-- a)
SELECT * FROM authors;

-- b)
SELECT au_fname, au_lname, phone FROM dbo.authors


-- c)
SELECT au_fname,au_lname,phone FROM authors
ORDER BY 1,2;


-- d)
SELECT au_fname AS first_name,au_lname AS last_name,phone as telephone FROM authors
ORDER BY 1,2;


-- e)
SELECT au_fname AS first_name,au_lname AS last_name,phone as telephone FROM authors
WHERE state='CA' AND au_lname != 'Ringer'
ORDER BY 1,2;


-- f)
SELECT * FROM dbo.publishers WHERE pub_name LIKE '%Bo%'


-- g)
SELECT pub_name
FROM dbo.titles,dbo.publishers
WHERE type='business' AND  titles.pub_id=publishers.pub_id;


-- h)
SELECT publishers.pub_name, COUNT(sales.qty) AS numeroVendas
	FROM (
		(dbo.sales JOIN dbo.titles
			ON sales.title_id=titles.title_id) JOIN dbo.publishers
				ON titles.pub_id=publishers.pub_id
	)
	GROUP BY publishers.pub_name


-- i)
SELECT pub_name, title, sum(qty) AS sales
FROM publishers, titles,sales
WHERE publishers.pub_id = titles.pub_id AND titles.title_id=sales.title_id
GROUP BY pub_name, title;


-- j)
SELECT DISTINCT titles.title
	FROM (
		(dbo.stores JOIN dbo.sales
			ON stores.stor_id=sales.stor_id) JOIN dbo.titles
				ON sales.title_id=titles.title_id
	)
	WHERE stores.stor_name='Bookbeat'


-- k)
SELECT au_fname, au_lname
FROM titles, authors 
WHERE titles.title_id=titleauthor.title_id AND titleauthor.au_id=authors.au_id
GROUP BY au_fname, au_lname
HAVING count(DISTINCT [type]) > 1;


-- l) Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id)
SELECT titles.pub_id AS editora, titles.type, COUNT(sales.qty) AS numeroVendas, AVG(titles.price) AS precoMedio
	FROM (
		dbo.titles JOIN dbo.sales
			ON titles.title_id=sales.title_id
	)
	GROUP BY titles.pub_id, titles.type


-- m)
SELECT type, max(advance) AS maxA, avg(advance) AS avgA
FROM titles
GROUP BY type
HAVING max(advance) > 1.5*avg(advance);


-- n) Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda
SELECT titles.title, authors.au_fname, authors.au_lname, SUM(sales.qty*titles.price) AS valorDeVendas
	FROM (
		((dbo.titles JOIN dbo.sales
			ON titles.title_id=sales.title_id) JOIN dbo.titleauthor
				ON titles.title_id=titleauthor.title_id) JOIN dbo.authors
					ON titleauthor.au_id=authors.au_id
	)
	GROUP BY titles.title, authors.au_fname, authors.au_lname


-- o)
SELECT title, ytd_sales,price*ytd_sales AS facturacao, price*ytd_sales*royalty/100 AS auths_revenue, price*ytd_sales-price*ytd_sales*royalty/100 AS publisher_revenue 
FROM titles;


-- p) Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu
-- nome, o nome de cada autor, o valor da faturação de cada autor e o valor da
-- faturação relativa à editora
SELECT title, CONCAT(authors.au_fname, ' ', authors.au_lname) as author, ytd_sales,price*ytd_sales AS facturacao, price*ytd_sales*royalty/100 AS auths_revenue, price*ytd_sales-price*ytd_sales*royalty/100 AS publisher_revenue 
	FROM (
		(dbo.titles JOIN dbo.titleauthor
			ON titles.title_id=titleauthor.title_id) JOIN dbo.authors
				ON titleauthor.au_id=authors.au_id
	)


-- q)
SELECT stor_name, count(title) AS numTitles
FROM ((stores JOIN sales ON stores.stor_id=sales.stor_id) JOIN titles ON sales.title_id=titles.title_id)
GROUP BY stor_name
HAVING count(title)=(SELECT count(title_id) FROM titles);


-- r) Lista de lojas que venderam mais livros do que a média de todas as lojas.
SELECT stor_name
FROM ((stores JOIN sales ON stores.stor_id=sales.stor_id) JOIN titles ON sales.title_id=titles.title_id)
GROUP BY stor_name
HAVING (SUM(sales.qty)/COUNT(title)) > (
	SELECT SUM(qty)/COUNT(stor_id) FROM dbo.sales
)


-- s)
SELECT DISTINCT title FROM titles
EXCEPT 
(SELECT DISTINCT title
FROM titles,sales,stores
WHERE stor_name='Bookbeat' AND titles.title_id=sales.title_id AND sales.stor_id=stores.stor_id);


-- t) Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora
SELECT publishers.pub_name, stores.stor_name
	FROM (
		((dbo.stores LEFT JOIN dbo.sales
			ON stores.stor_id=sales.stor_id) LEFT JOIN dbo.titles
				ON sales.title_id=titles.title_id) LEFT JOIN dbo.publishers
					ON titles.pub_id=publishers.pub_id
	)
	GROUP BY publishers.pub_name, stores.stor_name
	HAVING COUNT(sales.qty)=0