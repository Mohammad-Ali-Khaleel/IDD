/*** https://www.gob.mx/cms/uploads/attachment/file/534996/Listado_de_medicamentos_de_Referencia_.pdf

Precios_de_medicamentos_de_patente_2005_2014.csv
Precios_de_medicamentos_de_patente_2005_2016.csv
Producto AS TRADE_NAME, Principio_activo AS AI
TRANSLATE AI TO ENGLISH, BY GOOGLE SHEETS API (GOOGLETRANSLATE(B1, "ES", "EN"), THEN CONTINUE THE DOLLOWING CODE
***************************************************/
UPDATE IDD_0
SET        OTHER_NAME = MEXICO_TRANLATION_22.EN
FROM     IDD_0 INNER JOIN
               MEXICO_TRANLATION_22 ON IDD_0.AI_2 = MEXICO_TRANLATION_22.ES
WHERE   (IDD_0.Country = N'MEXICO')
 ---------------
 UPDATE IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
 WHERE COUNTRY = 'MEXICO'
 --------------
update IDD_0
	 set AI_2= AI 
  FROM IDD_0
  where country = 'Mexico'
  go

  ----------------------------------------------------------------------------------------

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
where country = 'Mexico'
    SET @Counter  = @Counter  + 1
END

---------------------------------

UPDATE IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
 WHERE COUNTRY = 'MEXICO'

 
UPDATE IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
 WHERE COUNTRY = 'MEXICO'

 
 Update IDD_0
	 set AI_2= replace (AI_2 ,'/' , ' / ')

 Update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
 Update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
 Update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')


UPDATE IDD_0 SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
 WHERE COUNTRY = 'MEXICO'

 --------------
update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'-' , ' ')
  FROM IDD_0
  where country = 'Mexico'
  go
  ---------------------
  update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'.' , ' ')
  FROM IDD_0
  where country = 'Mexico'
  go
  