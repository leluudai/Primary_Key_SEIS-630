/* ******************************************************************************/
/*	QACS -- Oracle script for creating tables and relationships					*/
/* ******************************************************************************/


CREATE  TABLE CUSTOMER(
	CustomerID			Int				NOT NULL,
	LastName			VarChar(20)		NOT NULL,
	FirstName			VarChar(20)		NOT NULL,
	Address			    VarChar(30)		NULL,
	City				VarChar(20)		NULL,
	State				Char(2)			NULL,
	ZIP					Char(10)		NULL,
	Phone				Char(12)		NOT NULL,
	Email				VarChar(40)	    NULL,
	CONSTRAINT 			CUSTOMER_PK 	PRIMARY KEY(CustomerID)
	);

CREATE SEQUENCE seqCID INCREMENT BY 1 START WITH 1;

CREATE  TABLE EMPLOYEE(
	EmployeeID			Int 			    NOT NULL,
	LastName			VarChar(20) 		NOT NULL,
	FirstName			VarChar(20) 		NOT NULL,
	Phone				Char(12)		    NULL,
	Email 				VarChar(40)	        NOT NULL UNIQUE,
	CONSTRAINT 			EMPLOYEE_PK 	PRIMARY KEY(EmployeeID)
	);

CREATE SEQUENCE seqEID INCREMENT BY 1 START WITH 1;

CREATE  TABLE VENDOR(
	VendorID			Int				NOT NULL,
	CompanyName			VarChar(25)		NULL,
	ContactLastName		VarChar(20)		NOT NULL,
	ContactFirstName	VarChar(20)		NOT NULL,
	Address				VarChar(25)		NULL,
	City				VarChar(20)		NULL,
	State				Char(2)			NULL,
	ZIP					Char(10)		NULL,
	Phone				Char(12)		NOT NULL,
	Fax					Char(12)		NULL,
	Email				VarChar(40)	NULL,
	CONSTRAINT 			VENDOR_PK 		PRIMARY KEY(VendorID)
	);

CREATE SEQUENCE seqVID INCREMENT BY 1 START WITH 1;


CREATE  TABLE ITEM(
	ItemID				Int	 			NOT NULL,
	ItemDescription		VarChar(30)	NOT NULL,
	PurchaseDate		Date			NOT NULL,
	ItemCost			Numeric(9,2)	NOT NULL,
	ItemPrice			Numeric(9,2)	NOT NULL,
	VendorID			Int				NOT NULL,
	CONSTRAINT 			ITEM_PK			PRIMARY KEY (ItemID),
	CONSTRAINT 			ITEM_VENDOR_FK  FOREIGN KEY	(VendorID)
								REFERENCES VENDOR(VendorID));

CREATE SEQUENCE seqIID INCREMENT BY 1 START WITH 1;

CREATE  TABLE SALE(
    SaleID				Int				NOT NULL,
	CustomerID			Int	 			NOT NULL,
	EmployeeID			Int				NOT NULL,
	SaleDate			Date			NOT NULL,
	SubTotal			Numeric(15,2)	NULL,
	Tax					Numeric(15,2)	NULL,
	Total				Numeric(15,2)	NULL,
    CONSTRAINT 			SALE_PK 		PRIMARY KEY (SaleID),
	CONSTRAINT 			SALE_CUSTOMER_FK FOREIGN KEY (CustomerID)
								REFERENCES CUSTOMER(CustomerID),
	CONSTRAINT 			SALE_EMPLOYEE_FK FOREIGN KEY(EmployeeID)
								REFERENCES EMPLOYEE(EmployeeID));

CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;


CREATE  TABLE SALE_ITEM(
    SaleID				Int				NOT NULL,
	SaleItemID			Int				NOT NULL,
	ItemID				Int	 			NOT NULL,
	ItemPrice			Numeric(9,2)	NOT NULL,
    CONSTRAINT 			SALE_ITEM_PK 	PRIMARY KEY (SaleID, SaleItemID),
	CONSTRAINT 			SALE_ITEM_SALE_FK FOREIGN KEY (SaleID)
								REFERENCES SALE(SaleID) ON DELETE CASCADE,
	CONSTRAINT 			SALE_ITEM_ITEM_FK FOREIGN KEY (ItemID)
								REFERENCES ITEM(ItemID)    );


