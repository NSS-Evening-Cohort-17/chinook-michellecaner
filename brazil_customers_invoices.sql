SELECT 
  c.FirstName || " " || c.LastName as Fullname, 
  i.InvoiceId, 
  i.InvoiceDate, 
  i.BillingCountry
FROM Customer c
JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry = "Brazil"