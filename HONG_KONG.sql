/**  https://www.drugoffice.gov.hk/eps/do/en/consumer/home.html
DONWLOAD INDIVIDUAL FILES FOR EACH LETTER, COMBINE THEN IMPORT TO SQL SERVER

*************************************************************************/

update IDD_0
	 set AI_2= replace (AI ,',' , ' / ')
  FROM IDD_0
  where country = 'HONG_KONG'
  go
---------------------------------------------------------------------------

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
where country = 'HONG_KONG'
    SET @Counter  = @Counter  + 1
END

---------------------

UPDATE IDD_0
	SET TRADE_NAME_2 = Trade_name
	where  country = 'HONG_KONG'

 --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

    

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	
	-------------------------------------------------------
-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'HONG_KONG'
  go
--


--REMOVE AFTER (


	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2) - 1)
	where CHARINDEX('(', TRADE_NAME_2) > 0
	and  country = 'HONG_KONG'
	--------------------


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgrammes' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'N?' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PHARMA ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' par ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CEIP ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.CEIP' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS SUCRE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' URGO ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PIERRE FABRE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  per ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALTER ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s internationales/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'POUR CENT' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZYDUS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ARROW' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BIOGARAN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MYLAN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CRISTERS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INTSEL CHIMOS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHIMOS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INTSEL ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANTE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONSEIL' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BRAUN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALMUS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' RANBAXY' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'GENERIQUES' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECORDATI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EVOLUGEN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORCHITYN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORION' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BLUEFISH' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KRKA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' AVANSOR' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KABI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VITABALANS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANDOZ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EBEWE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MACURE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'STRAGEN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PFIZER' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NORAMEDA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACCORD' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION MITE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION SEMI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HAMELN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MEDAC' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UNIMEDIC' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ALTERNOVA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' HEXAL' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZENTIVA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PANPHARMA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACTAVIS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NAVAMEDIC' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KALCEKS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORIFARM' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SEKVENS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PERIFER' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'V?RILLINEN' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VILLERTON' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BGR' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' STADA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HEALTHCARE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' de ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO CONSEIL' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EG ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LABO ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANS SUCRE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUCRE' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HOPIRA' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LAB ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ET ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ADULTES' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / IU' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/IU' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / gm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ L' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit?s/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g/ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g / ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g /ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g/ ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mmol' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 unites' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 I.U.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 UI' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u.' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mu' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9l' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 l ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ grams' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/grams' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ gram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgrams' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgrams' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ micrograms' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/micrograms' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microgram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microgram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ dose' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/dose' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L /' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L/' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ L ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/L ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram ' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligrams' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'millileters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milleleter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'miroleters' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microleter' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , ' ') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ?g' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L ' , ' ') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cm' , '') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , ' ') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc.' , '') 
where Country = 'HONG_KONG' ;

-------------------------  XXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXX   xXXXXXXXXXXXXXXXXXXXXXXXX   XXXXXXXXXXXXXXXXXXXXXXXXX


--remove all characters
UPDATE IDD_0
SET TRADE_NAME_2 = dbo.ClearNumericCharacters(TRADE_NAME_2)
where Country = 'HONG_KONG' ;
go

-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'HONG_KONG' ;
go

 --remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' abz' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ratiopharm' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Mylan ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' teva ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Heumann' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Winthrop' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'neuraxpharm' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Janssen' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Hormosan' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dura ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pack ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Effervescent' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Linctus' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALER' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' nebuliser' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dry ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ptrade_nament ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crm' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' aqueous' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soln ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gran ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enema ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' plasters ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' applicator' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ophthalmic' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tableti' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tabletten' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablety' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablets' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablet' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' S?SPANSIYON' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SURUP' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SPREY' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INJ ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EFERVESAN' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOL?SYON' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' krem' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gels' , '')
where Country = 'HONG_KONG' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SURUBU' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSUL' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampul' , '')
where Country = 'HONG_KONG' ;  
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VAJINAL OV?L' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'OV?L' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENJEKTABL' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' FLUID' , ' ')
where Country = 'HONG_KONG' ;



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplets' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplet' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ointment' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' modified' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' release' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' innert' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' substance' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' diluent' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' powder' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enteric' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caoted' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' devices' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' device' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenges' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenge' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cream' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' creme' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lotion' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaginal' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mouth' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' rectal' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuations' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuation' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuator' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cartridges' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solutions' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' disintegrating' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oral ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intravenous' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intramuscular' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.v' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.m' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2,  ' buccal' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' topical' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' occular' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orodispersible' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dispersible' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppositories', ' ')
where Country = 'HONG_KONG' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' compound' , '')
where Country = 'HONG_KONG' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppository' , '')
where Country = 'HONG_KONG' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liquid' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suspension' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g?l' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsuly' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard-' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft-' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injekcije' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mazilo' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podalj?anim spro?canjem' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko oblo?ene' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundHONG_KONGje' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' raztopino' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablete' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' podjezicne' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infundHONG_KONGje' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde kapsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INYECTABLE' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISOLVENTE' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UNYECTABLE' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALACI?N SUSPENSI?N PARA INHALACI?N EN ENVASE A PRESI?N' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACI?N' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUSPENSI?N' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENVASE A PRESI?N' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' efg' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' accord' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' POLVO' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EFERVESCENTES' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crema' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CAPSULAS DURAS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CAPSULAS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISPERSABLES' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LIOFILIZADO' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EN ENVASE A PRESION' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUBLINGUALES' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACION' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MICROGRAMOS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' en ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' para ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PARA SOLUCI?N ORAL' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCI?N' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLUCION ORAL' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCION' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Subcutaneous' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sublingual' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  s' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film-' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pre-filled' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'transdermal' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sugar free' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patches' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoules' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoule' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' chewable ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bottle' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' units' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' unit' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hours' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hour ' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Dihydrochloride' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B1' , 'B_one')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B2' , 'B_TWO')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B6' , 'B_SIX')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B7' , 'B_SEV')
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B12' , 'B_TWELVE')
where Country = 'HONG_KONG' ;

-- REMOVE NUMERICAL CHARACHTERS
--------------
UPDATE IDD_0
SET TRADE_NAME_2 =  dbo.ClearNumericCharacters(TRADE_NAME_2)
where Country = 'HONG_KONG' ;
go
----------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_one' ,'B1' )
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2  , 'B_TWO' ,'B2' )
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_SIX' , 'B6' )
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2 , 'B_SEV', 'B7' )
where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_TWELVE' , 'B12' )
where Country = 'HONG_KONG' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--miscellanious

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where Country = 'HONG_KONG' ;

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' of ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'HONG_KONG' ; 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)


UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where Country = 'HONG_KONG' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
 where Country = 'HONG_KONG' ;
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
 where Country = 'HONG_KONG' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unknown' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(nos)' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nos' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'placebo' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tabs' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' or ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KCL' , 'potassium chloride') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nacl' , 'sodium chloride') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INJEEL' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' och ' , ' / ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '') where Country = 'HONG_KONG' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' shampoo' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liniment' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',usp' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/usp' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',BP' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/BP' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' irrigation' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' emulsion' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infusion' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' spray' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liq ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' controlled' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Injectables' , ' ') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COUGH' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHILD' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISBERSIBLE' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONCENTRATE' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORAL' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PAST ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' IN ' , '') where Country = 'HONG_KONG' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MIXTURE' , '') where Country = 'HONG_KONG' ;


go 


DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN

UPDATE IDD_0 SET [TRADE_NAME_2]  =  replace ([TRADE_NAME_2], '  ' ,  ' ')  where Country = 'HONG_KONG' ; 
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,2) =' G';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' SUSP';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' LOZN';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' DROPS';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' EYE';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' EAR';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' OINT';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-6)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,6) =' PILLS';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) =' ML';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) =' MG';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) =' IU';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' nos';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' gel';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-6)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,6) =' jellY';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' cap';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' TAB';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' FOR';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,1) ='/';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,2) ='//';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,1) =',';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-1)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,1) ='+';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) =' ED';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) =' AN';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) ='/ED';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,3) ='/AN';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' TAB';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) ='OINT';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' INJ';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' cap';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' TAB';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) ='drops';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' conc';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,5) =' /for';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' for';
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4)  where Country = 'HONG_KONG' and RIGHT (TRADE_NAME_2,4) =' loz';


UPDATE IDD_0
SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), ''))
where Country = 'HONG_KONG' ;


SET @Counter  = @Counter  + 1  END
