--1
SELECT Nome, Ano FROM dbo.Filmes

--2
SELECT * FROM dbo.Filmes ORDER BY Ano

--3
SELECT * FROM dbo.Filmes WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT * FROM dbo.Filmes WHERE Ano = 1997

--5
SELECT * FROM dbo.Filmes WHERE Ano > 2000

--6
SELECT * FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

--7
SELECT Ano, count(Ano) as Quantidade FROM dbo.Filmes group by Ano ORDER BY Quantidade DESC

--8
SELECT * FROM dbo.Atores WHERE Genero = 'M'
--9
SELECT * FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome 

--10
SELECT Nome, Genero FROM dbo.Generos AS G INNER JOIN dbo.Filmes as F ON G.id = F.Id

--11
SELECT Nome, Genero FROM dbo.Generos AS G INNER JOIN dbo.Filmes as F ON G.id = F.Id WHERE Genero = 'Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome FROM dbo.Filmes AS F INNER JOIN dbo.Atores AS A ON F.id =A.Id

SELECT  Nome, PrimeiroNome,UltimoNome, Papel from dbo.Atores AS A inner join dbo.ElencoFilme as EF ON A.id = EF.id  INNER JOIN dbo.Filmes AS F ON f.id = EF.Id