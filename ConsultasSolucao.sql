-- 1
SELECT Nome, Ano from Filmes;

-- 2
select Nome, Ano from Filmes order by Ano asc;

-- 3
select Nome, Ano, Duracao from filmes where Nome = 'De Volta para o Futuro';

-- 4
select Nome, Ano from Filmes where Ano = 1997;

-- 5
select Nome, Ano from Filmes where Ano >= 2000;

-- 6
select Nome, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by duracao asc;

-- 7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC; 

-- 8
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

-- 9
select PrimeiroNome, UltimoNome, Genero from atores where Genero = 'F' order by PrimeiroNome;

-- 10
select Filmes.Nome, Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id;

-- 11
select Filmes.Nome, Generos.Genero
from Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Generos.Genero = 'Mistério';

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
from Filmes
inner join Atores on Atores.Id = Filmes.Id
inner join ElencoFilme on ElencoFilme.IdAtor = Atores.Id;
