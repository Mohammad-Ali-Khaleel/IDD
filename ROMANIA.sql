/*    https://www.anm.ro/nomenclator/medicamente
EXPORT EXCEL SHEET [nomenclator.xlsx]
IMPORT INTO IDD_0 : [Denumire comerciala] AS TRADE_NAME, [DCI] AS AI, [Cod ATC] AS ATC_CODE
THEN CONITNUE THE FOLLWOING CODE:
*************************************************************/


update IDD_0
	 set AI_2= replace (AI ,'+' , ' / ')
  FROM IDD_0
  where country = 'ROMANIA'
  go


 --REMOVE OUTSIDE THE BRACKETS, (EXTRACT ONLY INSIDE BRACKETS) 
update IDD_0
	 set AI_2= CASE WHEN CHARINDEX('(' , AI_2)>0 AND  CHARINDEX(')' , AI_2)>0 THEN SUBSTRING(AI_2,CHARINDEX('(',
		 AI_2)+1,CHARINDEX(')',AI_2)-CHARINDEX('(',AI_2)-1) ELSE AI_2 end 
FROM IDD_0
where country = 'ROMANIA'
go



update IDD_0
	 set AI_2= NULL
  FROM IDD_0
  where country = 'ROMANIA'
  AND AI_2 = 'COMBINATII';
  
  -----------------------------------------------

update IDD_0
	 set TRADE_NAME_2= trade_name
  FROM IDD_0
  where country = 'ROMANIA'
 

 

-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'ROMANIA'
  go

-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'ROMANIA'
  go
--
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
where country = 'ROMANIA'			
    SET @Counter  = @Counter  + 1			
END			
	

 --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'ROMANIA'
	
go
---------------------------------------------------------------------------

		
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'ROMANIA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'ROMANIA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'ROMANIA' ; 

