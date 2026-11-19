SELECT p.PlaylistId, p.Name
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
WHERE pt.PlaylistId IS NULL
ORDER BY p.PlaylistId;