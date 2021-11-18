/*  https://www.fda.gov/drugs/drug-approvals-and-databases/drugsfda-data-files
https://www.fda.gov/drugs/drug-approvals-and-databases/national-drug-code-directory

LAST UPDATED June 22,  2021
IMPORT NDC , DRUGS@FDA DATABASES INTO MS ACCESS DATABASE, AND RUN THE DOLLOWING QUERY IN ACCESS:
--------------
SELECT DISTINCT *
FROM (SELECT Product_NDC.PRODUCTID, Product_NDC.PRODUCTNDC, Product_NDC.PROPRIETARYNAME, Product_NDC.NONPROPRIETARYNAME, Product_NDC.SUBSTANCENAME, "NCD" AS SOURCE
FROM Product_NDC
union 

SELECT [Products_@FDA].ApplNo, [Products_@FDA].ApplNo, [Products_@FDA].DrugName, [Products_@FDA].ActiveIngredient , "" , "DRUGS@FDA" 
FROM   [Products_@FDA]
)  AS [%$##@_Alias];

------------------
EXPORT THE RESULT INTO SQL SERVER AND CONTINUE HTE FOLLOWING CODS
***************************************************************************/

INSERT INTO IDD_0
               (TRADE_NAME, AI, OTHER_NAME,  Country)
SELECT  DISTINCT [PROPRIETARYNAME], [NONPROPRIETARYNAME], [SUBSTANCENAME], 'USA'
FROM     USA;


update IDD_0
	 set AI_2= replace (AI ,';' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go


update IDD_0
	 set AI_2= replace (AI ,';' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go

update IDD_0
	 set AI_2= replace (AI_2 ,';' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go

update IDD_0
	 set AI_2= replace (AI_2 ,';' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go

  
update IDD_0
	 set AI_2= replace (AI_2 ,',' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go

   
update IDD_0
	 set AI_2= replace (AI_2 ,',' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go
   
update IDD_0
	 set AI_2= replace (AI_2 ,',' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go
   
update IDD_0
	 set AI_2= replace (AI_2 ,',' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go


  update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go

  
  update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go

  
  update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go

  
  update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
-----------------------
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
where country = 'USA'			
    SET @Counter  = @Counter  + 1			
END			
GO			

  -------------------------------------------------------------------
  

update IDD_0
	 set OTHER_NAME_2= OTHER_NAME
  FROM IDD_0
  where country = 'USA'
  go
  -------



update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,',' , ' ')
  FROM IDD_0
  where country = 'USA'
  go

  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,';' , ' / ')
  FROM IDD_0
  where country = 'USA'
  go
  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,',' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,',' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,',' , ' ')
  FROM IDD_0
  where country = 'USA'
  go

   
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
   
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
   
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
  
   
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'
  go
  
   
update IDD_0
	 set OTHER_NAME_2= NULL 
  where country = 'USA' AND OTHER_NAME_2 ='' OR OTHER_NAME_2 =' '
  go

  
update IDD_0
	 set OTHER_NAME= NULL
  FROM IDD_0
  where country = 'USA' AND OTHER_NAME_2 IS NULL
  go
  ---------------------------------------------------------------
  
update IDD_0
	 set trade_name_2= TRADE_NAME
  FROM IDD_0
  where country = 'USA'
  go

  --------------------------------
    DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 4)
BEGIN
update IDD_0
	 set TRADE_NAME_2= replace (trade_name_2 ,'-' , ' ')
  FROM IDD_0
  where country = 'USA'

  update IDD_0
	 set TRADE_NAME_2= replace (trade_name_2 ,',' , ' / ')
  FROM IDD_0
  where country = 'USA'
 
  update IDD_0
	 set TRADE_NAME_2= replace (trade_name_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'USA'


  SET @Counter  = @Counter  + 1
END
go
  ------------
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
where country = 'USA'
    SET @Counter  = @Counter  + 1
END
go
---------------
	
 ----------------	
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX	
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 	
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX	
	
    	
	
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'USA'
	
	
UPDATE IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')) where Country = 'USA' ;
