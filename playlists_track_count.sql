SELECT 
    p.Name,
    COUNT(pt.TrackId)
FROM Playlist p
JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name