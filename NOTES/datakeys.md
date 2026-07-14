What they do: 
Keys uniquely identify rows and link tables together. They're the backbone of how relational databases enforce structure and relationships.


*The main types*
Primary Key (PK)-Uniquely identifies each row in a table; can't be NULL

Foreign Key (FK)-Column referencing another table's primary key — creates the link

Composite Key-A primary key made of two+ columns combined

Candidate Key-Any column that could have been the PK   

Surrogate Key-An artificial ID with no real-world meaning (auto-incrementing number)

Natural Key-A key based on real-world data (email, ISBN, etc.)Self-referencing FK-A table's FK points back to its own PK (hierarchies)

*Remember*
Every table needs exactly one PK, but can have many FKs.
A composite key means neither column alone is unique — only the combination is.
Chinook uses surrogate keys almost everywhere (...Id columns) rather than natural keys.


Examples, explained
1. Composite key — playlist_track

SELECT PlaylistId, TrackId 
FROM playlist_track 
LIMIT 5;

Explanation: The same TrackId can appear in many playlists, and the same PlaylistId obviously repeats for every track on that playlist. Neither column alone can be a PK — only the combination (PlaylistId, TrackId) is guaranteed unique, since a track shouldn't be added to the same playlist twice.


2. Self-referencing FK — employees

SELECT EmployeeId, FirstName, LastName, ReportsTo
FROM employees;

Explanation: ReportsTo is a foreign key that points back into the same table (employees.EmployeeId). It's how a flat table can represent a tree-shaped org chart — each row just stores who its "parent" is.


3. Surrogate key vs. what a natural key would look like

SELECT ArtistId, Name 
FROM artists 
WHERE Name = 'AC/DC';

Explanation: ArtistId is a made-up number with no real-world meaning — it exists purely so the database has a stable, simple way to identify the row. A natural key alternative would've been to use Name itself as the identifier, but names can change or repeat, so a surrogate key is safer.


4. Foreign key enforcing a real relationship

SELECT t.Name AS Track, al.Title AS Album
FROM tracks t
JOIN albums al ON t.AlbumId = al.AlbumId;

Explanation: tracks.AlbumId only works as a join condition because it's a foreign key referencing albums.AlbumId — that relationship is exactly what makes joins possible in the first place.