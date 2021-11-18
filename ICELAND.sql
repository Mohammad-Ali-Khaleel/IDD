/**   https://www.lyfjastofnun.is/utgefid-efni/listar/
lyf-med-markadsleyfi-x.xls
brottfall-afskraningar-2017-2020.xls
EXTRACT: TRADE_NAME, AI AND ATC_CODE, THEN CONTINUE THE CODE

*****************************************************************/




update IDD_0
	 set AI_2= replace (AI ,',' , ' / ')
  FROM IDD_0
  where country = 'ICELAND'
  go
 

 
 --WHERE   myValue COLLATE SQL_Latin1_General_CP1_CI_AS LIKE 'apple%'
update IDD_0
	 set AI_2= replace (AI_2 ,'INN' , '')
  FROM IDD_0
  where country = 'ICELAND'
  and    AI_2 COLLATE SQL_Latin1_General_CP1_CI_AS LIKE '%INN%'
  go

-----------------------------------

update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'/' , ' / ')
  FROM IDD_0
  where country = 'ICELAND'
  go

  --------------
   
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
where country = 'ICELAND'
    SET @Counter  = @Counter  + 1
END
------------------------------------------------------------------------------------------------------------
 
update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'-' , ' ')
  FROM IDD_0
  where country = 'ICELAND'
  go