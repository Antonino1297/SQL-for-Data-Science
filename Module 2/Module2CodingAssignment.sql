--1.  Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.
SELECT COUNT(TrackID)
FROM tracks
WHERE Milliseconds >= 5000000;

--    How many tracks are returned?
--A.  2

--2.  Run Query: Find all the invoices whose total is between $5 and $15 dollars.
SELECT total
FROM invoices
WHERE total BETWEEN 5
		 AND 15;

--    While the query in this example is limited to 10 records, running the query correctly will indicate how many total records there are - enter that number below.
--B.  168

--3.  Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.
SELECT firstname
	,lastname
	,company
FROM customers
WHERE STATE IN (
		'RJ'
		,'DF'
		,'AB'
		,'BC'
		,'CA'
		,'WA'
		,'NY'
		);

--    What company does Jack Smith work for?
--C.  Microsoft Corp.

--4.  Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.
SELECT customerID
	,invoiceID
	,total
	,invoiceDate
FROM invoices
WHERE customerID IN (
		56
		,58
		)
	AND total BETWEEN 1
		AND 5;

--    What was the invoice date for invoice ID 315?
--D.  10-27-2012

--5.  Run Query: Find all the tracks whose name starts with 'All'.
SELECT name
FROM tracks
WHERE name LIKE "All%";

--    While only 10 records are shown, the query will indicate how many total records there are for this query - enter that number below.
--E.  15

--6.  Run Query: Find all the customer emails that start with "J" and are from gmail.com.
SELECT customerID
	,email
FROM customers
WHERE email LIKE "J%@gmail.com";

--    Enter the one email address returned (you will likely need to scroll to the right) below.
--F.  jubarnett@gmail.com

--7.  Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.
SELECT invoiceID
	,billingCity
	,total
FROM invoices
WHERE billingCity IN (
		'Brasilia'
		,'Edmonton'
		,'Vancouver'
		)
ORDER BY invoiceID DESC;

--    What is the total invoice amount of the first record returned? Enter the number below without a $ sign. Remember to sort in descending order to get the correct answer.
--G.  13.86

--8.  Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.
SELECT customerID
	,COUNT(*) AS Orders
FROM invoices
GROUP BY customerID
ORDER BY Orders DESC;

--    What is the number of items placed for the 8th person on this list? Enter that number below.
--H.  7

--9.  Run Query: Find the albums with 12 or more tracks.
SELECT albumID
	,Count(*) AS Ntracks
FROM tracks
GROUP BY albumID
HAVING COUNT(*) >= 12;

--    While the number of records returned is limited to 10, the query, if run correctly, will indicate how many total records there are. Enter that number below.
--I.  158