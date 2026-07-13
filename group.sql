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


