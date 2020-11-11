/* ******************************************************************************/
/*	QACS -- Oracle script for populating tables with data						*/
/* ******************************************************************************/

/* ***   CUSTOMER DATA   ********************************************************/

INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Shire', 'Robert', '6225 Evanston Ave N', 'Seattle', 'WA', '98103',
	'206-524-2433', 'Robert.Shire@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Goodyear', 'Katherine', '7335 11th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-3544', 'Katherine.Goodyear@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Bancroft', 'Chris', '12605 NE 6th Street', 'Bellevue', 'WA', '98005',
	'425-635-9788', 'Chris.Bancroft@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Griffith', 'John', '335 Aloha Street', 'Seattle', 'WA', '98109',
	'206-524-4655', 'John.Griffith@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Tierney', 'Doris', '14510 NE 4th Street', 'Bellevue', 'WA', '98005',
	'425-635-8677', 'Doris.Tierney@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Anderson', 'Donna', '1410 Hillcrest Parkway', 'Mt. Vernon', 'WA', '98273',
	'360-538-7566', 'Donna.Anderson@elsewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Svane', 'Jack', '3211 42nd Street', 'Seattle', 'WA', '98115',
	'206-524-5766', 'Jack.Svane@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Walsh', 'Denesha', '6712 24th Avenue NE', 'Redmond', 'WA', '98053',
	'425-635-7566', 'Denesha.Walsh@somewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Enquist', 'Craig', '534 15th Street', 'Bellingham', 'WA', '98225',
	'360-538-6455', 'Craig.Enquist@elsewhere.com');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal,
	'Anderson', 'Rose', '6823 17th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-6877', 'Rose.Anderson@elsewhere.com');


/* ***   EMPLOYEE DATA   ********************************************************/

INSERT INTO EMPLOYEE VALUES(seqEID.nextVal,
	'Stuart', 'Anne', '206-527-0010', 'Anne.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(seqEID.nextVal,
	'Stuart', 'George', '206-527-0011', 'George.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(seqEID.nextVal,
	'Stuart', 'Mary', '206-527-0012', 'Mary.Stuart@QACS.com');
INSERT INTO EMPLOYEE VALUES(seqEID.nextVal,
	'Orange', 'William', '206-527-0013', 'William.Orange@QACS.com');
INSERT INTO EMPLOYEE VALUES(seqEID.nextVal,
	'Griffith', 'John', '206-527-0014', 'John.Griffith@QACS.com');


/* ***   VENDOR DATA   **********************************************************/

INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'Linens and Things', 'Huntington', 'Anne', '1515 NW Market Street',
	'Seattle', 'WA', '98107', '206-325-6755', '206-329-9675', 'LAT@business.com');
INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'European Specialties', 'Tadema', 'Ken', '6123 15th Avenue NW',
    'Seattle', 'WA', '98107', '206-325-7866', '206-329-9786', 'ES@business.com');
INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'Lamps and Lighting', 'Swanson', 'Sally', '506 Prospect Street',
    'Seattle', 'WA', '98109', '206-325-8977', '206-329-9897', 'LAL@business.com');
INSERT INTO VENDOR
	(VendorID, CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(seqVID.nextVal, 'Crossroads Inc',
	'Lee', 'Andrew', '1102 3rd Street',
	'Kirkland', 'WA', '98033', '425-746-5433', 'Andrew.Lee@somewhere.com');
INSERT INTO VENDOR
	(VendorID, CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(seqVID.nextVal, 'QXZ Lettering',
	'Harrison', 'Denise', '533 10th Avenue',
	'Kirkland', 'WA', '98033', '425-746-4322', 'Denise.Harrison@somewhere.com');
INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'New York Brokerage', 'Smith', 'Mark', '621 Roy Street',
	'Seattle', 'WA', '98109', '206-325-9088', '206-329-9908', 'NYB@business.com');
INSERT INTO VENDOR
	(vendorID, CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(seqVID.nextVal, 'Who Let the Dogs In',
	'Walsh', 'Denesha', '6712 24th Avenue NE',
	'Redmond', 'WA', '98053', '425-635-7566', 'Denesha.Walsh@somewhere.com');
INSERT INTO VENDOR
	(VendorID, CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
	VALUES(seqVID.nextVal, 'Super Special Antiques',
	'Bancroft', 'Chris', '12605 NE 6th Street',
	'Bellevue', 'WA', '98005', '425-635-9788', '425-639-9978', 'Chris.Bancroft@somewhere.com');
INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'Specialty Antiques', 'Nelson', 'Fred', '2512 Lucky Street',
	'San Francisco', 'CA', '94110', '415-422-2121', '415-429-9212', 'SA@business.com');
INSERT INTO VENDOR VALUES(seqVID.nextVal,
	'General Antiques', 'Garner', 'Patty', '2515 Lucky Street',
	'San Francisco', 'CA', '94110', '415-422-3232', '415-429-9323', 'GA@business.com');


/* ***   ITEM DATA   ************************************************************/

INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk', '07-Nov-14', 1800.00, 3000.00, 2);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk Chair', '10-Nov-14', 300.00, 500.00, 4);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Dining Table Linens', '14-Nov-14', 600.00, 1000.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Candles', '14-Nov-14', 30.00, 50.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Candles', '14-Nov-14', 27.00, 45.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Desk Lamp', '14-Nov-14', 150.00, 250.00,  3);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Dining Table Linens', '14-Nov-14', 450.00, 750.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Book Shelf', '21-Nov-14', 150.00, 250.00, 5);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Chair', '21-Nov-14', 750.00, 1250.00, 6);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Chair', '21-Nov-14', 1050.00, 1750.00, 6);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Candle Holders', '28-Nov-14', 210.00, 350.00, 2);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk', '05-Jan-15', 1920.00, 3200.00, 2);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk', '05-Jan-15', 2100.00, 3500.00, 2);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk Chair', '06-Jan-15', 285.00, 475.00, 9);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Desk Chair', '06-Jan-15', 339.00, 565.00, 9);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Desk Lamp', '06-Jan-15', 150.00, 250.00, 10);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Desk Lamp', '06-Jan-15', 150.00, 250.00, 10);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Desk Lamp', '06-Jan-15', 144.00, 240.00, 3);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Dining Table', '10-Jan-15', 3000.00, 5000.00, 7);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Antique Sideboard', '11-Jan-15', 2700.00, 4500.00, 8);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Dining Table Chairs', '11-Jan-15', 5100.00, 8500.00, 9);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Dining Table Linens', '12-Jan-15', 450.00, 750.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Dining Table Linens', '12-Jan-15', 480.00, 800.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Candles', '17-Jan-15', 30.00, 50.00, 1);
INSERT INTO ITEM VALUES(seqIID.nextVal,
	'Candles', '17-Jan-15', 36.00, 60.00, 1);

