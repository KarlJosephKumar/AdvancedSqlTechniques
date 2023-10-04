----Exercise 1 Question 1:
Select CPS.NAME_OF_SCHOOL, CPS.COMMUNITY_AREA_NAME, CPS.AVERAGE_STUDENT_ATTENDANCE 
FROM CHICAGO_PUBLIC_SCHOOLS CPS 
LEFT JOIN CHICAGO_CENSUS_DATA CCD 
ON CPS.COMMUNITY_AREA_NUMBER = CCD.COMMUNITY_AREA_NUMBER 
WHERE CCD.HARDSHIP_INDEX = 98;

----Exercise 1 Question 2:
Select CCRD.CASE_NUMBER, CCRD.PRIMARY_TYPE, CCD.COMMUNITY_AREA_NAME 
FROM CHICAGO_CRIME_DATA CCRD 
LEFT JOIN CHICAGO_CENSUS_DATA CCD 
ON CCRD.COMMUNITY_AREA_NUMBER = CCD.COMMUNITY_AREA_NUMBER
WHERE CCRD.LOCATION_DESCRIPTION like '%SCHOOL%';

----Exercise 2 Question 1:
Create view CHICAGO_PUBLIC_SCHOOLS_VIEW 
(School_Name, Safety_Rating, Family_Rating, Environment_Rating, Instruction_Rating, Leaders_Rating, Teachers_Rating)
AS SELECT NAME_OF_SCHOOL, Safety_Icon, Family_Involvement_Icon, Environment_Icon, Instruction_Icon, Leaders_Icon, Teachers_Icon
FROM CHICAGO_PUBLIC_SCHOOLS;

SELECT * FROM CHICAGO_PUBLIC_SCHOOLS_VIEW;

SELECT School_Name, Leaders_Rating FROM CHICAGO_PUBLIC_SCHOOLS_VIEW;

----Exercise 3 Stored Procedure complete
--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_LEADERS_SCORE
(IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
LANGUAGE SQL
MODIFIES SQL DATA
BEGIN
	UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Score = in_Leader_Score
	WHERE SCHOOL_ID = in_School_ID;
	
	IF in_Leader_Score >= 80 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Very strong'
		WHERE SCHOOL_ID = in_School_ID;
	
	ELSEIF in_Leader_Score >= 60 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Strong'
		WHERE SCHOOL_ID = in_School_ID;
		
	ELSEIF in_Leader_Score >= 40 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Average'
		WHERE SCHOOL_ID = in_School_ID;
		
	ELSEIF in_Leader_Score >= 20 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Weak'
		WHERE SCHOOL_ID = in_School_ID; 
	
	ELSE
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Very Weak'
		WHERE SCHOOL_ID = in_School_ID;
	END IF;
END
@
Alter table CHICAGO_PUBLIC_SCHOOLS Alter Column Leaders_Icon SET DATA TYPE VARCHAR(11);
call UPDATE_LEADERS_SCORE(400018, 50);
Select School_ID, Leaders_Icon, Leaders_Score from CHICAGO_PUBLIC_SCHOOLS where School_ID = 400018;

----Exercise 4 Transactions added to the stored procedure
Drop PROCEDURE UPDATE_LEADERS_SCORE;
--#SET TERMINATOR @
CREATE PROCEDURE UPDATE_LEADERS_SCORE
(IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
LANGUAGE SQL
MODIFIES SQL DATA
BEGIN
	UPDATE CHICAGO_PUBLIC_SCHOOLS SET Leaders_Score = in_Leader_Score
	WHERE SCHOOL_ID = in_School_ID;
	
	IF in_Leader_Score >= 80 AND in_Leader_Score < 100 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Very strong'
		WHERE SCHOOL_ID = in_School_ID;
	
	ELSEIF in_Leader_Score >= 60 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Strong'
		WHERE SCHOOL_ID = in_School_ID;
		
	ELSEIF in_Leader_Score >= 40 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Average'
		WHERE SCHOOL_ID = in_School_ID;
		
	ELSEIF in_Leader_Score >= 20 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Weak'
		WHERE SCHOOL_ID = in_School_ID; 
	
	ELSEIF in_Leader_Score >= 0 THEN
		UPDATE CHICAGO_PUBLIC_SCHOOLS
		SET Leaders_Icon = 'Very Weak'
		WHERE SCHOOL_ID = in_School_ID;
	END IF;
	IF in_Leader_Score BETWEEN 0 AND 100 THEN
		COMMIT WORK;
	ELSE
		ROLLBACK WORK;
	END IF;
END
@

Select School_ID, Leaders_Icon, Leaders_Score from CHICAGO_PUBLIC_SCHOOLS where School_ID = 400018;
call UPDATE_LEADERS_SCORE(400018, 500);
Select School_ID, Leaders_Icon, Leaders_Score from CHICAGO_PUBLIC_SCHOOLS where School_ID = 400018;