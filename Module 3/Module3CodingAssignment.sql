-- Please familiarize yourself with the ER diagram (CHECK OUT the ER Diagram.png) in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.

--1.  Using a subquery, find the names of all the tracks for the album "Californication".
Select
	t.trackID,
	t.name,
	t.albumID
from tracks t
where t.albumID in (select
		am.albumID
	from albums am
	where am.title = 'Californication')

--    What is the title of the 8th track?

--A.  Porcelain

----

--2.  Find the total number of invoices for each customer along with the customer's full name, city and email.
Select 
    i.customerID,
    i.invoiceID,
    c.firstName,
    c.lastName,
    c.city,
    c.email
from invoices i
    left join customers c
        on i.customerID = c.customerID
group by i.customerID

--    What is the email address of the 5th person, František Wichterlová?

--B.  frantisekw@jetbrains.com

----

--3.  Retrieve the track name, album, artistID, and trackID for all the albums.
Select
	t.name,
	a.title,
	a.artistID,
	t.trackID
from albums a
	left join tracks t
		on a.albumID = t.albumID

--    What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album?

--C.  Breaking the Rules

----

--4.  Retrieve a list with the managers last name, and the last name of the employees who report to him or her
Select
	e.employeeID,
	e.lastname as employee,
	m.lastname as manager
from employees e
	inner join employees m
		on e.reportsto = m.employeeID

--    Who are the reports for the manager named Mitchell?

--D.  Callahan - King

----

--5.  Find the name and ID of the artists who do not have albums.
Select
	a.artistID,
	a.name,
	am.albumID,
	am.title
from artists a
	left join albums am
		on am.artistID = a.artistID
where am.title is null

--    Two of the records returned have the same last name.

--E.  Gilberto

----

--6.  Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.
Select
	e.firstname,
	e.lastname
from employees e
	union
Select
	c.firstname,
	c.lastname
from customers c
order by e.lastname DESC

--    Determine what is the last name of the 6th record?

--F.  Taylor

----

--7.  See if there are any customers who have a different city listed in their billing city versus their customer city.
Select 
	c.firstname,
	c.lastname,
	c.city as CustomerCity,
	i.billingcity as BillingCity
from customers c
	inner join invoices i
		on c.customerID = i.customerID
where CustomerCity != BillingCity

--G.  No customers have a different city listed in their billing city versus customer city.
