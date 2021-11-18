/**     https://www.halmed.hr/en/Lijekovi/Baza-lijekova/#rezultati
PRESS SEARCH WITH ALL EMPTY FILEDS, EXPORT RESULTS IFROM THE WEBSITE WITH EXCELL FORMAT >> Halmed_Lijekovi_15ff08e3d6f441.xlsx
ALSO DOWNLOAD THE LIST OF REVOCTION FROM THE SAME PAGE >> Halmed_Ukinuta_odobrenja list of revocation.xlsx
[Naziv] AS TRADE_NAME,  [Djelatna tvar] AS AI, [ATK] AS ATC_CODE
*************************************************************************************/

update IDD_0
	 set AI_2= replace (AI ,', ' , ' / ')
  FROM IDD_0
  where country = 'CROATIA'
  go

  
update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'-' , ' ')
  FROM IDD_0
  where country = 'CROATIA'
  go

  -----------------
   
 --REMOVE BRACKETS
 DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 10)
BEGIN
 UPDATE IDD_0  -- 10 TIMES
SET TRADE_NAME_2 = CASE 
		WHEN CHARINDEX('(', TRADE_NAME_2) > 0 AND CHARINDEX(')', TRADE_NAME_2) > 0 AND CHARINDEX('(', TRADE_NAME_2) < CHARINDEX(')', TRADE_NAME_2) 
			THEN STUFF(TRADE_NAME_2, CHARINDEX('(', TRADE_NAME_2), (CHARINDEX(')', TRADE_NAME_2) - CHARINDEX('(', TRADE_NAME_2)) + 1, '')
		ELSE TRADE_NAME_2
	END
where country = 'CROATIA'
    SET @Counter  = @Counter  + 1
END
--------------
UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX(',', TRADE_NAME_2) - 1)
	where CHARINDEX(',', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
----------------
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'CROATIA'
	

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX





UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgrammes' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'N�' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PHARMA ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' par ' ,  '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CEIP ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.CEIP' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS SUCRE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' URGO ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PIERRE FABRE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  per ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALTER ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s internationales/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVAGEN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'POUR CENT' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZYDUS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ARROW' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BIOGARAN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MYLAN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CRISTERS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INTSEL CHIMOS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHIMOS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INTSEL ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANTE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONSEIL' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BRAUN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALMUS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' RANBAXY' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'GENERIQUES' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECORDATI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EVOLUGEN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORCHITYN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORION' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BLUEFISH' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KRKA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' AVANSOR' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KABI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VITABALANS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANDOZ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Alpha Medical' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EBEWE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MACURE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'STRAGEN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PFIZER' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NORAMEDA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACCORD' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION MITE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION SEMI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HAMELN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MEDAC' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UNIMEDIC' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ALTERNOVA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' HEXAL' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZENTIVA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PANPHARMA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACTAVIS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NAVAMEDIC' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KALCEKS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORIFARM' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SEKVENS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PERIFER' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'V�RILLINEN' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VILLERTON' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BGR' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' STADA' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HEALTHCARE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' de ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO CONSEIL' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EG ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LABO ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANS SUCRE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUCRE' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HOPIRA' , '') 
where Country = 'CROATIA' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LAB ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ET ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ADULTES' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / IU' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/IU' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / gm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ L' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unit�s/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g/ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g / ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g /ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g/ ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9�g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mmol' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 unites' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 I.U.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 UI' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u.' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mu' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9l' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 l ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ grams' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/grams' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ gram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgrams' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgrams' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ micrograms' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/micrograms' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microgram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microgram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ dose' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/dose' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L /' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L/' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ L ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/L ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram ' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligrams' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'millileters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milleleter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'miroleters' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microleter' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' �g' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cm' , '') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc.' , '') 
where Country = 'CROATIA' ;



-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'CROATIA' ;
go

 --remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' abz' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ratiopharm' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Mylan ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' teva ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Heumann' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Winthrop' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'neuraxpharm' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Janssen' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Hormosan' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dura ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pack ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Effervescent' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Linctus' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALER' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' nebuliser' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dry ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ptrade_nament ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crm' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' aqueous' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soln ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gran ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enema ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' plasters ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' applicator' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ophthalmic' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tableti' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tabletten' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablety' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablets' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablet' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' S�SPANSIYON' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SURUP' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SPREY' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INJ ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EFERVESAN' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOL�SYON' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmom oblo�enee' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' filmom' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'oblo�enee' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' krem' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gels' , '')
