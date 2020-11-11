SELECT * FROM PARK WHERE DateCompleted ='10-Dec-10';
ALTER SESSION SET nls_date_format  =  'yy/mm/dd';


SELECT *
FROM nls_session_parameters
WHERE parameter = 'NLS_DATE_FORMAT';