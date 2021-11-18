/** https://vapris.vvkt.lt/vvkt-web/public/medications
https://vapris.vvkt.lt/vvkt-web/public/medications/export
>> medExport.csv >> Pilnas vaistinių preparatų sąrašas pakuočių lygyje >>Complete list of medicinal products at package level
[Preparato (sugalvotas) pavadinimas] FIELD AS TRADE_NAME, [Veiklioji (-osios) medžiaga (-os)] FIELD AS other_name,
[Pavadinimas anglų kalba] as AI, [ATC kodas] AS ATC_CODE
******************************************************************/




update IDD_0
	 set AI_2= replace (AI ,', ' , ' / ')
  FROM IDD_0
  where country = 'Lithuania'
  go

  
update IDD_0
	 set AI_2= replace (AI_2 ,' and ' , ' / ')
  FROM IDD_0
  where country = 'Lithuania'
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
where country = 'Lithuania'
    SET @Counter  = @Counter  + 1
END
--------------------------------------------------------------
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


update IDD_0
	 set TRADE_NAME_2= Trade_name
  FROM IDD_0
  where country = 'Lithuania'
  go
  --REMOVE BRACKETS
  UPDATE IDD_0  -- 
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('[', TRADE_NAME_2) > 0 AND CHARINDEX(']', TRADE_NAME_2) > 0 AND CHARINDEX('[', TRADE_NAME_2) < CHARINDEX(']', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('[', TRADE_NAME_2), (CHARINDEX(']', TRADE_NAME_2) - CHARINDEX('[', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where country = 'Lithuania'
go
-----------------------------
 

  UPDATE IDD_0  -- 10 TIMES
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where country = 'Lithuania'
go
-------------

-----------------------------

update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'-' , ' ')
  FROM IDD_0
  where country = 'Lithuania'
  go
  -------

update IDD_0
	 set OTHER_NAME_2=OTHER_NAME 
  FROM IDD_0
  where country = 'Lithuania'
  go



update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'/' , ' / ')
  FROM IDD_0
  where country = 'Lithuania'
  go


update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Lithuania'
  go

  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Lithuania'
  go
