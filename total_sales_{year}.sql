SELECT (
    SELECT SUM(Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2009%"
),
(
    SELECT SUM(Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2010%"
),
(
    SELECT SUM(Total)
    FROM Invoice
    WHERE InvoiceDate LIKE "2011%"
)