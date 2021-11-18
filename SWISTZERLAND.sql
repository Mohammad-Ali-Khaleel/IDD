/*  https://www.SWITZERLANDmedic.ch/SWITZERLANDmedic/en/home/services/listen_neu.html#319575900
Extended list of medicines >> erweiterte_ham.xlsx
Authorised packaging >> zugelassene_packungen_ham.xlsx

EXPORT THE FOLLOWING QUERY FROM MS ACCESS TO SQL SERVER 
-----------
SELECT erweiterte_ham.[Dénomination du médicament], erweiterte_ham.[Code ATC], erweiterte_ham.[Principe(s) actif(s)], erweiterte_ham.Composition
FROM erweiterte_ham

UNION 

SELECT zugelassene_packungen_ham.[Dénomination du médicament], zugelassene_packungen_ham.[CODE ATC], zugelassene_packungen_ham.[Principe(s) actif(s)], zugelassene_packungen_ham.Composition
FROM zugelassene_packungen_ham;
**************************************************************************/

--ALTER TABLE SWITZERLAND
--ALTER COLUMN [Dénomination du médicament] VARCHAR (300);


--ALTER TABLE SWITZERLAND
--ALTER COLUMN [Principe(s) actif(s)] VARCHAR (300);


--ALTER TABLE SWITZERLAND
--ALTER COLUMN [Composition] VARCHAR (300);


--INSERT INTO IDD_0
--               (TRADE_NAME, AI, ATC_CODE, Country)
--SELECT  DISTINCT [Dénomination du médicament], [Principe(s) actif(s)], [Code ATC], 'SWITZERLAND'
--FROM     SWITZERLAND;

-----------------------------------


update IDD_0
	 set AI_2= replace (AI ,',' , ' / ')
  FROM IDD_0
  where country = 'SWITZERLAND'
  go

  ----------------
   
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
where country = 'SWITZERLAND'
    SET @Counter  = @Counter  + 1
END



update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'SWITZERLAND'
  go
  
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'SWITZERLAND'
  go
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'SWITZERLAND'
  GO
  
 UPDATE IDD_0
SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'SWITZERLAND'
  go

  
----------------------------


update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'-' , ' ')
  FROM IDD_0
  where country = 'SWITZERLAND'
  go
-----------------------------


	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX(',', TRADE_NAME_2) - 1)
	where CHARINDEX(',', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
---------------------------------------

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
where country = 'SWITZERLAND'
    SET @Counter  = @Counter  + 1
END
--------------

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 

	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('0', TRADE_NAME_2) - 1)
	where CHARINDEX('0', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'SWITZERLAND'
	

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgrammes' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'N°' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PHARMA ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' par ' ,  '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CEIP ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.CEIP' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS SUCRE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' URGO ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PIERRE FABRE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  per ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALTER ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités internationales/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVAGEN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'POUR CENT' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZYDUS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ARROW' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BIOGARAN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MYLAN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CRISTERS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INTSEL CHIMOS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHIMOS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INTSEL ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANTE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONSEIL' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BRAUN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALMUS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' RANBAXY' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'GENERIQUES' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECORDATI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EVOLUGEN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORCHITYN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORION' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BLUEFISH' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KRKA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' AVANSOR' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KABI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VITABALANS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANDOZ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EBEWE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MACURE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'STRAGEN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PFIZER' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NORAMEDA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACCORD' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION MITE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION SEMI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HAMELN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MEDAC' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UNIMEDIC' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ALTERNOVA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' HEXAL' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZENTIVA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PANPHARMA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACTAVIS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NAVAMEDIC' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KALCEKS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORIFARM' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SEKVENS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PERIFER' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VÄRILLINEN' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VILLERTON' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BGR' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' STADA' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HEALTHCARE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' de ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO CONSEIL' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EG ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LABO ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANS SUCRE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUCRE' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HOPIRA' , '') 
where Country = 'SWITZERLAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LAB ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ET ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ADULTES' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / IU' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/IU' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / gm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ L' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg / ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mmol' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 unites' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 I.U.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 UI' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u.' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mu' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9l' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 l ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ grams' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/grams' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ gram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgrams' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgrams' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ micrograms' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/micrograms' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microgram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microgram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ dose' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/dose' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L /' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L/' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ L ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/L ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram ' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligrams' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'millileters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milleleter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'miroleters' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microleter' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' µg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cm' , '') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc.' , '') 
where Country = 'SWITZERLAND' ;


