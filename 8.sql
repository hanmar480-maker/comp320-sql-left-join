SELECT DISTINCT p.PlaylistId, p.Name
FROM PlaylistTrack pt
LEFT JOIN Track t    ON t.TrackId = pt.TrackId
JOIN Playlist p      ON p.PlaylistId = pt.PlaylistId
WHERE t.TrackId IS NULL
ORDER BY p.PlaylistId ASC;