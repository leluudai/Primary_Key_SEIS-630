-- This was my first SQL query! Yay!
/* Always make sure to end block comments
*/
SELECT FirstName, LastName 
FROM CUSTOMER;


-- Use * to select all rows
SELECT *
FROM CUSTOMER;


-- Which cities our customers live in
-- Use DISTINCT to eliminate duplicates
SELECT DISTINCT City
FROM CUSTOMER;


-- Find names of customers who live in Dallas
SELECT FirstName, LastName
FROM CUSTOMER
WHERE City = 'Dallas';



-- Find invoice numbers and their totals for
-- invoices whose totals are more than $60
SELECT InvoiceNumber, Total
FROM INVOICE
WHERE Total > 60;


-- Find customers (all attributes) who live in
-- Dallas or Fort Worth
SELECT *
FROM CUSTOMER
WHERE City = 'Dallas' OR City = 'Fort Worth';


-- Find invoice numbers and totals for invoices
-- where the subtotal is between 40 and 60
SELECT InvoiceNumber, Total
FROM INVOICE
WHERE Subtotal BETWEEN 40 and 60;
--WHERE Subtotal >= 40 AND Subtotal <= 60;


-- Find customers who live in Dallas or Fort Worth
-- using the IN keyword
SELECT *
FROM CUSTOMER
WHERE City IN ('Dallas', 'Fort Worth');


-- Find customers who do not have an address listed
SELECT *
FROM CUSTOMER
WHERE StreetAddress IS NULL;



-- Find customers whose last name contains letter 's'
SELECT *
FROM CUSTOMER
WHERE LastName LIKE '%s%';

-- Find customers with last name Eagleton even
-- if we didn't know what letter comes before n
SELECT *
FROM CUSTOMER
WHERE LastName LIKE 'Eaglet_n';


-- List customer names and phone numbers sorted 
-- by last then first name in reverse alphabetical
SELECT FirstName, LastName, Phone
FROM CUSTOMER
ORDER BY LastName DESC, FirstName DESC;


-- Get a list of customer email addresses
-- (example of column alias)
SELECT EmailAddress AS Email
FROM CUSTOMER;


-- Find customers who live in Dallas but we're not
-- sure the capitalization of the city data
SELECT *
FROM CUSTOMER
WHERE LOWER(City) = 'dallas';

-- See invoice numbers and totals rounded to whole dollars
SELECT InvoiceNumber, ROUND(Total, 0)
FROM INVOICE;

-- Example of adding within a SELECT clause
SELECT InvoiceNumber, Subtotal + Tax
FROM INVOICE;


-- Find how many of our customers have addresses listed
SELECT COUNT(StreetAddress)
FROM CUSTOMER;

-- Find how many cities our customers live in
SELECT COUNT(DISTINCT City)
FROM CUSTOMER;

-- Find the highest invoice total
SELECT MAX(Total)
FROM INVOICE;


-- What is the average invoice total by payment type?
-- Can round by replacing AVG(Total) with ROUND(AVG(Total),2)
SELECT PaymentType, AVG(Total)
FROM INVOICE
GROUP BY PaymentType;

-- What is the average invoice total by payment type,
-- but only show payment types with invoice averages
-- over $60
SELECT PaymentType, AVG(total)
FROM INVOICE
GROUP BY PaymentType
HAVING AVG(Total) > 60;



-- List the invoices (all attributes) dated before 2020
SELECT *
FROM INVOICE
WHERE InvoiceDate < '01-JAN-20';

SELECT DISTINCT SeminarTitle, COUNT(CustomerID)
FROM SEMINAR s, SEMINAR_CUSTOMER sc
WHERE s.SeminarID = sc.SeminarID
GROUP BY SeminarTitle
ORDER BY SeminarTitle;

SELECT DISTINCT SeminarTitle, FirstName, LastName
FROM SEMINAR s, SEMINAR_CUSTOMER sc, CUSTOMER c
WHERE s.SeminarID = sc.SeminarID AND sc.CustomerID
        = c.CustomerID
ORDER BY SeminarTitle;



