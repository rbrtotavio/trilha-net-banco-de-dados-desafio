-- 1
SELECT 
    Nome,
    Ano
FROM Filmes

-- 2
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
ORDER BY Ano

-- 3
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000

-- 6
SELECT 
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
    Ano,
    COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
    *
FROM Atores 
WHERE Genero = 'M'

-- 9
SELECT
    *
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
    Nome,
    Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
LEFT JOIN Generos on FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT
    Nome,
    Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
LEFT JOIN Generos on FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12
SELECT
    F.Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.IdFilme
LEFT JOIN Atores A ON E.IdAtor = A.Id