/**   https://www.ema.europa.eu/sites/default/files/Medicines_output_european_public_assessment_reports.xlsx
FILTER HUMAN CATEGORY, [Medicine name] AS TRADE_NAME, [Active substance] AS AI

******************************************************************************************/

update IDD_0
	 set AI_2= replace (AI ,'-' , ' ')
  FROM IDD_0
  where country = 'Europa'
  go


 --REMOVE BRACKETS
 DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
 UPDATE IDD_0  -- 10 TIMES
SET AI_2 = CASE 
		WHEN CHARINDEX('(', AI_2) > 0 AND CHARINDEX(')', AI_2) > 0 AND CHARINDEX('(', AI_2) < CHARINDEX(')', AI_2) 
			THEN STUFF(AI_2, CHARINDEX('(', AI_2), (CHARINDEX(')', AI_2) - CHARINDEX('(', AI_2)) + 1, '')
		ELSE AI_2
	END
where country = 'Europa'
    SET @Counter  = @Counter  + 1
END
--------------------------------------------------



update IDD_0
	 set AI_2= replace (AI_2 ,', ' , ' / ')
  FROM IDD_0
  where country = 'Europa'
  go

 ----------------------------------------------------- 


update IDD_0
	 set AI_2= replace (AI_2 ,', ' , ' / ')
  FROM IDD_0
  where country = 'Europa'
  go
-----------------------------------------------------

   DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
 UPDATE IDD_0  -- 10 TIMES
SET AI_2 = CASE 
		WHEN CHARINDEX('(', AI_2) > 0 AND CHARINDEX(')', AI_2) > 0 AND CHARINDEX('(', AI_2) < CHARINDEX(')', AI_2) 
			THEN STUFF(AI_2, CHARINDEX('(', AI_2), (CHARINDEX(')', AI_2) - CHARINDEX('(', AI_2)) + 1, '')
		ELSE AI_2
	END
where country = 'Europa'
    SET @Counter  = @Counter  + 1
END
-----------------------------------------

update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'/' , ' / ')
  FROM IDD_0
  where country = 'Europa'
  go
------

 --REMOVE BRACKETS
 DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
 UPDATE IDD_0  -- 10 TIMES
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where country = 'Europa'
    SET @Counter  = @Counter  + 1
END
------------------------------------------------------------------------------------------------------------
update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,',' , '')
  FROM IDD_0
  where country = 'Europa'
  go
  
  --------------------------------------------