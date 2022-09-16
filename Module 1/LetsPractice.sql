--1.  This statement will return an error. Please list why.
SELECT
TrackID
Name
AlbumID
FROM tracks

--A.  It's missing comma after "TrackID", and "Name"

----

--2.  In the ER diagram below (CHECK OUT THE ChinookDatabaseSchema.png), the infinity symbol is representing a "many" relationship and the key is representing "one". Select all the tables that have a one-to-many relationship.

--B.  Artist to Albums - Customers to Invoices - Employees to Customers

----

--3.  When using SQLite, what datatypes can you assign to a column when creating a new table?Select all that apply.

--C.  Null

----

--4.  Primary Keys must be unique values.

--D.  True

----

--5.  What is the query below missing in order to execute?
albums.title as album_title,
tracks.name as track_name
FROM tracks
JOIN albums ON tracks.albumid = albums.albumid

--E.  Select


