-- Module #6 example problems
-- #1
SELECT InvoiceNumber, InvoiceDate, Total
FROM INVOICE;


-- Module #6 example problems
-- #2
SELECT InvoiceNumber, InvoiceDate, Total
FROM INVOICE
WHERE Total > 60;


-- Module #6 example problems
-- #3
SELECT InvoiceNumber, InvoiceDate, Total
FROM INVOICE
WHERE Total > 60
ORDER BY InvoiceDate;


-- Module #6 example problems
-- #4`
SELECT InvoiceDate, SUM(Total)
FROM INVOICE
GROUP BY InvoiceDate
ORDER BY InvoiceDate;


-- Module #6 example problems
-- #5
SELECT InvoiceDate, SUM(Total)
FROM INVOICE
GROUP BY InvoiceDate
HAVING SUM(Total) > 100;


-- Filter invoices to see only the ones in 
-- March 2020
SELECT InvoiceDate, SUM(Total)
FROM INVOICE
WHERE InvoiceDate BETWEEN '01-MAR-20' AND '31-MAR-20'
GROUP BY InvoiceDate
HAVING SUM(Total) > 100;



-- Find the names of customers who have invoices
-- totaling over $70
-- Use the subquery method
SELECT LastName, FirstName
FROM CUSTOMER
WHERE CustomerID IN 
    (SELECT CustomerID
     FROM INVOICE
     WHERE Total > 50);

-- Find the names of customers who have purchased
-- products that are books ('Book' is a ProductType)
-- Use the subquery method
SELECT FirstName, LastName
FROM CUSTOMER
WHERE CustomerID IN 
    (SELECT CustomerID
     FROM INVOICE
     WHERE InvoiceNumber IN 
        (SELECT InvoiceNumber
         FROM LINE_ITEM
         WHERE ProductNumber IN 
            (SELECT ProductNumber
             FROM PRODUCT
             WHERE ProductType = 'Book')));


-- Find the names of customers who have invoices
-- totaling over $70
-- Using an implicit join
SELECT DISTINCT FirstName, LastName, Total
FROM CUSTOMER, INVOICE
WHERE CUSTOMER.CustomerID = INVOICE.CustomerID
        AND Total > 70;


-- Find the names of customers who have invoices
-- totaling over $70
-- Using an explicit join
SELECT DISTINCT FirstName, LastName, Total
FROM CUSTOMER c JOIN INVOICE i ON c.CustomerID =
                                    i.CustomerID
WHERE Total > 70;


-- Find the names of customers who have purchased
-- products that are books ('Book' is a ProductType)
-- Use an implicit join
SELECT DISTINCT FirstName, LastName
FROM CUSTOMER c, PRODUCT p, INVOICE i, LINE_ITEM li
WHERE ProductType = 'Book' AND c.CustomerID = i.CustomerID
        AND i.InvoiceNumber = li.InvoiceNumber AND
        li.ProductNumber = p.ProductNumber;


-- Find the names of customers who have purchased
-- products that are books ('Book' is a ProductType)
-- Use an explicit join
SELECT DISTINCT FirstName, LastName
FROM CUSTOMER c JOIN INVOICE i ON c.CustomerID = 
        i.CustomerID JOIN LINE_ITEM li ON i.InvoiceNumber
        = li.InvoiceNumber JOIN PRODUCT p ON 
        li.ProductNumber = p.ProductNumber
WHERE ProductType = 'Book'; 


-- Find a list of customer names along with their invoice
-- totals (show ALL customers)
SELECT FirstName, LastName, Total
FROM CUSTOMER c LEFT JOIN INVOICE i ON c.CustomerID
                                = i.CustomerID;

-- Find a list of customer names along with the sum
-- of their invoice totals (show ALL customers)
SELECT c.CustomerID, FirstName, LastName, SUM(Total)
FROM CUSTOMER c LEFT JOIN INVOICE i ON c.CustomerID
                                = i.CustomerID
GROUP BY c.CustomerID, FirstName, LastName;

select from CUSTOMER, EMPLOYEE, EMPLOYEE

-- Example problems from Module #7 slides
-- #1
SELECT DISTINCT SeminarTitle
FROM SEMINAR;

-- Example problems from Module #7 slides
-- #2 (implicit)
SELECT DISTINCT SeminarTitle, FirstName, LastName, EmailAddress
FROM SEMINAR s, SEMINAR_CUSTOMER sc, CUSTOMER c
WHERE s.SeminarTitle = 'Kitchen on a Medium Budget' and s.SeminarID = sc.SeminarID AND sc.CustomerID
        = c.CustomerID
ORDER BY SeminarTitle;


-- Example problems from Module #7 slides
-- #2 (explicit)
SELECT DISTINCT SeminarTitle, FirstName, LastName
FROM SEMINAR s JOIN SEMINAR_CUSTOMER sc ON
        s.SeminarID = sc.SeminarID   JOIN CUSTOMER c
        ON sc.CustomerID = c.CustomerID
ORDER BY SeminarTitle;


-- Example problems from Module #7 slides
-- #3 (implicit)
SELECT DISTINCT SeminarTitle, COUNT(CustomerID)
FROM SEMINAR s, SEMINAR_CUSTOMER sc
WHERE s.SeminarID = sc.SeminarID 
GROUP BY SeminarTitle
ORDER BY SeminarTitle;



