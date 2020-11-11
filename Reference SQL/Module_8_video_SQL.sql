-- Deleting data
DELETE
FROM INVOICE
WHERE InvoiceNumber = 35016;

-- Deleting everything in a table by not using WHERE
DELETE
FROM INVOICE;

-- Insert statement with column list
INSERT INTO INVOICE (InvoiceDate, CustomerID, PaymentType, Subtotal,
                Shipping, Tax, Total, InvoiceNumber) VALUES
                ('09-Apr-20', 2, 'VISA', 54.90, 5.95, 4, 64.85, 41023);
                
-- Insert statement without column list
INSERT INTO INVOICE VALUES (41024, '09-Apr-20', 3, 'MasterCard',
                            45.88, 5.95, 2.62, 54.45);

-- Insert statement with null values using column list
INSERT INTO INVOICE (InvoiceNumber, InvoiceDate, CustomerID, 
                        PaymentType, Subtotal, Shipping, Tax)
                        VALUES (41025, '09-Apr-20', 3, 'MasterCard',
                            45.88, 5.95, 2.62);

-- Insert statement with null values specifically using NULL keyword
INSERT INTO INVOICE VALUES (41026, '09-Apr-20', 3, 'MasterCard',
                            45.88, 5.95, 2.62, NULL);


-- Update statement -- change the customerID of the invoice I just
-- added
UPDATE INVOICE
SET CustomerID = 2
WHERE InvoiceNumber = 41024;

-- Update statement to delete a value within a certain column
UPDATE INVOICE
SET Total = NULL
WHERE InvoiceNumber = 35017;




-- Drop table syntax
DROP TABLE CUSTOMER;
-- May have error because Customers are listed as FKs in other tables





-- DROP all tables before doing following CREATE examples

-- Create the CUSTOMER table for HSD (SIMPLIFIED)
-- Table-level PK constraint
CREATE TABLE CUSTOMER (
    CustomerID      Int             NOT NULL,
    LastName        Varchar(20)     NOT NULL,
    FirstName       Varchar(20)     NOT NULL,
    EmailAddress    Varchar(30)     NOT NULL,
    CONSTRAINT cust_pk PRIMARY KEY (CustomerID)
);

-- Create the CUSTOMER table for HSD (SIMPLIFIED)
-- Column-level PK constraint
-- Table-level UNIQUE constraints
CREATE TABLE CUSTOMER (
    CustomerID      Int        PRIMARY KEY     NOT NULL,
    LastName        Varchar(20)     NOT NULL,
    FirstName       Varchar(20)     NOT NULL,
    EmailAddress    Varchar(30)     NOT NULL,
    CONSTRAINT email_unique UNIQUE (EmailAddress),
    CONSTRAINT unique_names UNIQUE (FirstName, LastName)
);

-- Create the INVOICE table for HSD (SIMPLIFIED)
-- PK constraint at column level, FK constraint at table level
-- Default values constraint (column-level)
-- CHECK constraint at table level
-- Create InvoiceNumber as a surrogate key
CREATE TABLE INVOICE (
    InvoiceNumber   Int  GENERATED ALWAYS AS IDENTITY     PRIMARY KEY,
    InvoiceDate     Date            NOT NULL,
    CustomerID      Int             NOT NULL,
    Total           Numeric(9,2)    DEFAULT 0    NULL,
    CONSTRAINT inv_cust_fk FOREIGN KEY (CustomerID) REFERENCES
        CUSTOMER(CustomerID), --ON DELETE CASCADE
    CONSTRAINT total_check CHECK (Total BETWEEN 0 AND 1000000)
);

-- When you use a true surrogate key (GENERATED ALWAYS)
-- then your INSERT statements MUST include a column set, but that
-- column set should NOT include the surrogate key
INSERT INTO CUSTOMER VALUES (1, 'Barlow', 'Jordan', 'jb@fake.com');
INSERT INTO INVOICE (InvoiceDate, CustomerID, Total)  
            VALUES ('09-APR-20', 1, 20);
-- Notice that the Insert statement does NOT include InvoiceNumber (the surrogate key)


DROP TABLE INVOICE;
DROP TABLE CUSTOMER;









-- Optional INSERT, UPDATE, DELETE practice questions
-- Delete the customer named Terry Ranger
DELETE FROM CUSTOMER
WHERE LastName = 'Ranger' AND FirstName = 'Terry';
-- Can't do it because Terry Ranger is on an invoice and/or seminar
-- (integrity constraint error)

-- Insert a new seminar called 'Landscaping' to run on April 30, 2020
INSERT INTO SEMINAR VALUES (12, '30-APR-20', 
                TO_DATE('11:00 AM', 'HH:MI AM'), 'St. Paul',
                'Landscaping');

-- Change the product type Book to now be Books
UPDATE PRODUCT
SET ProductType = 'Books'
WHERE ProductType = 'Book';





-- SELECT DateCompleted(WEEKDAY, GETDATE()) FROM PARK
--
-- SELECT WeekDay(date '1982-03-09', 'DAY') day FROM PARK;
--
-- select DateCompleted(to_char(sysdate,'D')) from PARK where  ParkID = 5; -- day of week for today
-- select to_char(DateCompleted,'D') from PARK;
--
-- SELECT DATENAME()


