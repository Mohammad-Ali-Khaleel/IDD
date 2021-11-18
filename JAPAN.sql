/** https://www.pmda.go.jp/english/review-services/reviews/approved-information/drugs/0002.html
DOWNLOAD PDF FILES OF LISTS OF APPROVED DRUGS, 2004-2020, EXTRACT TRADE_NAME AND AI, THEN COMPLETE THE FOLLOWING CODE:
*************************************************************/



update IDD_0
	 set AI_2= replace (AI ,'/' , ' / ')
  FROM IDD_0
  where country = 'Japan'
  go


  DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN

UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '  ' ,  ' ')  where Country = 'JAPAN' ; 


UPDATE IDD_0
SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
where Country = 'JAPAN' ;


SET @Counter  = @Counter  + 1  END

--------------------------------------------


update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME ,'-' , ' ')
  FROM IDD_0
  where country = 'Japan'
  go


  

  DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN

UPDATE IDD_0 SET trade_name_2  =  replace (trade_name_2, '  ' ,  ' ')  where Country = 'JAPAN' ; 


UPDATE IDD_0
SET trade_name_2 =TRIM(REPLACE(REPLACE(REPLACE(trade_name_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
where Country = 'JAPAN' ;


SET @Counter  = @Counter  + 1  END