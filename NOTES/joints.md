 1. INNER JOIN
 Returns only albums that have a matching artist, and vice versa

SELECT albums.AlbumId, albums.Title, artists.Name
FROM albums
INNER JOIN artists ON albums.ArtistId = artists.ArtistId;


2. LEFT JOIN
 Returns all albums, even if an artist ID is missing or mismatched
SELECT albums.AlbumId, albums.Title, artists.Name
FROM albums
LEFT JOIN artists ON albums.ArtistId = artists.ArtistId;


3. RIGHT JOIN
Returns all artists, even if they have no albums recorded in the database
SELECT albums.Title, artists.ArtistId, artists.Name
FROM albums
RIGHT JOIN artists ON albums.ArtistId = artists.ArtistId;


4. FULL OUTER JOIN
Returns everything: all albums and all artists, matching where possible
SELECT albums.Title, artists.Name
FROM albums
FULL OUTER JOIN artists ON albums.ArtistId = artists.ArtistId;


5. CROSS JOIN
Combines every single album row with every single artist row (creates a matrix)
SELECT albums.Title, artists.Name
FROM albums
CROSS JOIN artists;


6. SELF JOIN (Example: Finding albums that share the same artist)
Pairs the album table against itself to find matching ArtistId pairs
SELECT a1.Title AS AlbumOne, a2.Title AS AlbumTwo, a1.ArtistId
FROM albums a1
INNER JOIN albums a2 ON a1.ArtistId = a2.ArtistId
WHERE a1.AlbumId < a2.AlbumId;