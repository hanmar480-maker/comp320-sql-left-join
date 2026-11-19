SELECT c.FirstName,
       c.LastName,
       (
           SELECT g.Name
           FROM Invoice i
           JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
           JOIN Track t        ON t.TrackId = il.TrackId
           JOIN Genre g        ON g.GenreId = t.GenreId
           WHERE i.CustomerId = c.CustomerId
           GROUP BY g.GenreId, g.Name
           ORDER BY COUNT(*) DESC, g.Name
           LIMIT 1
       ) AS FavoriteGenre
FROM Customer c
ORDER BY c.FirstName, c.LastName;