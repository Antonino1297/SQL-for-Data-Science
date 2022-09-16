--1.  Retrieve all the records from the Employees table.
Select *
From employees;

--    What is Robert King's mailing address?

--A.  590 Columbia Boulevard West, Lethbridge, AB, CANADA T1K 5N8

----

--2.  Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
Select FirstName,
LastName,
Birthdate,
Address,
City,
State
From Employees;

--B.  Steve

----

--3.  Retrieve all the columns from the Tracks table, but only return 20 rows.
Select *
From tracks
limit 20;

--    What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"? 

--C.  375418
