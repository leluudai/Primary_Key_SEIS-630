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

CREATE TABLE LINE_ITEM(
 LineItemID Int NOT NULL,
 LineItemName Int NOT NULL,
 LineItemPrice	Numeric(9,2) NOT NULL,
 LineItemQuantity Int NULL,
 CONSTRAINT LINE_ITEM_PK PRIMARY KEY(LineItemID)
);

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
 LicensePlate VarChar(7) NULL,
 IsRental Boolean NOT NULL,
 Year Numeric(4,2) NOT NULL,
 NeedsRepair Boolean NOT NULL,
 CONSTRAINT VEHICLE_PK PRIMARY KEY(VehicleID)
);

CREATE TABLE TOOL(
 ToolID Int NOT NULL,
 ToolName	VarChar(25) NOT NULL,
 ToolType char(5) NULL,
 CONSTRAINT TOOLTYPE_CHECK CHECK (ToolType IN('hand', 'power')),
 CONSTRAINT TOOL_PK PRIMARY KEY(ToolID)
);

CREATE TABLE PROJECT(
 ProjectNumber Int NOT NULL,
 ProjectName	VarChar(25) NOT NULL,
 ProjectAddress VarChar(25) NULL,
 VehicleID Int NOT NULL,
 ToolID Int NOT NULL,
 CONSTRAINT VEHICLE_FK FOREIGN KEY (VehicleID) REFERENCES VEHICLE(VehicleID),
 CONSTRAINT TOOL_FK FOREIGN KEY (ToolID) REFERENCES TOOL(ToolID),
 CONSTRAINT PROJECT_PK PRIMARY KEY(ProjectNumber)
);

CREATE TABLE SKILL(
 SkillID Int NOT NULL,
 SkillCode char(3) NOT NULL,
 SkillClassification varchar(25) NOT NULL,
 BasicHourlyRate Int NOT NULL,
 Fringe Int NOT NULL,
 CONSTRAINT SKILL_PK PRIMARY KEY(SkillID)
);

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
 Gender CHAR(2) NOT NULL,
 MaritalStatus VarChar(7) NOT NULL,
 DOB Date NOT NULL,
 EEOTYPE VarChar(34) NOT NULL,
 CONSTRAINT EEOTYPE_CHECK  CHECK (EEOTYPE IN('Black not of Hispanic Origin', 'Hispanic', 'Asian/Pacific Islander', 'American Indian Or Alaskan Native', 'Non-Minority (White)')),
 CONSTRAINT MARITALSTATUS_CHECK CHECK (MaritalStatus IN('Single', 'Married')),
 CONSTRAINT GENDER_CHECK CHECK (MaritalStatus IN('male', 'female')),
 CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EmployeeID)
);

CREATE TABLE TIME_CARD(
 SkillID Int NOT NULL,
 EmployeeID Int NOT NULL,
 ProjectNumber Int NOT NULL,
 CONSTRAINT  TIME_CARD_PK 	PRIMARY KEY (SkillID, EmployeeID, ProjectNumber),
 CONSTRAINT  SKILL_ID_FK FOREIGN KEY (SkillID) REFERENCES SKILL(SkillID),
 CONSTRAINT  EMPLOYEE_ID_FK FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID),
 CONSTRAINT  PROJECT_NUMBER_FK FOREIGN KEY (ProjectNumber) REFERENCES PROJECT(ProjectNumber)
);

CREATE TABLE CONTRACTOR(
 ContractorNumber Int NOT NULL,
 SupplierID Int NOT NULL,
 ProjectNumber Int NOT NULL,
 ContractorName  VarChar(25) NULL,
 ContractorAddress VarChar(25) NULL,
 CONSTRAINT SUPPLIER_ID_FK FOREIGN KEY (SupplierID) REFERENCES SUPPLIER(SupplierID),
 CONSTRAINT PROJECT_NUMBER_FK FOREIGN KEY (ProjectNumber) REFERENCES PROJECT(ProjectNumber)
);
