--    Please familiarize yourself with the ER diagram (CHECK OUT the ED Diagram.png) in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.

--1.  Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together. 
--    Be sure to make a space in between these two and make it UPPER CASE. (e.g. LOS ANGELES USA)
Select
	customerID,
	firstname,
	lastname,
	address,
	upper (City || ' (' || Country || ') ') as CityCountry
from customers

--    What is the city and country result for CustomerID 16?

--A.  MOUNTAIN VIEW USA

----

--2.  Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name. 
--    Make the new field lower case and pull each individual step to show your work.
Select
	firstname,
	lastname,
	lower (substr (firstname, 1, 4) || substr ( lastname, 1, 2) as NewEmployeeID
from employees

--    What is the final result for Robert King?

--B.  robeki

----

--3.  Show a list of employees who have worked for the company for 15 or more years using the current date function. 
--    Sort by lastname ascending.
Select
	employeeID,
	lastname,
	firstname,
	birthdate,
	date ("now") - birthdate as Worked
from employees
where Worked >= 15
order by lastname ASC

--    What is the lastname of the last person on the list returned?

--C.  Peacock

----

--4.  Profiling the Customers table, answer the following question.
Select COUNT(*)
from customers
WHERE postalcode is null

--    Are there any columns with null values?

--D.  Postal code - Company - Phone - Fax

--5.  Find the cities with the most customers and rank in descending order.
Select 
	city,
	COUNT(*)
from customers
group by city
order by COUNT(*) DESC

--    Which of the following cities indicate having 2 customers?

--E.  London - Sao Paulo - Mountain View

----

--6.  Create a new customer invoice id by combining a customer’s invoice id with their first and last name while ordering your query in the following order: firstname, lastname, and invoiceID.
Select
	c.firstname,
	c.lastname,
	i.invoiceID,
	c.first || c.lastname || i.invoiceID as NewID
from customers c
	inner join invoices i
		on c.customerID = i .customerID
where newID like 'AstridGruber%'

--    Select all of the correct "AstridGruber" entries that are returned in your results below. 

--F.  AstridGruber273 - AstridGruber296 - AstridGruber370
