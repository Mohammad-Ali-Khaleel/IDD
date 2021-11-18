/** https://www.moph.gov.qa/english/derpartments/policyaffairs/pdc/regnpricing/Pages/default.aspx
LIST OF PHARMACEUTICAL PRODUCTS WITH PRICES
LET GENERIC NAME AS AI, TRADE NAMEAS TRADE_NAME
INSERT INTO IDD_0 IN SQL SERVER THEN CONTINUE THE FOLLOWING CODE

****************************************************************************************/

UPDATE IDD_0 SET AI_2 = AI WHERE COUNTRY = 'QATAR'

 ----------------	
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX	
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 	
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX	
  	
	
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('0', AI_2) - 1)
	where CHARINDEX('0', AI_2) > 0
	AND  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('1', AI_2) - 1)
	where CHARINDEX('1', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('2', AI_2) - 1)
	where CHARINDEX('2', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('3', AI_2) - 1)
	where CHARINDEX('3', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('4', AI_2) - 1)
	where CHARINDEX('4', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('5', AI_2) - 1)
	where CHARINDEX('5', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('6', AI_2) - 1)
	where CHARINDEX('6', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('7', AI_2) - 1)
	where CHARINDEX('7', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('8', AI_2) - 1)
	where CHARINDEX('8', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('9', AI_2) - 1)
	where CHARINDEX('9', AI_2) > 0
	and  country = 'QATAR'
	AND CHARINDEX('+', AI_2) = 0
	AND CHARINDEX('&', AI_2) = 0

GO


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
where country = 'QATAR'		


    SET @Counter  = @Counter  + 1		
END		
GO

