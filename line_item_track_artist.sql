SELECT 
    i.InvoiceLineId,
    ar.Name,
    t.Name
FROM InvoiceLine i
JOIN Track t
    ON i.TrackId = t.TrackId
JOIN Album al
   ON al.AlbumId =  t.AlbumId
JOIN Artist ar 
    ON ar.ArtistId = al.ArtistId
