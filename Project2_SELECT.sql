/* Part C of Exhibit B (Ask professor about looking up contract associated with project) */
SELECT PROJECTNUMBER, PROJECTADDRESS, PROJECTDESCRIPTION FROM PROJECT Where PROJECTNUMBER = 'IL-SJB-335-005';


-- SELECT QUERY Data for EXHIBIT C - Part C -Detailed Pay Scale Breakdown for Regular Hours (Overtime =1.5 X the Basic Rate)
SELECT SKILLCODE, SKILLCLASSIFICATION, BASICHOURLYRATE, FRINGE, BASICHOURLYRATE + FRINGE
    AS Total_Compensation FROM SKILL ORDER BY SKILLID;

-- Exhibit D, Part D
-- 1 employee
-- Each skill
    -- Aggregate total hours
    -- Calculate gross
    -- Calculate total (rate + fringe)

-- Group by skill code
-- TODO: Verify that we can see all other skills codes for the employee
-- TODO: Show other employees. We only have one.
SELECT SSN, SKILLCODE, BASICHOURLYRATE, FRINGE, BASICHOURLYRATE + FRINGE AS TOTAL, SUM((ENDTIME-STARTTIME)*24) AS HOURS, (BASICHOURLYRATE + FRINGE) * SUM((ENDTIME-STARTTIME)*24) AS GROSSPAY
FROM EMPLOYEE
JOIN TIME_CARD ON EMPLOYEE.EMPLOYEEID = TIME_CARD.EMPLOYEEID
JOIN SKILL S on S.SKILLID = TIME_CARD.SKILLID
GROUP BY SSN, SKILLCODE, BASICHOURLYRATE, FRINGE;

-- Exhibit E
-- TODO: Update DOB date format˚
SELECT SSN, LASTNAME, FIRSTNAME, MI, STREET, CITY, STATE, ZIP, PHONE, DOB, GENDER, MARITALSTATUS, EEOTYPE
FROM EMPLOYEE
WHERE EmployeeID = 1;

-- Exhibit F, Regular Pay
-- Project, Skill






