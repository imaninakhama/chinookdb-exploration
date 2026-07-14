SELECT GenreId, COUNT(*) AS TrackCount
FROM tracks
GROUP BY GenreId


SELECT CustomerId, SUM(Total) AS TotalSpent
FROM Invoices
GROUP BY CustomerId

SELECT GenreId, COUNT(*) AS TrackCount
FROM tracks
GROUP BY GenreId
HAVING COUNT(*) > 10;

SELECT GenreId, AVG(UnitPrice) AS AvgPrice
FROM tracks
WHERE Milliseconds > 60000
GROUP BY GenreId
HAVING AVG(UnitPrice) > 0.99;

SELECT AlbumId, MediaTypeId, COUNT(*) AS TrackCount
FROM tracks
GROUP BY AlbumId, MediaTypeId;

SELECT g.Name AS Genre, COUNT(t.TrackId) AS TrackCount
FROM tracks t
JOIN genres g ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY TrackCount DESC


