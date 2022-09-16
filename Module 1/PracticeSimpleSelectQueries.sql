--1.  Run query: Retrieve all the data from the tracks table. Who is the composer for track 18?
Select Composer 
From Tracks 
Where TrackID = 18;

--A.  AC/DC

----

--2.  Run query: Retrieve all data from the artists table. Look at the list of artists, how many artists are you familiar with?
Select * 
From Artists;

--B.  2

----

--3.  Run Query: Retrieve all data from the invoices table. What is the billing address for customer 31?
Select * 
From Invoices;

--C.  194A Chain Lake Drive

----

--4.  Run Query: Return the playlist id, and name from the playlists table. How many playlists are there? Which would you classify is your favorite from this list?
Select PlaylistID, 
Name 
FROM Playlists;

--D.  There are 18 playlists and my favourite is Music

----

--5.  Run Query: Return the Customer Id, Invoice Date, and Billing City from the Invoices table. What city is associated with Customer ID number 42? What was the invoice date for the customer in Santiago?
Select CustomerID,
InvoiceDate,
BillingCity
From Invoices;

--E.  The city associated with customerID number 42 is Bordeaux.
--	  The Invoice date for the customer in santiago is 2009-04-04 00:00:00

----

--6.  Run Query: Return the First Name, Last Name, Email, and Phone, from the Customers table. What is the telephone number for Jennifer Peterson?
Select FirstName, 
LastName, 
Email, 
Phone
From Customers
where FirstName = "Jennifer";

--F.  The Jennifer Peterson's number is +1 (604) 688-2255

----

--7.  Run Query: Return the Track Id, Genre Id, Composer, Unit Price from the Tracks table. How much do these tracks cost?
Select TrackID, 
GenreID, 
Composer, 
UnitPrice 
From Tracks;

--G.  The tracks costs 0.99

----

--8.  Run Query: Select all the columns from the Playlist Track table and limit the results to 10 records. How might this information be used?
Select *
From Playlist_track 
Limit 10;

--H.  Like a sample

----

--9.  Run Query: Select all the columns from the Media Types table and limit the results to 50 records. What happened when you ran this query? Were you able to get all 50 records?
Select *
From Media_types
Limit 50;

--I. There weren't 50 rows

----

--10.  Run Query: Select all the columns from the Albums table and limit the results to 5 records. How many columns are in the albums table? 
--	   What is the name of the 9th album in this list?
Select *
From Albums;

--L.  The name is Plays Metallica By Four Cellos
