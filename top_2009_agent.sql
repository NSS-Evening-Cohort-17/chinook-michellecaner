SELECT
    FullName,
    MAX(TotalSales)
FROM (
SELECT
    e.FirstName || " " || e.LastName as FullName,
    SUM(i.Total) as TotalSales
FROM Employee e 
JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
ON c.CustomerId = i.CustomerId
AND i.InvoiceDate LIKE "2009%"
GROUP BY e.FirstName, e.LastName
)