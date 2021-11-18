/** https://ogyei.gov.hu/drug_database
download (Összes engedéllyel rendelkező készítmény) or All authorised preparations
tk_lista.xlsx
[Név] as trade_name, [INN] as AI, ATC AS ATC_CODE
*******************************************************************/

  --REMOVE BRACKETS
  UPDATE IDD_0  -- 
SET AI_2 = CASE 
		WHEN CHARINDEX('[', AI) > 0 AND CHARINDEX(']', AI) > 0 AND CHARINDEX('[', AI) < CHARINDEX(']', AI) 
			THEN STUFF(AI, CHARINDEX('[', AI), (CHARINDEX(']', AI) - CHARINDEX('[', AI)) + 1, '')
		ELSE AI
	END
where country = 'HUNGARY'
go
-----------------------------
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
where country = 'HUNGARY'
    SET @Counter  = @Counter  + 1
END



 UPDATE IDD_0  -- 
SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI_2)
where country = 'HUNGARY'
-----------------------------

update IDD_0
	 set AI_2= replace (AI_2 ,'; ' , ' / ')
  FROM IDD_0
  where country = 'HUNGARY'
  go
  ---------
  UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  ' , ' ') 
where Country = 'HUNGARY' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, '--' , ' ') 
where Country = 'HUNGARY' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXxx    trade_name       XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  ---------
  UPDATE IDD_0  -- 
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('[', trade_name) > 0 AND CHARINDEX(']', trade_name) > 0 AND CHARINDEX('[', trade_name) < CHARINDEX(']', trade_name) 
			THEN STUFF(trade_name, CHARINDEX('[', trade_name), (CHARINDEX(']', trade_name) - CHARINDEX('[', trade_name)) + 1, '')
		ELSE trade_name
	END
where country = 'HUNGARY'
go
-------------

update IDD_0
	 set TRADE_NAME_2=   trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM replace (TRADE_NAME_2, '-' , ' '))   
  FROM IDD_0
  where country = 'HUNGARY'
  go
  ----------------
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
 
    

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'HUNGARY'
	

	SET @Counter  = @Counter  + 1