-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'SWITZERLAND' ;
go

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' abz' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ratiopharm' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Mylan ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' teva ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Heumann' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Winthrop' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'neuraxpharm' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Janssen' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Hormosan' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dura ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pack ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Effervescent' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Linctus' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALER' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' nebuliser' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dry ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ptrade_nament ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crm' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' aqueous' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soln ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gran ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enema ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' plasters ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' applicator' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ophthalmic' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tableti' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tabletten' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablety' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablets' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablet' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SÜSPANSIYON' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SURUP' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SPREY' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INJ ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EFERVESAN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLÜSYON' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' krem' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gels' , '')
where Country = 'SWITZERLAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SURUBU' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSUL' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampul' , '')
where Country = 'SWITZERLAND' ;  
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VAJINAL OVÜL' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'OVÜL' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENJEKTABL' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' FLUID' , ' ')
where Country = 'SWITZERLAND' ;



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplets' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplet' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ointment' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' modified' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Sustained release' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' release' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sterile' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' innert' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' substance' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' diluent' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for Oral' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' powder' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enteric' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caoted' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' devices' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' device' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenges' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenge' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cream' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' creme' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lotion' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaginal' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mouth' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' rectal' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuations' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuation' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuator' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cartridges' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solutions' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DROPS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Nasal' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BABY' , '')
where Country = 'SWITZERLAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' disintegrating' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oral ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intravenous' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intramuscular' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.v' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.m' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2,  ' buccal' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' topical' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' occular' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orodispersible' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dispersible' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppositories', '')
where Country = 'SWITZERLAND' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' compound' , '')
where Country = 'SWITZERLAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppository' , '')
where Country = 'SWITZERLAND' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liquid' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suspension' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gél' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsuly' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard-' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft-' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injekcije' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mazilo' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podaljšanim sprošcanjem' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko obložene' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundSWITZERLANDje' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' raztopino' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablete' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' podjezicne' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infundSWITZERLANDje' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde kapsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INYECTABLE' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISOLVENTE' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UNYECTABLE' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACIÓN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUSPENSIÓN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENVASE A PRESIÓN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' efg' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' accord' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' POLVO' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EFERVESCENTES' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crema' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CAPSULAS DURAS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CAPSULAS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISPERSABLES' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LIOFILIZADO' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EN ENVASE A PRESION' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUBLINGUALES' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACION' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MICROGRAMOS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' en ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' para ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PARA SOLUCIÓN ORAL' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCIÓN' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLUCION ORAL' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCION' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Subcutaneous' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sublingual' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  s' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film-' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pre-filled' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'transdermal' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sugar free' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patches' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoules' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoule' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' chewable' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bottle' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' units' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' unit' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hours' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hour ' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Dihydrochloride' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B1' , 'B_one')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B2' , 'B_TWO')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B6' , 'B_SIX')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B7' , 'B_SEV')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B12' , 'B_TWELVE')
where Country = 'SWITZERLAND' ;

----------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_one' ,'B1' )
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2  , 'B_TWO' ,'B2' )
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_SIX' , 'B6' )
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2 , 'B_SEV', 'B7' )
where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_TWELVE' , 'B12' )
where Country = 'SWITZERLAND' ;


UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where Country = 'SWITZERLAND' ;

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' of ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'SWITZERLAND' ; 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)

UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where Country = 'SWITZERLAND' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
 where Country = 'SWITZERLAND' ;
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
 where Country = 'SWITZERLAND' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unknown' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(nos)' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nos' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'placebo' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tabs' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' or ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KCL' , 'potassium chloride') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nacl' , 'sodium chloride') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INJEEL' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' och ' , ' / ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectables' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectable' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '') where Country = 'SWITZERLAND' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' shampoo' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liniment' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',usp' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/usp' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',BP' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/BP' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' irrigation' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' emulsion' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infusion' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' spray' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liq ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' controlled' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '™' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '®' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , ' ') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/1ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/5ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/10ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/50ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/100ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/1000ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '10ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '50ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '100ml' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Aerosol' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Elixir' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'preparation' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' coated' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Inhalant' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Crushable' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'combinations' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'combination' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(' , '') where Country = 'SWITZERLAND' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ')' , '') where Country = 'SWITZERLAND' ;


go 

--trim
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
 where Country = 'SWITZERLAND' ;

 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'SWITZERLAND'
  go

  
UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,4) =' gel';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,4) =' cap';

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-5) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,5) =' jell';


UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,4) =' tab';
go


UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-4) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,4) =' for';
go

UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-2) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,2) ='//';
go



UPDATE IDD_0 SET TRADE_NAME_2 =  LEFT(TRADE_NAME_2, LEN(TRADE_NAME_2)-3) 
where Country = 'SWITZERLAND'
and RIGHT (TRADE_NAME_2,1) ='/';
go


 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'SWITZERLAND'
  go

--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


