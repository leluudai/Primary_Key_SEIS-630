/*	Heather Sweeny Designs HSD Database	 - Insert Data						    */


/* ****   CUSTOMER DATA   ********************************************************/

INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Jacobs', 'Nancy', 'Nancy.Jacobs@somewhere.com', 'nf46tG9E', '817-871-8123',
	'1440 West Palm Drive', 'Fort Worth', 'TX', '76110');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Jacobs', 'Chantel', 'Chantel.Jacobs@somewhere.com', 'b65TG03f', '817-871-8234',
	'1550 East Palm Drive', 'Fort Worth', 'TX', '76112');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Able', 'Ralph', 'Ralph.Able@somewhere.com', 'm56fGH08', '210-281-7987',
	NULL, 'San Antonio', 'TX', '78214');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Baker', 'Susan', 'Susan.Baker@elsewhere.com', 'PC93fEk9', '210-281-7876',
	'456 Oak Street', 'San Antonio', 'TX', '78216');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Eagleton', 'Sam', 'Sam.Eagleton@elsewhere.com', 'bnvR44W8', '210-281-7765',
	'789 Pine Street', 'San Antonio', 'TX', '78218');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Foxtrot', 'Kathy', 'Kathy.Foxtrot@somewhere.com', 'aa8tY4GL', '972-233-6234',
	'11023 Elm Street', 'Dallas', 'TX', '75220');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'George', 'Sally', 'Sally.George@somewhere.com', 'LK8G2tyF', '972-233-6345',
	'12034 San Jacinto', 'Dallas', 'TX', '75223');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Hullett', 'Shawn', 'Shawn.Hullett@elsewhere.com', 'bu78WW3t', '972-233-6456',
	'13045 Flora', 'Dallas', 'TX', '75224');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Pearson', 'Bobbi', 'Bobbi.Pearson@elsewhere.com', 'kq6N2O0p', '512-974-3344',
	'43 West 23rd Street', 'Austin', 'TX', '78710');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Ranger', 'Terry', 'Terry.Ranger@somewhere.com', 'bv3F9Qc4', '512-974-4455',
	'56 East 18th Street', 'Austin', 'TX', '78712');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Tyler', 'Jenny', 'Jenny.Tyler@somewhere.com', 'Yu4be77Z', '972-233-6567',
	'14056 South Ervay Street', 'Dallas', 'TX', '75225');
INSERT INTO CUSTOMER VALUES(seqCID.nextVal, 
	'Wayne', 'Joan', 'Joan.Wayne@elsewhere.com', 'JW4TX6g', '817-871-8245',
	'1660 South Aspen Drive', 'Fort Worth', 'TX', '76115');


/* ****   SEMINAR   **************************************************************/

INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('12-OCT-2019 11:00:00', 'DD-MON-YYYY HH24:MI:SS'), 'San Antonio Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('26-OCT-2019 16:00:00', 'DD-MON-YYYY HH24:MI:SS'), 'Dallas Convention Center',
	'Kitchen on a Medium Budget');
INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('02-NOV-2019 08:00:00', 'DD-MON-YYYY HH24:MI:SS'), 'Austin Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('22-MAR-2020 11:00:00', 'DD-MON-YYYY HH24:MI:SS'), 'Dallas Convention Center',
	'Kitchen on a Medium Budget');
INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('23-MAR-2020 11:00:00', 'DD-MON-YYYY HH24:MI:SS'), 'Dallas Convention Center',
	'Kitchen on a Medium Budget');
INSERT INTO SEMINAR VALUES(seqSID.nextVal, 
	TO_DATE('05-APR-2020 08:30:00', 'DD-MON-YYYY HH24:MI:SS'), 'Austin Convention Center',
	'Kitchen on a Budget');


/* ****   SEMINAR_CUSTOMER DATA   ************************************************/

INSERT INTO SEMINAR_CUSTOMER VALUES(1, 1);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 2);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 3);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 4);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 5);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 8);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 9);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 10);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 11);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 12);


/* ****   PRODUCT DATA   *********************************************************/

INSERT INTO PRODUCT VALUES(
	'VK001', 'Video', 'Kitchen Remodeling Basics',14.95, 50);
INSERT INTO PRODUCT VALUES(
	'VK002', 'Video', 'Advanced Kitchen Remodeling', 14.95, 35);
INSERT INTO PRODUCT VALUES(
	'VK003', 'Video', 'Kitchen Remodeling Dallas Style', 19.95, 25);
INSERT INTO PRODUCT VALUES(
	'VK004', 'Video', 'Heather Sweeney Seminar Live in Dallas on 25-OCT-18', 24.95, 20);
INSERT INTO PRODUCT VALUES(
	'VB001', 'Video Companion', 'Kitchen Remodeling Basics', 7.99, 50);
INSERT INTO PRODUCT VALUES(
	'VB002', 'Video Companion', 'Advanced Kitchen Remodeling I',7.99, 35);
INSERT INTO PRODUCT VALUES(
	'VB003', 'Video Companion', 'Kitchen Remodeling Dallas Style', 9.99, 25);
INSERT INTO PRODUCT VALUES(
	'BK001', 'Book', 'Kitchen Remodeling Basics For Everyone', 24.95, 75);
INSERT INTO PRODUCT VALUES(
	'BK002', 'Book', 'Advanced Kitchen Remodeling For Everyone', 24.95, 75);
