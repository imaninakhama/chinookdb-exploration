This is the very last thing that runs 
it caps how many rows a query returns

*Commom Patterns*
skipping rows (offset){limit 10 offset 10 - this skips the first 10 and displays the following ten}

Basic limit(Top N)

SQLite shorthand - this is the short form of the offset version instead of having (LIMIT 10 OFFSET 10) to (LIMIT 10,10)

now the order of things are:
finding the right rows(filtering)
|
grouping
|
ordering
|
limiting
now we can combine them