SELECT * FROM Filmes
ORDER BY Ano;

SELECT * FROM Filmes
WHERE Nome LIKE 'De volta%';

SELECT * FROM Filmes 
WHERE Ano = 1997;

SELECT * FROM Filmes
WHERE Ano > 2000;

SELECT * FROM Filmes 
WHERE Duracao >	 100 and Duracao < 150
ORDER BY Duracao;

SELECT 
	Ano,
	COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

SELECT * FROM Atores
WHERE Genero = 'M';

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

SELECT Filmes.id FROM filmes

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes
	on FilmesGenero.IdFilme = Filmes.id
INNER JOIN Generos
	on FilmesGenero.IdGenero = Generos.id;

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
INNER JOIN Filmes
	on FilmesGenero.IdFilme = Filmes.id
INNER JOIN Generos
	on FilmesGenero.IdGenero = Generos.id
WHERE Generos.Genero = 'Mistério';

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM ElencoFilme
INNER JOIN Filmes
	on Filmes.id = ElencoFilme.IdFilme
INNER JOIN Atores
	on Atores.id = ElencoFilme.IdAtor



--Select * from Atores
--Select * from ElencoFilme
--Select * from Filmes
--Select * from FilmesGenero
--Select * from Generos

