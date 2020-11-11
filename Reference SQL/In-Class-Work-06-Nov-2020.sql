-- What is the average number of purchases (i.e.,
-- invoices) for each of our customers?
-- Use a view!
CREATE VIEW InvoiceByCust AS
SELECT COUNT(InvoiceNumber) AS Invoices, CustomerID
FROM INVOICE
GROUP BY CustomerID;

SELECT AVG(Invoices)
FROM InvoiceByCust;



-- Change the street address column to allow more
-- characters and also want to make it required
-- Must add a value for all existing records that
-- contain null values in that field
UPDATE CUSTOMER
SET StreetAddress = 'Unknown'
WHERE StreetAddress IS NULL;

ALTER TABLE CUSTOMER 
MODIFY StreetAddress Varchar2(30) NOT NULL;


-- Rename street address to Address
ALTER TABLE CUSTOMER
RENAME COLUMN StreetAddress TO Address;


-- Add a UNIQUE constraints to the Address field
ALTER TABLE CUSTOMER
ADD CONSTRAINT UniqueAddress UNIQUE(Address);

-- Dropping a constraint (the one we just created)
ALTER TABLE CUSTOMER
DROP CONSTRAINT UniqueAddress;

-- Add a required field to our customer table
-- "DateOfLastContact"
ALTER TABLE CUSTOMER
ADD DateOfLastContact Date NULL;

UPDATE CUSTOMER
SET DateOfLastContact = '06-NOV-20'
WHERE DateOfLastContact IS NULL;

ALTER TABLE CUSTOMER
MODIFY DateOfLastContact Date NOT NULL;

-- Drop the column I just created
ALTER TABLE CUSTOMER
DROP COLUMN DateOfLastContact;


--Syntax to create an index
CREATE INDEX lastNameIndex ON
CUSTOMER(LastName);





