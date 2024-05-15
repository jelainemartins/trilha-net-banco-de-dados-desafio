----Buscar o nome e ano dos filmes
/*
  SELECT Nome,
         Ano
    FROM Filmes
*/

----Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
/*
  SELECT Nome,
         Ano
    FROM Filmes
ORDER BY Ano
*/

----Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
/*
  SELECT Nome,
         Ano,
         Duracao
    FROM Filmes
   WHERE Nome = 'De Volta para o Futuro'
*/

----Buscar os filmes lançados em 1997
/*
  SELECT Nome,
         Ano
    FROM Filmes
   WHERE Ano = '1997'
*/

----Buscar os filmes lançados APÓS o ano 2000
/*
  SELECT Nome,
         Ano
    FROM Filmes
   WHERE Ano >= 2000
*/

----Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
/*
  SELECT Nome,
         Duracao
    FROM Filmes
   WHERE Duracao > 100
     AND Duracao < 150
ORDER BY Duracao 
*/
--
/*
  SELECT Nome,
         Duracao
    FROM Filmes
   WHERE Duracao BETWEEN 101 AND 149
ORDER BY Duracao 
*/

----Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
/*
  SELECT Ano,
         COUNT(Ano) AS Quantidade
    FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
*/

----Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
/*
SELECT PrimeiroNome,
       UltimoNome,
       Genero
  FROM Atores
 WHERE Genero = 'M'
*/

----Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
/*
  SELECT PrimeiroNome,
         UltimoNome,
         Genero
    FROM Atores
   WHERE Genero = 'F'
ORDER BY PrimeiroNome
*/

----Buscar o nome do filme e o gênero
/*
    SELECT Nome,
	       Genero
      FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
*/

----Buscar o nome do filme e o gênero do tipo "Mistério"
/*
    SELECT Nome,
           Genero
      FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
     WHERE Genero = 'Mistério'
*/

----Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
/*
    SELECT Nome,
           Atores.PrimeiroNome,
           Atores.UltimoNome,
           ElencoFilme.Papel
      FROM Filmes 
INNER JOIN FilmesGenero ON FilmesGenero.IdGenero = Filmes.Id
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
*/