/* ***   SALE DATA   ************************************************************/

INSERT INTO SALE VALUES(seqSID.nextVal, 1, 1, '14-Dec-14', 3500.00, 290.50, 3790.50); 
INSERT INTO SALE VALUES(seqSID.nextVal, 2, 2, '15-Dec-14', 1000.00, 83.00, 1083.00); 
INSERT INTO SALE VALUES(seqSID.nextVal, 3, 1, '15-Dec-14', 50.00, 4.15, 54.15); 
INSERT INTO SALE VALUES(seqSID.nextVal, 4, 3, '23-Dec-14', 45.00, 3.74, 48.74); 
INSERT INTO SALE VALUES(seqSID.nextVal, 1, 5, '05-Jan-15', 250.00, 20.75, 270.75); 
INSERT INTO SALE VALUES(seqSID.nextVal, 5, 5, '10-Jan-15', 750.00, 62.25, 812.25);
INSERT INTO SALE VALUES(seqSID.nextVal, 6, 4, '12-Jan-15', 250.00, 20.75, 270.75); 
INSERT INTO SALE VALUES(seqSID.nextVal, 2, 1, '15-Jan-15', 3000.00, 249.00, 3249.00);
INSERT INTO SALE VALUES(seqSID.nextVal, 5, 5, '25-Jan-15', 350.00, 29.05, 379.05);
INSERT INTO SALE VALUES(seqSID.nextVal, 7, 1, '04-Feb-15', 14250.00, 1182.75, 15432.75);
INSERT INTO SALE VALUES(seqSID.nextVal, 8, 5, '04-Feb-15', 250.00, 20.75, 270.75);
INSERT INTO SALE VALUES(seqSID.nextVal, 5, 4, '07-Feb-15', 50.00, 4.15, 54.15);
INSERT INTO SALE VALUES(seqSID.nextVal, 9, 2, '07-Feb-15', 4500.00, 373.50, 4873.50);
INSERT INTO SALE VALUES(seqSID.nextVal, 10,	3, '11-Feb-15', 3675.00, 305.03, 3980.03); 
INSERT INTO SALE VALUES(seqSID.nextVal, 2, 2, '11-Feb-15', 800.00, 66.40, 866.40);


/* ***   SALE_ITEM DATA   *******************************************************/

INSERT INTO SALE_ITEM VALUES(1,	1, 1, 3000.00); 
INSERT INTO SALE_ITEM VALUES(1,	2, 2, 500.00); 
INSERT INTO SALE_ITEM VALUES(2,	1, 3, 1000.00); 
INSERT INTO SALE_ITEM VALUES(3,	1, 4, 50.00);
INSERT INTO SALE_ITEM VALUES(4,	1, 5, 45.00); 
INSERT INTO SALE_ITEM VALUES(5,	1, 6, 250.00); 
INSERT INTO SALE_ITEM VALUES(6,	1, 7, 750.00); 
INSERT INTO SALE_ITEM VALUES(7,	1, 8, 250.00); 
INSERT INTO SALE_ITEM VALUES(8,	1, 9, 1250.00); 
INSERT INTO SALE_ITEM VALUES(8,	2, 10, 1750.00); 
INSERT INTO SALE_ITEM VALUES(9,	1, 11, 350.00); 
INSERT INTO SALE_ITEM VALUES(10, 1, 19, 5000.00); 
INSERT INTO SALE_ITEM VALUES(10, 2, 21, 8500.00); 
INSERT INTO SALE_ITEM VALUES(10, 3, 22, 750.00); 
INSERT INTO SALE_ITEM VALUES(11, 1, 17, 250.00); 
INSERT INTO SALE_ITEM VALUES(12, 1, 24, 50.00); 
INSERT INTO SALE_ITEM VALUES(13, 1, 20, 4500.00); 
INSERT INTO SALE_ITEM VALUES(14, 1, 12, 3200.00); 
INSERT INTO SALE_ITEM VALUES(14, 2, 14, 475.00); 
INSERT INTO SALE_ITEM VALUES(15, 1, 23, 800.00); 

/* ******************************************************************************/
