SELECT columns
FROM table 
ORDER BY column [ASC|DESC];

SELECT Name, Milliseconds
FROM tracks
ORDER BY Milliseconds DESC;

SELECT AlbumId, Name, Milliseconds
FROM tracks
ORDER BY AlbumId ASC, Milliseconds DESC;

SELECT CustomerId, SUM(Total) AS TotalSpent
FROM Invoices
GROUP BY CustomerId
ORDER BY TotalSpent DESC;


SELECT Name, Milliseconds
FROM tracks
ORDER BY 2 DESC;

SELECT Name, UnitPrice
FROM tracks
wHERE UnitPrice > 1.00
ORDER BY UnitPrice DESC;