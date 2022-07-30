SELECT 
    t.Name,
    a.Title,
    mt.Name,
    g.Name
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType mt
ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId