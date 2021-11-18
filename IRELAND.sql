/**    http://www.hpra.ie/homepage/medicines/medicines-information/find-a-medicine

http://www.hpra.ie/img/uploaded/swedocuments/latestHMlist.pdf
EXTRACT TRADE_NAME, AI, ATC_CODE FROM THE PDF FILE, THEN

INSERT INTO IDD_0
               (TRADE_NAME, AI, ATC_CODE, Country)
SELECT  DISTINCT TRADE_NAME, AI, ATC_CODE, 'IRELAND'
FROM     IRELAND_PDF

THEN CONTINUE THE FOLLOWING CODE:

**********************************************************************************************/
UPDATE IDD_0
SET ATC_CODE = TRIM(REPLACE(REPLACE(REPLACE(ATC_CODE, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
WHERE COUNTRY = 'IRELAND'

---------------------------

update IDD_0
	 set AI_2= AI
  FROM IDD_0
  where country = 'IRELAND'
  go

---------------------------

UPDATE IDD_0
SET AI_2 = TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' '))
WHERE COUNTRY = 'IRELAND'

----------------

UPDATE IDD_0
SET AI_2 = TRIM(' - ' FROM AI_2)
WHERE COUNTRY = 'IRELAND'

--------
DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
--
--
UPDATE IDD_0 SET AI_2  =  replace (AI_2, '  ' ,  ' ')  where Country = 'IRELAND' ; 

--
UPDATE IDD_0
SET AI_2 =TRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
where Country = 'IRELAND' ;


SET @Counter  = @Counter  + 1  END



UPDATE IDD_0 SET AI_2  =  replace (AI_2, '-' ,  ' / ')  where Country = 'IRELAND' ; 
 
UPDATE IDD_0 SET AI_2  =  replace (AI_2, '  ' ,  ' ')  where Country = 'IRELAND' ; 

UPDATE IDD_0 SET AI_2  =  replace (AI_2, '  ' ,  ' ')  where Country = 'IRELAND' ; 

UPDATE IDD_0 SET AI_2  =  replace (AI_2, '  ' ,  ' ')  where Country = 'IRELAND' ; 



-------REMOVE BRACEKTS
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
where country = 'IRELAND'

SET @Counter  = @Counter  + 1  END

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx




update IDD_0
	 set TRADE_NAME_2= trade_name
  FROM IDD_0
  where country = 'IRELAND'
  go



  -------------------------
   

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'IRELAND'
	
-----------------------

-----------------------




UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgrammes' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'N°' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PHARMA ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' par ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CEIP ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.CEIP' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS SUCRE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' URGO ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PIERRE FABRE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  per ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALTER ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités internationales/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'POUR CENT' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZYDUS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ARROW' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BIOGARAN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MYLAN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CRISTERS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INTSEL CHIMOS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHIMOS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INTSEL ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANTE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONSEIL' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BRAUN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALMUS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' RANBAXY' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'GENERIQUES' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECORDATI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EVOLUGEN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORCHITYN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORION' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BLUEFISH' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KRKA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' AVANSOR' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KABI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VITABALANS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANDOZ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EBEWE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MACURE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'STRAGEN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PFIZER' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NORAMEDA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACCORD' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION MITE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION SEMI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HAMELN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MEDAC' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UNIMEDIC' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ALTERNOVA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' HEXAL' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZENTIVA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PANPHARMA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACTAVIS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NAVAMEDIC' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KALCEKS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORIFARM' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SEKVENS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PERIFER' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VÄRILLINEN' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VILLERTON' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BGR' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' STADA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HEALTHCARE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' de ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO CONSEIL' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EG ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LABO ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANS SUCRE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUCRE' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HOPIRA' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LAB ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ET ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ADULTES' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / IU' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/IU' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / gm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ L' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg / ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mmol' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 unites' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 I.U.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 UI' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u.' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mu' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9l' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 l ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ grams' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/grams' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ gram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgrams' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgrams' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ micrograms' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/micrograms' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microgram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microgram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ dose' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/dose' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L /' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L/' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ L ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/L ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram ' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligrams' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'millileters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milleleter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'miroleters' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microleter' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , ' ') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' µg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L ' , ' ') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cm' , '') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , ' ') 
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc.' , '') 
where Country = 'IRELAND' ;

-------------------------  XXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXX   xXXXXXXXXXXXXXXXXXXXXXXXX   XXXXXXXXXXXXXXXXXXXXXXXXX


DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN

-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where Country = 'IRELAND' ;


UPDATE IDD_0 SET AI_2  =  replace (AI_2, '  ' ,  ' ')  where Country = 'IRELAND' ; 


