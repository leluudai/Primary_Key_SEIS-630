-- TODO: Update Contraint Names with Table prefix.

CREATE TABLE SUPPLIER(
 SupplierID Int NOT NULL,
 Phone	Char(12) NOT NULL,
 SupplierAddress VarChar(25) NULL,
 SupplierName  VarChar(25) NULL,
 SupplierState	Char(2) NULL,
 SupplierCity VarChar(20) NULL,
 SupplierZip Char(10) NULL,
CONSTRAINT SUPPLIER_PK PRIMARY KEY(SupplierID)
);

CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

CREATE TABLE LINE_ITEM(
 LineItemID Int NOT NULL,
 LineItemName Int NOT NULL,
 LineItemPrice	Numeric(9,2) NOT NULL,
 LineItemQuantity Int NULL,
 CONSTRAINT LINE_ITEM_PK PRIMARY KEY(LineItemID)
);

CREATE SEQUENCE seqLID INCREMENT BY 1 START WITH 1;

CREATE  TABLE SUPPLIER_LINE_ITEM(
 SupplierID Int NOT NULL,
 LineItemID Int NOT NULL,
 CONSTRAINT  SUPPLIER_LINE_ITEM_PK 	PRIMARY KEY (SupplierID, LineItemID),
 CONSTRAINT  SUPPLIER_ID_FK FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID),
 CONSTRAINT  LINE_ITEM_ID_FK FOREIGN KEY (LineItemID) REFERENCES LINE_ITEM(LineItemID)
);

CREATE TABLE VEHICLE(
 VehicleID Int NOT NULL,
 VIN Char(17) NOT NULL,
 LicensePlate VarChar(7) NOT NULL, -- TODO: CHECK constraint for hypens?
 IsRental NUMBER(1) DEFAULT 0,
 Year Numeric(4) NOT NULL,
 NeedsRepair NUMBER(1) DEFAULT 0,
 CONSTRAINT VEHICLE_PK PRIMARY KEY(VehicleID),
 CONSTRAINT IS_RENTAL_BOOL CHECK(IsRental >= 0 AND IsRental <= 1),
 CONSTRAINT NEEDS_REPAIR_BOOL CHECK(NeedsRepair >= 0 AND NeedsRepair <= 1)
);

CREATE SEQUENCE seqVID INCREMENT BY 1 START WITH 1;

CREATE TABLE TOOL(
 ToolID Int NOT NULL,
 ToolName	VarChar(25) NOT NULL,
 ToolType char(5) NULL,
 CONSTRAINT TOOLTYPE_CHECK CHECK (ToolType IN('hand', 'power')), -- TODO: LIKE, Regex
 CONSTRAINT TOOL_PK PRIMARY KEY(ToolID)
);

CREATE SEQUENCE seqTID INCREMENT BY 1 START WITH 1;

CREATE TABLE PROJECT(
 ProjectID Int NOT NULL,
 ProjectNumber VarChar(14) NOT NULL UNIQUE,
 ProjectName	VarChar(25) NOT NULL,
 ProjectAddress VarChar(25) NOT NULL,
 ProjectDescription Varchar(150) NOT NULL,
 VehicleID Int NOT NULL,
 ToolID Int NOT NULL,
 CONSTRAINT VEHICLE_FK FOREIGN KEY (VehicleID) REFERENCES VEHICLE(VehicleID),
 CONSTRAINT TOOL_FK FOREIGN KEY (ToolID) REFERENCES TOOL(ToolID),
 CONSTRAINT PROJECT_PK PRIMARY KEY(ProjectID)
);

CREATE SEQUENCE seqPID INCREMENT BY 1 START WITH 1;

CREATE TABLE SKILL(
 SkillID Int NOT NULL,
 SkillCode char(3) NOT NULL,
 SkillClassification varchar(25) NOT NULL,
 BasicHourlyRate FLOAT NOT NULL, -- TODO: Check type for decimals
 Fringe FLOAT NOT NULL, -- TODO: Check type for decimals
 CONSTRAINT SKILL_PK PRIMARY KEY(SkillID),
 CONSTRAINT SKILL_CODE_TYPE CHECK(SkillCode IN ('LAB','MAS', 'EQP', 'GL')),
 CONSTRAINT SKILL_CLASSIFICATION_TYPE CHECK(SkillClassification IN ('Labor','Masonry', 'Equipment Operation', 'General Labor'))
);

CREATE SEQUENCE seqSKID INCREMENT BY 1 START WITH 1;

CREATE TABLE EMPLOYEE(
 EmployeeID Int NOT NULL,
 SSN Char(11) NOT NULL, -- TODO: CHECK constraint for hypens?
 LastName VarChar(25) NOT NULL,
 FirstName VarChar(25) NOT NULL,
 MI Char(2) NOT NULL,
 Street VarChar(35) NOT NULL,
 City VarChar(35) NOT NULL,
 State Char(2) NOT NULL,
 ZIP Char(10) NOT NULL,
 Phone Char(12) NOT NULL,
 Gender CHAR(6) NOT NULL,
 MaritalStatus VarChar(7) NOT NULL,
 DOB Date NOT NULL,
 EEOTYPE Int NOT NULL,
 CONSTRAINT EEOTYPE_CHECK  CHECK (EEOTYPE IN(1, 2, 3, 4, 5)),
 CONSTRAINT MARITALSTATUS_CHECK CHECK (MaritalStatus IN('Single', 'Married')), -- TODO: Use LIKE, Regex
 CONSTRAINT GENDER_CHECK CHECK (Gender IN('male', 'female')), -- TODO: Use LIKE, Regex
 CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EmployeeID)
);

CREATE SEQUENCE seqEID INCREMENT BY 1 START WITH 1;

CREATE TABLE TIME_CARD(
 TimeCardId Int NOT NULL,
 SkillID Int NOT NULL,
 EmployeeID Int NOT NULL,
 ProjectID Int NOT NULL,
 StartTime Date NOT NULL,
 EndTime Date NOT NULL,
 CONSTRAINT TIME_CARD_PK PRIMARY KEY (TimeCardId),
 CONSTRAINT SKILL_ID_FK FOREIGN KEY (SkillID) REFERENCES SKILL(SkillID),
 CONSTRAINT EMPLOYEE_ID_FK FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID),
 CONSTRAINT PROJECT_NUMBER_FK FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
 --CONSTRAINT WEEKDAY_STARTTIME_CONSTRAINT CHECK(to_char(StartTime,'D') != '1' AND to_char(StartTime,'D') != '7'),
 --CONSTRAINT WEEKDAY_ENDTIME_CONSTRAINT CHECK(to_char(EndTime,'D') != '1' AND to_char(EndTime,'D') != '7') -- TODO: Add constraint for EndTime not < StartTime
);

CREATE TABLE CONTRACTOR(
 ContractorNumber Int NOT NULL,
 SupplierID Int NOT NULL,
 ProjectID Int NOT NULL,
 ContractorName  VarChar(25) NULL,
 ContractorAddress VarChar(25) NULL,
 CONSTRAINT CONTRACTOR_SUPPLIER_ID_FK FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID),
 CONSTRAINT CONTRACTOR_PROJECT_NUMBER_FK FOREIGN KEY (ProjectID) REFERENCES PROJECT(ProjectID)
);

CREATE SEQUENCE seqCN INCREMENT BY 1 START WITH 1;