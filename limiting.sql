SELECT Name, UnitPrice
FROM tracks
ORDER BY UnitPrice DESC;
LIMIT 10;

SELECT Name
FROM tracks
ORDER BY Name
LIMIT 10 OFFSET 10;

SELECT Name
FROM tracks
ORDER BY Name
LIMIT 10,10;

SELECT CustomerId, SUM(Total) AS TotalSpent
FROM Invoices
GROUP BY CustomerId
ORDER BY TotalSpent DESC
LIMIT 10;
