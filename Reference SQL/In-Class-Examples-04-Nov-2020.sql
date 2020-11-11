-- Use SQL View to layer functions
-- What is the average number of seminars
-- attended by each customer?
-- (for customers that have attended at least 1)
CREATE VIEW SeminarsByCustomer AS
SELECT COUNT(SeminarID) AS NoOfSeminars, CustomerID
FROM SEMINAR_CUSTOMER
GROUP BY CustomerID;

SELECT AVG(NoOfSeminars)
FROM SEMINARSBYCUSTOMER;




-- Change a column in a table
-- Change the data type and null status
-- of StreetAddress in CUSTOMER
ALTER TABLE CUSTOMER
MODIFY StreetAddress VARCHAR(50) NOT NULL;
-- I get an error because StreetAddress contains
-- null values. I would need to write an UPDATE
-- to add values to all rows that have "NULL"
UPDATE CUSTOMER
SET StreetAddress = 'Unknown'
WHERE StreetAddress IS NULL;
-- Now I can go back and run that ALTER statement



-- Change "StreetAddress" to "Address"
ALTER TABLE CUSTOMER
RENAME COLUMN StreetAddress TO Address;



-- Make "Address" be a unique field
ALTER TABLE CUSTOMER
ADD CONSTRAINT AddressUnique UNIQUE(Address);

-- Drop the constraint I just added
ALTER TABLE CUSTOMER
DROP CONSTRAINT AddressUnique;



-- Add a new column to customer table
-- If data already exists, you can only add
-- optional columns (then add the data later)
ALTER TABLE CUSTOMER
ADD DateLastContact Date NULL;


-- Change the relationship between INVOICE
-- and CUSTOMER such that an INVOICE now can
-- have zero or one customers
-- Change it by changing the FK field
ALTER TABLE INVOICE
MODIFY CustomerID INT NULL;


-- Syntax to manuually create an index on
-- a column that has not already been indexed
CREATE INDEX CustLastNameIndex
ON CUSTOMER(LastName);




SELECT * FROM CUSTOMER;


