What they do: 
Keys uniquely identify rows and link tables together. They're the backbone of how relational databases enforce structure and relationships.


*The main types*
Primary Key (PK)
-Uniquely identifies each row in a table; 
-can't be NULL
-Every table has only one primary key
Example:
-in the artist table ArtistId is the primary key because every artist has a different ID

Foreign Key (FK)
-links one table to another by refering to a primary key — creates the link
Example:
i can connect ArtistId in the album table hence :
-Artist.ArtistId-primary key
-Album.ArtistId-foreign key

