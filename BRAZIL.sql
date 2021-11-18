/**  
https://dados.gov.br/dataset/933159db-7f90-4227-adbf-a100280902b4/resource/27cdec36-a735-4c09-a9ab-3ed4e5876d8c
https://dados.gov.br/ro/dataset/ef3d5f8b-1661-4381-a369-4aed487bf313/resource/14d7b17c-ebdf-4f1c-99c4-dd235bca7b45
https://dados.gov.br/dataset/medicamentos-registrados-no-brasil

EXTRACE AI,TRADE_NAME AND ATC_CODE
AFTER CLEANING AI_2, SELECT DISTINCT AI_2 , PAST TO GOOGLE SHEET, TRANSLATE FROM Portuguese TO ENGLISH
BY USING (=GOOGLETRANSLATE(A1, "pt-BR", "en")), UPDATE IN ALTERNATIVE FILED AS [OTHER_NAME_2] 

ALSO DO THE SAME WITH PASTING IT TO MICROSOFT WORD DOCUMENT WITH 365 SUBSCRIPTION, DO TRANSLATE TO ENGLISH, UPDATE THE TABLE WITH 
ALTERNATE ENGLISH TRANSLATION IN THE FIELD [OTHER_NAME]

****************************************************************************************************************/

--UPDATE GOOGLE TRANSLATION
UPDATE  IDD_0
SET OTHER_NAME_2 = [BRAZIL_TRANSLATION].EN
FROM     [BRAZIL_TRANSLATION] INNER JOIN
               IDD_0 ON [BRAZIL_TRANSLATION-].pt = IDD_0.AI_2 
			   WHERE COUNTRY ='BRAZIL'


--UPDATE MICROSOFT TRANSLATION			   
UPDATE IDD_0
SET        OTHER_NAME = EN
FROM     PT_BR_TRANSLATION INNER JOIN
               IDD_0 ON PT_BR = AI_2
WHERE   (IDD_0.Country = N'BRAZIL')
------------------------------------



update IDD_0
	SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI)
where country = 'BRAZIL'
---------------------------------------------------------------------------[dbo].[Columbia_Bolivia_Jun Update]
update IDD_0
	 set AI_2= replace (AI_2 ,' + ' , ' / ')
  FROM IDD_0
  where country = 'BRAZIL'
  go

--------------
UPDATE IDD_0
SET trade_name_2 = replace (TRADE_NAME ,'®' , '')
where Country = 'BRAZIL' ;
go
----------------------------------------
--AFTER CLEANING AI_2, COPY COLUMN, SSELECT DISTINCT, THEN COPY AND PAST IN GOOGLE SHEET DOCUMENT, TRASLATE THROUGH 
--GOOGLE api FROM Portuguese (Brazil) TO ENGLISH, EXPORT HERE AS ANOTHER TABLE CALLED PT_BR_TRNSLATION 

UPDATE IDD_0
SET        OTHER_NAME = EN
FROM     PT_BR_TRANSLATION INNER JOIN
               IDD_0 ON PT_BR = AI_2
WHERE   (IDD_0.Country = N'BRAZIL')
------------------------------------
