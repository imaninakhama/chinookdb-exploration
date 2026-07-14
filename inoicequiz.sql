SELECT c.FirstName, c.LastName, i.InvoiceDate, t.Name AS Invoice_Items
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId
JOIN tracks t ON ii.TrackId = t.TrackId
WHERE c.CustomerId = 1;