END
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '%v/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '%w/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '%w/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '%v/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/v%' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/v%' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/w%' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/w%' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '% v/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '% w/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '% w/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '% v/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/v %' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/v %' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/w %' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/w %' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/v' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'w/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'v/w' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITS/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIT/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉS/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNITÉ/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MOLE/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MMOLE/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MG/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KG/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'G/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ML/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'L/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'IU/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UI/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MM/U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq / ml' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq /ml' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/ ml' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/ml' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq / L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq /L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/ L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/L' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq / G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq /G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/ G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq/G' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KILOGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KILOGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KILOGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KILOGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' GRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' GRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'GRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'GRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROGRAMS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROGRAM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROGRAMMES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROGRAMME' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' LITERE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' LITERES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLILETERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLILETER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLILITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLILITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROLITRES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROLITRE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROLITERS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROLITER' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UNITS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UNIT' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UNITÉS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UNITÉ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MILLIMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROMOLES' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROMOLE' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MICROMOL' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MGS' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MCG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µg' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' KG' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' G ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ML' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'µl' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' L ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' IU' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'I.U' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UI' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'U.I' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' U ' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MM' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mEq' ,  '')  where Country = 'HUNGARY' ; 

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'N°' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' PHARMA ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' par ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ENFANTS ET NOURRISSONS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' CEIP ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '.CEIP' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SANS SUCRE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' URGO ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'PIERRE FABRE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  per ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ALTER ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'unités internationales/ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'internationales/ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'internationales' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' TEVAGEN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' TEVA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'POUR CENT' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ZYDUS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ARROW' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'BIOGARAN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MYLAN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'CRISTERS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'INTSEL CHIMOS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' CHIMOS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INTSEL ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SANTE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' CONSEIL' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' BRAUN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ALMUS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' RANBAXY' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'GENERIQUES' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'BOUCHARA RECORDATI' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'BOUCHARA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'RECORDATI' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' EVOLUGEN PHARMA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'EVOLUGEN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ORCHITYN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ORION' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'BLUEFISH' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' KRKA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' AVANSOR' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' KABI' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'VITABALANS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SANDOZ' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'EBEWE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MACURE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'STRAGEN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'PFIZER' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'NORAMEDA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ACCORD' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ORION MITE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ORION SEMI' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'HAMELN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'MEDAC' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'UNIMEDIC' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ALTERNOVA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' HEXAL' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ZENTIVA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'PANPHARMA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ACTAVIS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'NAVAMEDIC' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'KALCEKS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ORIFARM' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SEKVENS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'PERIFER' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'VÄRILLINEN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'VILLERTON' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'BGR' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' STADA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ACCORD HEALTHCARE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'HEALTHCARE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' de ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'EG LABO CONSEIL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'EG LABO' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' EG ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' LABO ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SANS SUCRE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SANS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SUCRE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'HOPIRA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' LAB ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ENFANTS ET ADULTES' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ENFANTS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ET ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ADULTES' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cm' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cc ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cc.' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '&' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' abz' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ratiopharm' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Mylan ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' teva ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Heumann' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Winthrop' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'neuraxpharm' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Janssen' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Hormosan' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' dura ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' pack ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Effervescent' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Linctus' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INHALER' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' PUFF ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' nebuliser' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' dry ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ptrade_nament ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' crm' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' aqueous' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' soln ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' solution ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' gran ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' enema ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' plasters ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' applicator' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ophthalmic' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Tableti' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Tabletten' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tablety' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tablets' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tablet' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SÜSPANSIYON' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SURUP' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SPREY' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INJ ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' solution' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'EFERVESAN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SOLÜSYON' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' film ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' krem' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' gels' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SURUBU' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' KAPSUL' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ampul' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'VAJINAL OVÜL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'OVÜL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ENJEKTABL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' FLUID' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' caplets' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' caplet' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'eye ointment' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ointment' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' modified' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Sustained release' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' release' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' sterile' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' injection' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' vials' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' vial' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' innert' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' substance' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' diluent' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'for injection' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'for Oral' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' for ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' powder' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'enteric coated' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' enteric' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' caoted' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'pen devices' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'pen device' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' pen ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' devices' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' device' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' syringes' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' syringe' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' lozenges' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' lozenge' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'approximately' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' eye ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ear ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cream' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' creme' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' lotion' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' vaccine' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' vaginal' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' mouth' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' rectal' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' actuations' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' actuation' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' actuator' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cartridges' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'cartridge' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' solutions' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' DROPS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Nasal' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' BABY' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' disintegrating' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' orally' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' oral ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' intravenous' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' intramuscular' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' i.v' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' iv ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' im ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' i.m' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' topical' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' occular' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' orodispersible' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' dispersible' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' compound' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' suppository' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'inhalation' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' sachets' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' sachet' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' liquid' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' suspension' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' gél' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' kapsuly' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hard gelatin capsules' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hard gelatin capsule' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hard capsules' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hard capsule' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'soft gelatin capsules' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'soft gelatin capsule' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'soft capsules' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'soft capsule' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' capsules' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' capsule' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' hard-' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' soft-' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' hard ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' soft ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' injekcije' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' mazilo' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'tablete s podaljšanim sprošcanjem' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'filmsko obložene' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'raztopino za infundSWESSje' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' raztopino' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tablete' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' podjezicne' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' infundSWESSje' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' trde kapsule' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' kapsule' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' trde ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' COMPRIMIDOS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INYECTABLE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'DISOLVENTE PARA UNYECTABLE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' DISOLVENTE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' UNYECTABLE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INHALACIÓN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SUSPENSIÓN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'ENVASE A PRESIÓN' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' efg' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' accord' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' POLVO' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' EFERVESCENTES' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' crema' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'CAPSULAS DURAS' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' CAPSULAS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' DISPERSABLES' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' LIOFILIZADO' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' DE LIBERACION PROLONGADA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' COMPRIMIDOS DE LIBERACION PROLONGADA' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'RECUBIERTOS CON PELICULA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'COMPRIMIDOS RECUBIERTOS CON PELICULA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' EN ENVASE A PRESION' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SUBLINGUALES' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INHALACION' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' MICROGRAMOS' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' en ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' para ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'PARA SOLUCIÓN ORAL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SOLUCIÓN' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'SOLUCION ORAL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' SOLUCION' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' cap ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Subcutaneous' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' sublingual' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  s' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'film coated' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'film-coated' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' film-' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' pre-filled' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tabs' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tab ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' inj.' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'transdermal' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'sugar free' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' patches' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' patch' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ampoules' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' ampoule' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' patch ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' chewable' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' bottle' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' units' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' unit' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' hours' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' hour ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Dihydrochloride' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hydrochloride' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'maleate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'mononitrate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'acetate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'valerate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'phosphate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'hemihydrate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'fumarate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'tartarate' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'conttrade_namens' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'conttrade_namen' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'each' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'without' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'with' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '_' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' as ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' x ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' of ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '( )' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '()' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '[]' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '[ ]' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '[ ' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ']' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '!' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '@' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '#' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '*' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'unknown' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '(nos)' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' nos ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'placebo' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' tabs' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' or ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' KCL' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' nacl' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' INJEEL' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' in ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' and ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' och ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'injectables' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'injectable' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' w-v ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' w-w ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' f.c.' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '"' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ':' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '~' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '`' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '<' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '>' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '^' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '?' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '''' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' shampoo' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' liniment' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'syrup' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' bp' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' b.p' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' usp' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ',usp' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/usp' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ',BP' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/BP' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' use ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' u.s.p' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' usp ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' irrigation' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' jr ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' emulsion' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' skin ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' solvent ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' infusion' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' spray' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' za ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' oko ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' liq ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' controlled' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '™' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '®' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' gel ' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/1ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/5ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/10ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/50ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/100ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/1000ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '10ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '50ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '100ml' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Aerosol' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' Elixir' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'preparation' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' coated' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Inhalant' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Crushable' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'combinations' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'combination' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '(' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ')' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/DOSE' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '.' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' DOSE' ,  ' ')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'Filmtabletten' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '%' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'INJEEL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'APO-' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'APX' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '-AFT' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'GA-' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '- MYL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '-MYL' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '-TEVA' ,  '')  where Country = 'CUBA' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ' X ' ,  ' ')  where Country = 'CUBA' ; 

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'picosulfate' ,  'pico_S_Ulfate')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'sulfate' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'pico_S_Ulfate' ,  'picosulfate')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'sodium chloride' ,  'sod_chld')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'sodium' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'sod_chld' ,  'Sodium Chloride')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B1' ,  'B_one')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B2' ,  'B_TWO')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B6' ,  'B_SIX')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B7' ,  'B_SEV')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B12' ,  'B_TWELVE')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B_one' ,  'B1')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B_TWO' ,  'B2')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B_SIX' ,  'B6')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B_SEV' ,  'B7')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], 'B_TWELVE' ,  'B12')  where Country = 'HUNGARY' ; 
------------------------------
UPDATE IDD_0 
SET TRADE_NAME_2 = dbo.ClearNumericCharacters(TRADE_NAME_2)
where Country = 'HUNGARY' ;
go

UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'HUNGARY' ;
go

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], ',' ,  '')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '/' ,  ' / ')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '-' ,  ' ')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '+' ,  ' ')  where Country = 'HUNGARY' ; 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'HUNGARY' ; 
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,2) =' G';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) =' ML';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) =' MG';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) =' IU';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,4) =' nos';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,4) =' gel';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-6)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,6) =' jellY';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,4) =' cap';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,4) =' TAB';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,4) =' FOR';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,1) ='/';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,2) ='//';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,1) =',';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,1) ='+';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) =' ED';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) =' AN ';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) ='/ED ';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HUNGARY' and RIGHT (TRADE_NAME_2,3) ='/AN ';


UPDATE IDD_0
SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
where Country = 'HUNGARY' ;


SET @Counter  = @Counter  + 1  END

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
---Removing lowercase from Trade_name


UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('a' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('b' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('c' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('d' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('e' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('f' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('g' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('h' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('i' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('j' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('k' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('l' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('m' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('n' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('o' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('p' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('q' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('r' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('s' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('t' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('u' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('v' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('w' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('x' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('y' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'HUNGARY'
			and substring (TRADE_NAME_2, CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('z' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'HUNGARY'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'HUNGARY'