------------
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '%v/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '%w/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '%w/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '%v/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/v%' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/v%' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/w%' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/w%' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '% v/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '% w/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '% w/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '% v/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/v %' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/v %' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/w %' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/w %' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/v' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'w/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'v/w' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITS/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIT/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉS/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNITÉ/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MOLE/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MMOLE/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MG/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KG/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'G/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ML/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'L/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'IU/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UI/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MM/U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq / ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq /ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/ ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq / L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq /L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/ L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/L' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq / G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq /G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/ G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq/G' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KILOGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KILOGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KILOGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KILOGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' GRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' GRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'GRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'GRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROGRAMS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROGRAM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROGRAMMES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROGRAMME' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' LITERE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' LITERES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLILETERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLILETER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLILITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLILITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROLITRES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROLITRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROLITERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROLITER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UNITS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UNIT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UNITÉS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UNITÉ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MILLIMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROMOLES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROMOLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MICROMOL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MGS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MCG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µg' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' KG' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' G ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ML' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'µl' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' L ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' IU' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'I.U' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'U.I' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' U ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mEq' ,  '')  where Country = 'QATAR' ; 
--------------------
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'N°' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' PHARMA ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' par ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ENFANTS ET NOURRISSONS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' CEIP ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '.CEIP' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SANS SUCRE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' URGO ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'PIERRE FABRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '  per ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ALTER ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'unités internationales/ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'internationales/ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'internationales' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' TEVAGEN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' TEVA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'POUR CENT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ZYDUS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ARROW' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'BIOGARAN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MYLAN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'CRISTERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'INTSEL CHIMOS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' CHIMOS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INTSEL ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SANTE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' CONSEIL' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' BRAUN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ALMUS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' RANBAXY' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'GENERIQUES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'BOUCHARA RECORDATI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'BOUCHARA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'RECORDATI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' EVOLUGEN PHARMA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'EVOLUGEN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ORCHITYN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ORION' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'BLUEFISH' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' KRKA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' AVANSOR' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' KABI' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'VITABALANS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SANDOZ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'EBEWE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MACURE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'STRAGEN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'PFIZER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'NORAMEDA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ACCORD' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ORION MITE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ORION SEMI' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'HAMELN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'MEDAC' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'UNIMEDIC' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ALTERNOVA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' HEXAL' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ZENTIVA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'PANPHARMA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ACTAVIS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'NAVAMEDIC' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'KALCEKS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ORIFARM' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SEKVENS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'PERIFER' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'VÄRILLINEN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'VILLERTON' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'BGR' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' STADA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ACCORD HEALTHCARE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'HEALTHCARE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' de ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'EG LABO CONSEIL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'EG LABO' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' EG ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' LABO ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SANS SUCRE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SANS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SUCRE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'HOPIRA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' LAB ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ENFANTS ET ADULTES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ENFANTS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '  ET ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ADULTES' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cm' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cc ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cc.' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '&' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' abz' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ratiopharm' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Mylan ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' teva ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Heumann' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Winthrop' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'neuraxpharm' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Janssen' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Hormosan' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' dura ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' pack ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Effervescent' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Linctus' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INHALER' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' PUFF ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' nebuliser' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' dry ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ptrade_nament ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' crm' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' aqueous' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' soln ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' solution ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' gran ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' enema ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' plasters ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' applicator' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ophthalmic' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Tableti' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Tabletten' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tablety' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tablets' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tablet' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SÜSPANSIYON' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SURUP' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SPREY' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INJ ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' solution' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'EFERVESAN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SOLÜSYON' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' film ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' krem' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' gels' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SURUBU' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' KAPSUL' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ampul' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'VAJINAL OVÜL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'OVÜL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ENJEKTABL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' FLUID' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' caplets' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' caplet' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'eye ointment' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ointment' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' modified' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Sustained release' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' release' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' sterile' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' injection' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' vials' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' vial' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' innert' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' substance' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' diluent' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'for injection' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'for Oral' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' for ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Nebulising' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Turbuhaler' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Depot' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'CONCENTRATE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'POWDERS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' powder' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'enteric coated' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' enteric' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' caoted' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'pen devices' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'pen device' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' pen ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' devices' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' device' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' syringes' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' syringe' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' lozenges' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' lozenge' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'approximately' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' eye ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ear ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cream' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' creme' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' lotion' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' vaccine' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' vaginal' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' mouth' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' rectal' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' actuations' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' actuation' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' actuator' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cartridges' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'cartridge' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' solutions' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' DROPS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Nasal' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' BABY' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' disintegrating' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' orally' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' oral ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' intravenous' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' intramuscular' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' i.v' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' iv ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' im ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' i.m' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' topical' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' occular' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' orodispersible' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' dispersible' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' compound' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' suppository' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'inhalation' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' sachets' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' sachet' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' liquid' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' suspension' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' gél' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' kapsuly' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hard gelatin capsules' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hard gelatin capsule' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hard capsules' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hard capsule' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'soft gelatin capsules' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'soft gelatin capsule' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'soft capsules' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'soft capsule' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' capsules' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' capsule' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' hard-' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' soft-' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' hard ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' soft ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' injekcije' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' mazilo' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'tablete s podaljšanim sprošcanjem' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'filmsko obložene' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'raztopino za infundSWESSje' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' raztopino' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tablete' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' podjezicne' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' infundSWESSje' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' trde kapsule' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' kapsule' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' trde ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' COMPRIMIDOS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INYECTABLE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'DISOLVENTE PARA UNYECTABLE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' DISOLVENTE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' UNYECTABLE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INHALACIÓN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SUSPENSIÓN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'ENVASE A PRESIÓN' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' efg' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' accord' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' POLVO' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' EFERVESCENTES' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' crema' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'CAPSULAS DURAS' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' CAPSULAS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' DISPERSABLES' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' LIOFILIZADO' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' DE LIBERACION PROLONGADA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' COMPRIMIDOS DE LIBERACION PROLONGADA' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'RECUBIERTOS CON PELICULA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'COMPRIMIDOS RECUBIERTOS CON PELICULA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' EN ENVASE A PRESION' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SUBLINGUALES' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INHALACION' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MICROGRAMOS' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' en ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' para ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'PARA SOLUCIÓN ORAL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SOLUCIÓN' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'SOLUCION ORAL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' SOLUCION' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' cap ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Subcutaneous' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' sublingual' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '  s' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'film coated' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'film-coated' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' film-' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' pre-filled' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tabs' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tab ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' inj.' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'transdermal' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'sugar free' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' patches' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' patch' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ampoules' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' ampoule' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' patch ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' chewable' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' bottle' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' units' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' unit' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' hours' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' hour ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Dihydrochloride' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hydrochloride' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'maleate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'mononitrate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'acetate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'valerate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'phosphate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'hemihydrate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'fumarate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'tartarate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'conttrade_namens' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'conttrade_namen' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'each' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'without' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'with' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '_' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' as ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' x ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' of ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '( )' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '()' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '[]' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '[ ]' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '[ ' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ']' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '!' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '@' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '#' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '*' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'unknown' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '(nos)' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' nos ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'placebo' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' tabs' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' or ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' KCL' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' nacl' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' INJEEL' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' in ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' and ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' och ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'injectables' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'injectable' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' w-v ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' w-w ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' f.c.' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '"' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ':' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '~' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '`' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '<' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '>' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '^' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '?' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '''' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' shampoo' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' liniment' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'syrup' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' bp' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' b.p' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' usp' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ',usp' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/usp' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ',BP' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/BP' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' use ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' u.s.p' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' usp ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' irrigation' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' jr ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' emulsion' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' skin ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' solvent ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' infusion' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' spray' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' za ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' oko ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' liq ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' controlled' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '™' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '®' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' gel ' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/1ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/5ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/10ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/50ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/100ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/1000ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '10ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '50ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '100ml' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Aerosol' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' Elixir' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'preparation' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' coated' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Inhalant' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Crushable' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'combinations' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'combination' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '(' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ')' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/DOSE' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '.' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' DOSE' ,  ' ')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'Filmtabletten' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '%' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'INJEEL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'APO-' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'APX' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '-AFT' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'GA-' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '- MYL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '-MYL' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '-TEVA' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' X ' ,  ' ')  where Country = 'QATAR' ; 


UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'picosulfate' ,  'pico_S_Ulfate')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'sulfate' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'pico_S_Ulfate' ,  'picosulfate')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'sodium chloride' ,  'sod_chld')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'sodium' ,  '')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'sod_chld' ,  'Sodium Chloride')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B1' ,  'B_one')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B2' ,  'B_TWO')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B6' ,  'B_SIX')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B7' ,  'B_SEV')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B12' ,  'B_TWELVE')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B_one' ,  'B1')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B_TWO' ,  'B2')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B_SIX' ,  'B6')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B_SEV' ,  'B7')  where Country = 'QATAR' ; 
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], 'B_TWELVE' ,  'B12')  where Country = 'QATAR' ; 
------------------------------
UPDATE IDD_0 
SET AI_2 = dbo.ClearNumericCharacters(AI_2)
where Country = 'QATAR' ;
go


UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ',' ,  '')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '/' ,  ' / ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '-' ,  ' ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '+' ,  ' / ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '&' ,  ' / ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' MG ' ,  ' ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], ' GM ' ,  ' ')  where Country = 'QATAR' ; 	

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	
DECLARE @Counter INT 	
SET @Counter=1	
WHILE ( @Counter <= 10)	
BEGIN	
	
UPDATE IDD_0 SET [AI_2]  =  replace ([AI_2], '  ' ,  ' ')  where Country = 'QATAR' ; 	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-2)  where Country = 'QATAR' and RIGHT (AI_2,2) =' G';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) =' ML';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) =' MG';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) =' IU';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-4)  where Country = 'QATAR' and RIGHT (AI_2,4) =' nos';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-4)  where Country = 'QATAR' and RIGHT (AI_2,4) =' gel';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-6)  where Country = 'QATAR' and RIGHT (AI_2,6) =' jellY';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-4)  where Country = 'QATAR' and RIGHT (AI_2,4) =' cap';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,4) =' TAB';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-4)  where Country = 'QATAR' and RIGHT (AI_2,4) =' FOR';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-1)  where Country = 'QATAR' and RIGHT (AI_2,1) ='/';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-2)  where Country = 'QATAR' and RIGHT (AI_2,2) ='//';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-1)  where Country = 'QATAR' and RIGHT (AI_2,1) =',';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-1)  where Country = 'QATAR' and RIGHT (AI_2,1) ='+';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) =' ED';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) =' AN ';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) ='/ED ';	
UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3)  where Country = 'QATAR' and RIGHT (AI_2,3) ='/AN ';	
	
	
UPDATE IDD_0	
SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))	
where Country = 'QATAR' ;	
SET @Counter  = @Counter  + 1  END	

-------------------------------------------------------------------------------------------------------

UPDATE IDD_0 SET TRADE_NAME_2 = TRADE_NAME WHERE COUNTRY = 'QATAR'

----------------------------------
--remove after ',' 
UPDATE IDD_0
SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX(',', TRADE_NAME_2) - 1)
where CHARINDEX(',', TRADE_NAME_2) > 0
and  [COUNTRY] = 'QATAR'
go

----

