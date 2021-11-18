/***********  https://extranet.infarmed.pt/INFOMED-fo/
SWITCH TO ENGLISH WEBSITE, SEARCH FOR WILDCARD %%%, EXPORT RESULTS AS lista_infomed.xlsx, 
THEN SWITCH TO PORTUGUESE WEBSITE, SEARCH FOR %%%, EXPORT RESULTS IN lista_infomed_PT.xlsx
[Substância Ativa/DCI]	AS AI, [Nome do Medicamento] AS TRADE_NAME
MATCH THE THE ENGLISH AI TRANSLATION FRON THE ENGLISH VERSION FILE, THROUGH MATCHING THE TRADE_NAME AND THE STRENGHT FIELDS IN THE 
TWO TABLES , MAKE THE ENGLISH TRANSLATIONAS THE OTHER_NAME, THEN INSERT INTO THE IDD_0 FILE IN SQL SERVER, AND CONTINUE THE FOLLWOING:

***********************************************************************/


update IDD_0
	 set AI_2= replace (AI ,' + ' , ' / ')
  FROM IDD_0
  where country = 'Portugal'
  go
  ---------------------------------------
  
update IDD_0
	 set OTHER_NAME_2= replace (OTHER_NAME ,' + ' , ' / ')
  FROM IDD_0
  where country = 'Portugal'
  go
  -------------------------


update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,' + ' , ' / ')
  FROM IDD_0
  where country = 'Portugal'
  go
----------


update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'-' , ' ')
  FROM IDD_0
  where country = 'Portugal'
  go
----------

 --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'Portugal'
	

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  ----------------