/* Part C of Exhibit B (Ask professor about looking up contract associated with project) */
SELECT PROJECTNUMBER, PROJECTADDRESS, PROJECTDESCRIPTION FROM PROJECT Where PROJECTNUMBER = 'IL-SJB-335-005';


-- SELECT QUERY Data for EXHIBIT C - Part C -Detailed Pay Scale Breakdown for Regular Hours (Overtime =1.5 X the Basic Rate)
SELECT SKILLCODE, SKILLCLASSIFICATION, BASICHOURLYRATE, FRINGE, BASICHOURLYRATE + FRINGE
    AS Total_Compensation FROM SKILL ORDER BY SKILLID;