UPDATE IDD_0
SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX(',', TRADE_NAME_2) - 1)
where CHARINDEX(',', TRADE_NAME_2) > 0
and  [COUNTRY] = 'QATAR'
go
---------------
-- 

UPDATE IDD_0
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where   [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where   [COUNTRY] = 'QATAR'
go
----------------------------
UPDATE IDD_0
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('[', TRADE_NAME_2) > 0 AND CHARINDEX(']', TRADE_NAME_2) > 0 AND CHARINDEX('[', TRADE_NAME_2) < CHARINDEX(']', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('[', TRADE_NAME_2), (CHARINDEX(']', TRADE_NAME_2) - CHARINDEX('[', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where   [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('[', TRADE_NAME_2) > 0 AND CHARINDEX(']', TRADE_NAME_2) > 0 AND CHARINDEX('[', TRADE_NAME_2) < CHARINDEX(']', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('[', TRADE_NAME_2), (CHARINDEX(']', TRADE_NAME_2) - CHARINDEX('[', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where   [COUNTRY] = 'Australia'
go

--------------------
--remove after '(' 
UPDATE IDD_0
SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX(',', TRADE_NAME_2) - 1)
where CHARINDEX(',', TRADE_NAME_2) > 0
and  [COUNTRY] = 'QATAR'
go
---------------------------


UPDATE IDD_0 
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''), CHAR(160), '')))
where  [COUNTRY] = 'QATAR'
go
-------------------------
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '')
where  [COUNTRY] = 'QATAR'
go
--^
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'shampoo' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'liniment' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '')
where  [COUNTRY] = 'QATAR'
go


-- µg
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' -' , '/')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' –' , '/')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '–' , ' ')
where  [COUNTRY] = 'QATAR'
go



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'irrigation' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'emulsion' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'infusion' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'spray' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , '')
where  [COUNTRY] = 'QATAR'
go
 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U.' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'i.e.' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'i.e' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' IU ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UI ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'liquid' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'controlled' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '™' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '®' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ointment' , '')
where  [COUNTRY] = 'QATAR'
go

--#############################################################################
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where  [COUNTRY] = 'QATAR'
go
--remove brackets
UPDATE IDD_0
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
	go
--where   [COUNTRY] = 'Australia'
----------------------
--remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Effervescent' , '')
where  [COUNTRY] = 'QATAR'

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Linctus' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALER' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Tabletten' , '')
where  [COUNTRY] = 'QATAR'
go
--Slovakia
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablety' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablets' , '')
where  [COUNTRY] = 'QATAR'
go

-----------
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablet' , '')
where  [COUNTRY] = 'QATAR'
go
---------
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'caplets' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'caplet' , '')
where  [COUNTRY] = 'QATAR'
go

  UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ointment' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'modified' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'release' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injection' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'innert' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'substance' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'diluent' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injection' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'powder' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'caoted' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'devices' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'device' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syringes' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syringe' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'lozenges' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'lozenge' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cream' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'lotion' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'vaginal' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mouth' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'rectal' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syringes' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'actuations' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'actuation' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'actuator' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syringe' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridges' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'solutions' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'solution' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'disintegrating' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'oral ' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'intravenous' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'intramuscular' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'i.v' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'i.m' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'buccal' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'topical' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'occular' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'dispersible' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'suppositories', '')
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'compound' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'suppository' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sachets' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sachet' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'liquid' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'suspension' , '')
where  [COUNTRY] = 'QATAR'

go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gél' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'kapsuly' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'capsules' , '')
where  [COUNTRY] = 'QATAR'
go
--kapsule
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'capsule' , '')
where  [COUNTRY] = 'QATAR'
go
--
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injekcije' , '')
where  [COUNTRY] = 'QATAR'
go
-- 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mazilo' , '')
where  [COUNTRY] = 'QATAR'
go
--Adolax 40 mg/20 mg tablete s podaljšanim sprošcanjem
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podaljšanim sprošcanjem' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko obložene' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundiranje' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino' , '')
where  [COUNTRY] = 'QATAR'
go

--QATAR
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete' , '')
where  [COUNTRY] = 'QATAR'
go
--podjezicne
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'podjezicne' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'infundiranje' , '')
where  [COUNTRY] = 'QATAR'
go
-- 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'trde kapsule' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'kapsule' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Subcutaneous' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sublingual' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'drops' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pre-filled' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'patches' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'patch' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ampoules' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ampoule' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'chewable ' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'bottle' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sachet' , '')
where  [COUNTRY] = 'QATAR'
go
-- UNITS
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'units' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit' , '')
where  [COUNTRY] = 'QATAR'
go

