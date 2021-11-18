/**  http://www.jfda.jo/
http://www.jfda.jo/Pages/viewpage.aspx?pageID=175
http://www.jfda.jo/EchoBusV3.0/SystemAssets/Documents/AR/DRUGD/JRDL13122020(V5)%20.xlsx
IMPORT THE EXCEL TABLE AS IS TO THE SQL SERVER (VIA IMPORT EXCEL SHEET FROM SQL SERVER STUDIO)
THEN DO THE FOLLOWING:
******************************************************/


select distinct F12 as AI, TRADE_NAME,  ATC, [GENERIC_NAME]
, trim (' :.,?/`~!@#$%^&*-_=+ ' FROM VALUE)as  Splitted_Trade_name--SplitData
into JORDAN_FINAL
from JORDAN
cross apply STRING_SPLIT (TRADE_NAME, '®') cs --comma separated
where trim (' :.,?/`~!@#$%^&*-_=+ ' FROM VALUE) !=''
-------------------------------------------

INSERT INTO IDD_0
               (AI, ATC_CODE,  TRADE_NAME)
SELECT  AI, ATC,  Splitted_Trade_name
FROM     JORDAN_FINAL

-----------------
update IDD_0
	 set AI_2= replace (AI, '+' , ' / ')
  FROM IDD_0
  where country = 'JORDAN'
  go
  ---------

  --REMOVE BRACKETS
  UPDATE IDD_0  -- 10 TIMES
SET AI_2 = CASE 
		WHEN CHARINDEX('(', AI_2) > 0 AND CHARINDEX(')', AI_2) > 0 AND CHARINDEX('(', AI_2) < CHARINDEX(')', AI_2) 
			THEN STUFF(AI_2, CHARINDEX('(', AI_2), (CHARINDEX(')', AI_2) - CHARINDEX('(', AI_2)) + 1, '')
		ELSE AI_2
	END
where country = 'JORDAN'
go
-------------
 update IDD_0 SET AI_2 = TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  update IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  update IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  
  update IDD_0  set AI_2= replace (AI_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
   update IDD_0  set AI_2= replace (AI_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
    update IDD_0  set AI_2= replace (AI_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
	 update IDD_0  set AI_2= replace (AI_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';

	 
  update IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
  WHERE COUNTRY = 'JORDAN'


  -------------------

update IDD_0
	 set trade_name_2= TRADE_NAME
  FROM IDD_0
  where country = 'JORDAN'
  go


  update IDD_0
	 set trade_name_2= replace (trade_name_2, '-' , ' ')
  FROM IDD_0
  where country = 'JORDAN'
  go
  --------------------
  update IDD_0 SET TRADE_NAME_2 = TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  update IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  update IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
  WHERE COUNTRY = 'JORDAN'

  
  update IDD_0  set trade_name_2= replace (trade_name_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
   update IDD_0  set trade_name_2= replace (trade_name_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
    update IDD_0  set trade_name_2= replace (trade_name_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';
	 update IDD_0  set trade_name_2= replace (trade_name_2, '  ' , ' ')   FROM IDD_0   where country = 'JORDAN';

	 
  update IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
  WHERE COUNTRY = 'JORDAN'