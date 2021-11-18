/**  https://www.legemiddelsok.no/
EXPORT EXCEL FILE [Eksporter resultater til],  
[Handelsnavn] AS TRADE_NAME, [Virkestoff] AS AI
SELECT DISTINCT, TRANSLATE AI THROGH GOOGLE SHEETS() FROM Norwegian TO ENGLISH
THEN INSERT TO IDD_0 IN SQL SERVER
***************************************************************/



update IDD_0
	 set AI_2= replace (AI ,';  ' , ' / ')
  FROM IDD_0
  where country = 'Norway'
  go

  

update IDD_0
	 set AI_2= replace (AI_2 ,'; ' , ' / ')
  FROM IDD_0
  where country = 'Norway'
  go
---------------------------------------------------------------------------


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
where country = 'Norway'
    SET @Counter  = @Counter  + 1
END
------------
update IDD_0
	 set TRADE_NAME_2= TRADE_NAME 
	 FROM IDD_0
  where country = 'Norway'
--------------------------------------------------------------------------
 DELETE FROM IDD_0
WHERE   (Country = N'NORWAY')
and RIGHT (trade_name, 3) = 'vet'
--------------------------------------------
UPDATE IDD_0
SET        OTHER_NAME = Norwegian_TRANSLATION.EN
FROM     Norwegian_TRANSLATION INNER JOIN
               IDD_0 ON Norwegian_TRANSLATION.NO = IDD_0.AI_2
WHERE   (IDD_0.Country = N'NORWAY')