-------------------------------



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' /µg' , '')
where  [COUNTRY] = 'QATAR'
go


------------------------

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ml' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' µg' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '')
where  [COUNTRY] = 'QATAR'
go



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gm' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gm ' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mg' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '')
where  [COUNTRY] = 'QATAR'
go
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , '')
where  [COUNTRY] = 'QATAR'
go


----------------------ml

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '' )
where  [COUNTRY] = 'QATAR'
go

------------------------------------gm
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8gm' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9gm' , '' )
where  [COUNTRY] = 'QATAR'
go
------------g
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '' )
where  [COUNTRY] = 'QATAR'
go
------------------------------mg

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '' )
where  [COUNTRY] = 'QATAR'
go
---------------mcg

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '' )
where  [COUNTRY] = 'QATAR'
go

-----------------------------------------------µg    

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '')
where  [COUNTRY] = 'QATAR'
go
--------------------------------------------------------------

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8µg' , '' )
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9µg' , '' )
where  [COUNTRY] = 'QATAR'
go

-----------------------------------------------µg    


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml,' , '' )
where  [COUNTRY] = 'QATAR'
go
-----------------------
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hour' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cm' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , '')
where  [COUNTRY] = 'QATAR'
go
--salt form

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where  [COUNTRY] = 'QATAR'
go
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where  [COUNTRY] = 'QATAR'
go
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where  [COUNTRY] = 'QATAR'
go
--Dextrose – 5% Sodium Chloride  - 0.45%  

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium  chloride' , 'sod_chld')
where  [COUNTRY] = 'QATAR'
go



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where  [COUNTRY] = 'QATAR'
go

-- remove all numeric   numeric    numeric    numeric     numeric     numeric     numeric     numeric
UPDATE IDD_0
SET TRADE_NAME_2 =  dbo.ClearNumericCharacters(TRADE_NAME_2)
where  [COUNTRY] = 'QATAR'
go

--miscellanious

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'controlled' , '')
where  [COUNTRY] = 'QATAR'
go



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where  [COUNTRY] = 'QATAR'
go

-- –

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , '')
where  [COUNTRY] = 'QATAR'
go
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '+' , '/')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ';' , '/')
--where  [COUNTRY] = 'USA'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',' , ' ')
where  [COUNTRY] = 'QATAR'
go
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where  [COUNTRY] = 'QATAR'
go
  
  UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where  [COUNTRY] = 'QATAR'
go
 


UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where  [COUNTRY] = 'QATAR'
  go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where  [COUNTRY] = 'QATAR'
go


 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where  [COUNTRY] = 'QATAR'
go

 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where  [COUNTRY] = 'QATAR'
go


------------?

--------------------------?



 --------------------

--trim
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
where  [COUNTRY] = 'QATAR'
go
--all about 4 min


------------------------
--UPDATE IDD_0
--SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
--where  [COUNTRY] = 'QATAR'
--go



--#################################################  END CLEANING


UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where  [COUNTRY] = 'QATAR'
  go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where  [COUNTRY] = 'QATAR'
go



UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where  [COUNTRY] = 'QATAR'
go

--/ /
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where  [COUNTRY] = 'QATAR'
go
--/ /

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
where  [COUNTRY] = 'QATAR'
go


--بواقي البقاء

UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,1) = '/' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 1)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'gel' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,4) = 'susp' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 4)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'set' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go

UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'tab' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'amp' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go


UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'inj' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go
---------
UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'use' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go
-----------
UPDATE IDD_0
SET TRADE_NAME_2 =  case 
						when right(TRADE_NAME_2,3) = 'for' 
						then LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2) - 3)
						else TRADE_NAME_2 
					END
where  [COUNTRY] = 'QATAR'
go
---------------------------





--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
where  [COUNTRY] = 'QATAR'
go


--UPDATE IDD_0
--SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ /' , '/')
--where  [COUNTRY] = 'QATAR'
--go



select * from [dbo].IDD_0
where [COUNTRY] = 'QATAR'
order by  COUNTRY 
go

--select *, right(TRADE_NAME_2,4) from [dbo].IDD_0
--where [COUNTRY] = 'QATAR'
--order by  COUNTRY 
--go