INSERT INTO PRODUCT VALUES(
	'BK003', 'Book', 'Kitchen Remodeling Dallas Style For Everyone', 24.95, 75);

/* ****   INVOICE DATA    **************************************************/

/* ****   Invoice 35000   **************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('15-Oct-2019', 'DD-MON-YYYY'), 3, 'VISA', 22.94, 5.95, 1.31, 30.20);
INSERT INTO LINE_ITEM VALUES(35000, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35000, 2, 'VB001', 1, 7.99, 7.99);

/* ****   Invoice 35001   **************************************************/
-- 'Susan.Baker@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('25-Oct-2019', 'DD-MON-YYYY'), 4, 'MasterCard', 47.89, 5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35001, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35001, 2, 'VB001', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35001, 3, 'BK001', 1, 24.95, 24.95);

/* ****   Invoice 35002   **************************************************/
-- 'Sally.George@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('20-Dec-2019', 'DD-MON-YYYY'), 7, 'VISA', 24.95, 5.95, 1.42, 32.32);
INSERT INTO LINE_ITEM VALUES(35002, 1, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35003   **************************************************/
-- 'Susan.Baker@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('25-Mar-2020', 'DD-MON-YYYY'), 4, 'MasterCard', 64.85, 5.95, 3.70, 74.50);
INSERT INTO LINE_ITEM VALUES(35003, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35003, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35003, 3, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35004   ***************************************************/
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('27-Mar-2020', 'DD-MON-YYYY'), 6, 'MasterCard', 94.79, 5.95, 5.40, 106.14);
INSERT INTO LINE_ITEM VALUES(35004, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35004, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35004, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35004, 4, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35004, 5, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35005   ***************************************************/
-- 'Sally.George@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('27-Mar-2020', 'DD-MON-YYYY'), 7, 'MasterCard', 94.80, 5.95, 5.40, 106.15);
INSERT INTO LINE_ITEM VALUES(35005, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35005, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35005, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35005, 4, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35006   ***************************************************/
-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('31-Mar-2020', 'DD-MON-YYYY'), 9, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35006, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35006, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35006, 3, 'VB001', 1, 7.99, 7.99);

/* ****   Invoice 35007   ***************************************************/
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('03-Apr-2020', 'DD-MON-YYYY'), 11, 'MasterCard', 109.78, 5.95, 6.26, 121.99);
INSERT INTO LINE_ITEM VALUES(35007, 1, 'VK003', 2, 19.95, 39.90);
INSERT INTO LINE_ITEM VALUES(35007, 2, 'VB003', 2, 9.99, 19.98);
INSERT INTO LINE_ITEM VALUES(35007, 3, 'VK004', 2, 24.95, 49.90);

/* ****   Invoice 35008   ***************************************************/
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('08-Apr-2020', 'DD-MON-YYYY'), 5, 'MasterCard', 47.89, 5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35008, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35008, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35008, 3, 'VB001', 1, 7.99, 7.99);

/* ****   Invoice 35009   ***************************************************/
-- 'Nancy.Jacobs@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('08-Apr-2020', 'DD-MON-YYYY'), 1, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35009, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35009, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35009, 3, 'VB001', 1, 7.99, 7.99);

/* ****   Invoice 35010   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('23-Apr-2020', 'DD-MON-YYYY'), 3, 'VISA', 24.95,	5.95, 1.42, 32.32);
INSERT INTO LINE_ITEM VALUES(35010, 1, 'BK001', 1, 24.95, 24.95);

/* ****   Invoice 35011   ***************************************************/
-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('07-May-2020', 'DD-MON-YYYY'), 9, 'VISA', 22.94,	5.95, 1.31, 30.20);
INSERT INTO LINE_ITEM VALUES(35011, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35011, 2, 'VB002', 1, 7.99, 7.99);

/* ****   Invoice 35012   ***************************************************/
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('21-May-2020', 'DD-MON-YYYY'), 8, 'MasterCard', 54.89, 5.95, 3.13, 63.97);
INSERT INTO LINE_ITEM VALUES(35012, 1, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35012, 2, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35012, 3, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35013   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('05-Jun-2020', 'DD-MON-YYYY'), 3, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35013, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35013, 2, 'VB002', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35013, 3, 'BK002', 1, 24.95, 24.95);

/* ****   Invoice 35014   ***************************************************/
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('05-Jun-2020', 'DD-MON-YYYY'), 11, 'MasterCard', 45.88, 5.95, 2.62, 54.45);
INSERT INTO LINE_ITEM VALUES(35014, 1, 'VK002', 2, 14.95, 29.90);
INSERT INTO LINE_ITEM VALUES(35014, 2, 'VB002', 2, 7.99, 15.98);

/* ****   Invoice 35015   ***************************************************/
-- 'Joan.Wayne@elsewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('05-Jun-2020', 'DD-MON-YYYY'), 12, 'MasterCard', 94.79, 5.95, 5.40, 106.14);
INSERT INTO LINE_ITEM VALUES(35015, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35015, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35015, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35015, 4, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35015, 5, 'VK004', 1, 24.95, 24.95);

/* ****   Invoice 35016   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(seqIID.nextVal, 
	TO_DATE('05-Jun-2020', 'DD-MON-YYYY'), 3, 'VISA', 45.88,	5.95, 2.62, 54.45);
INSERT INTO LINE_ITEM VALUES(35016, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35016, 2, 'VB001', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35016, 3, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35016, 4, 'VB002', 1, 7.99, 7.99);

/* **************************************************************************/
