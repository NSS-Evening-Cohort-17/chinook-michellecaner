SELECT
    e.FirstName || " " || e.LastName as EmployeeName,
    COUNT(c.CustomerId)
FROM Employee e 
LEFT JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeName