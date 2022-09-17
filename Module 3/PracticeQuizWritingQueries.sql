--Please refer to the ER Diagram below (CHECK OUT the ER Diagram.png) and familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

--1.  How many albums does the artist Led Zeppelin have?
Select
	a.name,
	am.albumID
from artists a
join albums am
	on a.artistID = am.artistID
where a.name = 'Led Zeppelin'

--A.  14

----

--2.  Create a list of album titles and the unit prices for the artist "Audioslave".
Select 
	a.name,
	t.unitPrice,
	am.title
from artists a
left join albums am
	on a.artistID = am.artistID
left join tracks t
	on am.albumID = t.albumID
where a.name = 'Audioslave'

--    How many records are returned?

--B.  40

----

--3.  Find the first and last name of any customer who does not have an invoice. Are there any customers returned from the query?
Select
	i.invoiceID,
	i.customerID,
	c.firstname,
	c.lastname
from customers c
left join invoices i
	on c.customerID = i.customerID
where i.invoiceID is null

--C.  No

----

--4.  Find the total price for each album.
Select 
	a.title,
	SUM(t.unitprice)
from albums a
inner join tracks t 
	on a.albumID = t.albumID
where a.title = 'Big Ones'
group by a.title

--    What is the total price for the album 'Big Ones'

--D.  14.85

----

--5.  How many records are created when you apply a Cartesian join to the invoice and invoice items table?
Select 
	i.invoiceID,
	i.customerID,
	ii.trackID
from invoices i
cross join invoice_items ii

--E.  922880