where Country = 'CROATIA' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SURUBU' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sirup' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSULE' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSUL' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampul' , '')
where Country = 'CROATIA' ;  
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VAJINAL OV�L' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'OV�L' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENJEKTABL' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' FLUID' , ' ')
where Country = 'CROATIA' ;



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplets' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplet' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ointment' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' modified' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Sustained release' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' release' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sterile' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' innert' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' substance' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' diluent' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for Oral' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' powder' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enteric' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caoted' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' devices' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' device' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenges' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenge' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cream' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' creme' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lotion' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaginal' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mouth' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' rectal' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuations' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuation' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuator' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cartridges' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solutions' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DROPS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Nasal' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BABY' , '')
where Country = 'CROATIA' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' disintegrating' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oral ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intravenous' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intramuscular' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.v' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.m' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2,  ' buccal' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' topical' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' occular' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orodispersible' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dispersible' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppositories', '')
where Country = 'CROATIA' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' compound' , '')
where Country = 'CROATIA' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppository' , '')
where Country = 'CROATIA' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liquid' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suspension' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g�l' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsuly' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard-' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft-' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injekcije' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mazilo' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podalj�anim spro�canjem' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko oblo�ene' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundCROATIAje' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' raztopino' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablete' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' podjezicne' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infundCROATIAje' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde kapsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INYECTABLE' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISOLVENTE' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UNYECTABLE' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALACI�N SUSPENSI�N PARA INHALACI�N EN ENVASE A PRESI�N' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACI�N' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUSPENSI�N' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENVASE A PRESI�N' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' efg' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' accord' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' POLVO' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EFERVESCENTES' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crema' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CAPSULAS DURAS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CAPSULAS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISPERSABLES' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LIOFILIZADO' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EN ENVASE A PRESION' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUBLINGUALES' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACION' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MICROGRAMOS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' en ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' para ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PARA SOLUCI�N ORAL' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCI�N' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLUCION ORAL' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCION' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Subcutaneous' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sublingual' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  s' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film-' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pre-filled' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'transdermal' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sugar free' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patches' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoules' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoule' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' chewable' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bottle' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' units' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' unit' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hours' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hour ' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Dihydrochloride' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B1' , 'B_one')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B2' , 'B_TWO')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B6' , 'B_SIX')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B7' , 'B_SEV')
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B12' , 'B_TWELVE')
where Country = 'CROATIA' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_one' ,'B1' )
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2  , 'B_TWO' ,'B2' )
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_SIX' , 'B6' )
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2 , 'B_SEV', 'B7' )
where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_TWELVE' , 'B12' )
where Country = 'CROATIA' ;


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where Country = 'CROATIA' ;

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' of ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'CROATIA' ; 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)



UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where Country = 'CROATIA' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
 where Country = 'CROATIA' ;
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
 where Country = 'CROATIA' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unknown' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(nos)' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nos' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'placebo' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tabs' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' or ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KCL' , 'potassium chloride') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nacl' , 'sodium chloride') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INJEEL' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' och ' , ' / ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectables' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectable' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '') where Country = 'CROATIA' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' shampoo' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liniment' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',usp' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/usp' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',BP' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/BP' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' irrigation' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' emulsion' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infusion' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' spray' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liq ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' controlled' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '�' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , ' ') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/1ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/5ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/10ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/50ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/100ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/1000ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '10ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '50ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '100ml' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Aerosol' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Elixir' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'preparation' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' coated' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Inhalant' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Crushable' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'combinations' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'combination' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(' , '') where Country = 'CROATIA' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ')' , '') where Country = 'CROATIA' ;


go 

--trim
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
 where Country = 'CROATIA' ;
------------------------

 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'CROATIA'
  go

  
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,4) =' gel';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'CROATIA'FINAL_
and RIGHT (TRADE_NAME_2,4) =' cap';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,5) =' jell';


UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,4) =' tab';
go


UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,4) =' for';
go

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,2) ='//';
go



UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'CROATIA'
and RIGHT (TRADE_NAME_2,1) ='/';
go
