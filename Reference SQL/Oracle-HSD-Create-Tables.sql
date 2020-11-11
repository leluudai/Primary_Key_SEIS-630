/* *******************************************************************************/
/* Heather Sweeney Designs HSD Database - Create Tables                          */
/* *******************************************************************************/


CREATE  TABLE CUSTOMER(
	CustomerID			Int 				NOT NULL,
	LastName			VarChar(25)		NOT NULL,
	FirstName			VarChar(25)		NOT NULL,
	EmailAddress		VarChar(100)	NOT NULL,
	EncryptedPassword	VarChar(50)		NULL,
	Phone				Char(12)		NOT NULL,
	StreetAddress		VarChar(35)		NULL,
	City				VarChar(35)		DEFAULT 'Dallas',
	State				Char(2)			DEFAULT 'TX',
	ZIP					Char(10)		DEFAULT '75201',
	CONSTRAINT 			CUSTOMER_PK 	PRIMARY KEY(CustomerID),
	CONSTRAINT			CUSTOMER_EMAIL	UNIQUE(EmailAddress)
	);

CREATE SEQUENCE seqCID INCREMENT BY 1 START WITH 1;
	
CREATE  TABLE SEMINAR(
	SeminarID			Int				NOT NULL,
	SeminarDateTime		Date			NOT NULL,
	Location			VarChar(100)	NOT NULL,
	SeminarTitle		VarChar(100)	NOT NULL,
	CONSTRAINT 		SEMINAR_PK 	PRIMARY KEY(SeminarID)
	);

CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

CREATE  TABLE SEMINAR_CUSTOMER(
	SeminarID			Int			NOT NULL,
	CustomerID			Int			NOT NULL,
	CONSTRAINT 		S_C_PK 		PRIMARY KEY(SeminarID, CustomerID),
	CONSTRAINT 		S_C_SEMINAR_FK  FOREIGN KEY(SeminarID)
					REFERENCES SEMINAR(SeminarID),
	CONSTRAINT 		S_C_CUSTOMER_FK	FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)	);

CREATE  TABLE PRODUCT(
	ProductNumber		Char(35)		NOT NULL,
	ProductType			VarChar(24)		NOT NULL,
	ProductDescription	VarChar(100)	NOT NULL,
	UnitPrice			Numeric(9,2)	NOT NULL,
	QuantityOnHand		Int			NULL,
	CONSTRAINT 		PRODUCT_PK 	PRIMARY KEY(ProductNumber),
	CONSTRAINT			PRODUCT_ProductType
					CHECK (ProductType IN ('Video',
						'Video Companion', 'Book'))
	);

CREATE  TABLE INVOICE(
    InvoiceNumber		Int				NOT NULL,
	InvoiceDate			Date			NOT NULL,
	CustomerID			Int				NOT NULL,
	PaymentType			VarChar(25) 	DEFAULT 'Cash' NOT NULL,
	SubTotal			Numeric(9,2)	NULL,
	Shipping			Numeric(9,2)	NULL,
	Tax					Numeric(9,2)	NULL,
	Total				Numeric(9,2)	NULL,	
    CONSTRAINT 			INVOICE_PK 	PRIMARY KEY (InvoiceNumber),
	CONSTRAINT			INVOICE_PaymentType
					CHECK (PaymentType IN ('VISA',
	'MasterCard', 'American Express', 'PayPal', 'Check', 				'Cash')),
	CONSTRAINT 		INVOICE_CUSTOMER_FK FOREIGN KEY(CustomerID)
					REFERENCES CUSTOMER(CustomerID)
	);

CREATE SEQUENCE seqIID INCREMENT BY 1 START WITH 35000;

CREATE  TABLE LINE_ITEM(
    	InvoiceNumber		Int			NOT NULL,
	LineNumber			Int			NOT NULL,
	ProductNumber		Char(35) 		NOT NULL,
	Quantity			Int			NOT NULL,
	UnitPrice			Numeric(9,2)	NULL,
	Total				Numeric(9,2)	NULL,
	CONSTRAINT 		LINE_ITEM_PK 	PRIMARY KEY (InvoiceNumber, LineNumber),
	CONSTRAINT 		L_I_INVOICE_FK 	FOREIGN KEY(InvoiceNumber)
					REFERENCES INVOICE(InvoiceNumber)
					ON DELETE CASCADE,
	CONSTRAINT 		L_I_PRODUCT_FK 	FOREIGN KEY(ProductNumber)
					REFERENCES PRODUCT (ProductNumber)
	);

/* *******************************************************************************/