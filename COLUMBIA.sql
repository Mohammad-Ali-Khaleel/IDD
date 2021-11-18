/**https://datos.gov.co/en/ >> https://www.minsalud.gov.co/sites/rid/Lists/BibliotecaDigital/RIDE/VS/MET/Informacion-estandarizada-cargue-inicial.zip

1. FILTER FIELD FormaComercializacion TO "2 - MARCA".
2. MarcaSignoDistintivoComercial FIELD AS TRADE_NAME.
3. NombrePrincipioActivo FIELD AS AI_2.
4. SELECT DISTINCT TRADE_NAME + AI_2.
5. COPY AI FILED INTO GOOGLE SHEET, TRANSLATE THE TABLE TO ENGLSH, UPDATE AI FILED WITH ENGLISH TRANSLATION.

6. MERGE THE MULTIEGRIEDIENT TRADE_NAME BY THE FOLLWING CODE      */
 
with CTE_1 as(
SELECT distinct  AI = 
STUFF((SELECT DISTINCT ' / ' + AI_2
FROM [Columbia_Bolivia_Jun Update_2] b
where  b.Trade_name = a.Trade_name
FOR XML PATH('')), 1, 2, ''),Trade_name
from [Columbia_Bolivia_Jun Update_2] a
where country ='columbia'
group by  Trade_name) ,

  CTE_2 as	(
SELECT distinct  AI = 
 STUFF((SELECT DISTINCT ' / ' + AI_1
FROM [Columbia_Bolivia_Jun Update_2] c
where  c.Trade_name = d.Trade_name
FOR XML PATH('')), 1, 2, ''),Trade_name
from [Columbia_TABLE] d --[Columbia_Bolivia_Jun Update_2]
where country ='columbia'
group by  Trade_name)

select CTE_1.AI AI, CTE_2.AI AI_2, CTE_1.Trade_name 
into COLUMBIA_TABLE_2 from CTE_1 inner join CTE_2 on cte_1.trade_name = cte_2.trade_name


INSERT INTO IDD_0
               (Country , AI, TRADE_NAME, Final_AI)
SELECT  'COLUMBIA', AI, Trade_name, AI_2
FROM     COLUMBIA_JUN_UPDATE
where AI is not null


---------------------------------------------------------
-- 7. DO SOME CLEANIING 


UPDATE IDD_0
SET TRADE_NAME_2 = REPLACE (TRADE_NAME ,'_' , ' ')
FROM IDD_0
WHERE COUNTRY = 'COLUMBIA'
AND TRADE_NAME LIKE '%_%'  


UPDATE IDD_0
SET TRADE_NAME_2 = REPLACE (TRADE_NAME ,'-' , ' ')
FROM IDD_0
WHERE COUNTRY = 'COLUMBIA'
AND TRADE_NAME LIKE '%-%'  

-------------------------------

---------------------------------------

UPDATE IDD_0
SET OTHER_NAME = DBO.CLEARNUMERICCHARACTERS (TRADE_NAME_2)
FROM IDD_0
WHERE COUNTRY = 'COLUMBIA'
  
  -------------

  -- WHITE SPACES
UPDATE IDD_0
SET OTHER_NAME =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(OTHER_NAME, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
WHERE COUNTRY = 'COLUMBIA' ;
GO

