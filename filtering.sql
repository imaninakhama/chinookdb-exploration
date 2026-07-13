SELECT FirstName, LastName, Country
FROM Customers
WHERE Country = 'Germany';


SELECT FirstName, LastName, Country
FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

SELECT FirstName, LastName, Country
FROM Customers
WHERE Country = 'Germany' OR Country = 'France';

SELECT InvoiceId, Total
FROM Invoices
WHERE Total BETWEEN 5 AND 15;


SELECT Name, GenreId
FROM tracks
WHERE GenreId IN (1, 2, 3);

SELECT FirstName, LastName
FROM Customers
WHERE FirstName LIKE 'A%';

SELECT EmployeeId, FirstName, LastName
FROM Employees
WHERE "ReportsTo" IS NULL;

SELECT Name, GenreId
FROM tracks
WHERE NOT GenreId = 1;

SELECT Name, GenreId, Milliseconds
FROM tracks
WHERE (GenreId = 1 OR GenreId = 2) AND Milliseconds < 300000;

SELECT Name, Milliseconds
FROM tracks
WHERE GenreId = 1
ORDER BY Milliseconds DESC;
LIMIT 10;