SET @Counter  = @Counter  + 1  END

UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'IRELAND' ;


 --remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' abz' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ratiopharm' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Mylan ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' teva ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Heumann' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Winthrop' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'neuraxpharm' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Janssen' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Hormosan' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dura ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pack ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Effervescent' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Linctus' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALER' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' nebuliser' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dry ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ptrade_nament ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crm' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' aqueous' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soln ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gran ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enema ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' plasters ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' applicator' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ophthalmic' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tableti' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tabletten' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablety' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablets' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablet' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SÜSPANSIYON' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SURUP' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SPREY' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INJ ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EFERVESAN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLÜSYON' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' krem' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gels' , '')
where Country = 'IRELAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SURUBU' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSUL' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampul' , '')
where Country = 'IRELAND' ;  
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VAJINAL OVÜL' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'OVÜL' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENJEKTABL' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' FLUID' , ' ')
where Country = 'IRELAND' ;



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplets' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplet' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ointment' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' modified' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' release' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' innert' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' substance' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' diluent' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' powder' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enteric' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caoted' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' devices' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' device' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenges' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenge' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cream' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' creme' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lotion' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaginal' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mouth' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' rectal' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuations' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuation' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuator' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cartridges' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solutions' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' disintegrating' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oral ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intravenous' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intramuscular' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.v' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.m' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2,  ' buccal' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' topical' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' occular' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orodispersible' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dispersible' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppositories', '')
where Country = 'IRELAND' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' compound' , '')
where Country = 'IRELAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppository' , '')
where Country = 'IRELAND' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liquid' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suspension' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gél' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsuly' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard-' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft-' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injekcije' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mazilo' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podaljšanim sprošcanjem' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko obložene' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundIRELANDje' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' raztopino' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablete' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' podjezicne' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infundIRELANDje' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde kapsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INYECTABLE' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISOLVENTE' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UNYECTABLE' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACIÓN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUSPENSIÓN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENVASE A PRESIÓN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' efg' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' accord' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' POLVO' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EFERVESCENTES' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crema' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CAPSULAS DURAS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CAPSULAS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISPERSABLES' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LIOFILIZADO' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EN ENVASE A PRESION' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUBLINGUALES' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACION' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MICROGRAMOS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' en ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' para ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PARA SOLUCIÓN ORAL' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCIÓN' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLUCION ORAL' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCION' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Subcutaneous' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sublingual' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  s' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film-' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pre-filled' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'transdermal' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sugar free' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patches' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoules' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoule' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' chewable ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bottle' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' units' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' unit' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hours' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hour ' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Dihydrochloride' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B1' , 'B_one')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B2' , 'B_TWO')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B6' , 'B_SIX')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B7' , 'B_SEV')
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B12' , 'B_TWELVE')
where Country = 'IRELAND' ;

-- NUMERIC  XXXXX NUMERIC XXXXXXX   NUMERIC XXXXXX   NUMERIC    XXXXXX     NUMERIC     XXXXXXX      NUMERIC XXXXXXX

--------------
UPDATE IDD_0
SET TRADE_NAME_2 =  dbo.ClearNumericCharacters(TRADE_NAME_2)
where Country = 'IRELAND' ;
go
----------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_one' ,'B1' )
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2  , 'B_TWO' ,'B2' )
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_SIX' , 'B6' )
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2 , 'B_SEV', 'B7' )
where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_TWELVE' , 'B12' )
where Country = 'IRELAND' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--miscellanious

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where Country = 'IRELAND' ;

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' of ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'IRELAND' ; 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)

------------------------
--UPDATE IDD_0
--SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
--
--go



--#################################################  END CLEANING


UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where Country = 'IRELAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
 where Country = 'IRELAND' ;
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
 where Country = 'IRELAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unknown' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(nos)' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nos' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'placebo' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tabs' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' or ' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KCL' , 'potassium chloride') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nacl' , 'sodium chloride') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INJEEL' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' och ' , ' / ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectables' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectable' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '') where Country = 'IRELAND' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' shampoo' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liniment' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',usp' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/usp' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',BP' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/BP' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' irrigation' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' emulsion' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infusion' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' spray' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liq ' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' controlled' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '™' , '') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '®' , ' ') where Country = 'IRELAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , ' ') where Country = 'IRELAND' ;
go 

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'BELGIUM' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'BELGIUM' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'BELGIUM' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'BELGIUM' ; 
UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'BELGIUM' ; 


UPDATE IDD_0
SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2) - 1)
where CHARINDEX('(', TRADE_NAME_2) > 0
and  country = 'IRELAND'
	

--trim
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
 where Country = 'IRELAND' ;

 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'IRELAND'
  go



--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


