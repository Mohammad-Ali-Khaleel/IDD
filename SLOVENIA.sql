/*  http://www.cbz.si/cbz/bazazdr2.nsf/Search/$searchForm?SearchView
DOWNLOAD ALL MEDICINES IN EXCEL FORRMAT FIE OR (VSA ZDRAVILA VOBLIKI EXCEL])
>> sif22.csv (ACTUALLY IT IS CSV FILE RATHER THAN EXCEL FILE!)

[Ime zdravila] AS TRADE_NAME , [Poimenovanje zdravila] AS OTHER_NAME,   
[ATC oznaka] AS ATC_CODE, [Angleški opis ATC] AS AI, [Slovenski  opis ATC] AS OTHER_NAME_2, [Latinski opis ATC] AS OTHER_NAME_3


--INSERT INTO IDD_0
--               (TRADE_NAME, OTHER_NAME, ATC_CODE, AI, OTHER_NAME_2, OTHER_NAME_3, Country)
--SELECT DISTINCT [Ime zdravila], [Poimenovanje zdravila], [ATC oznaka], [Angleški opis ATC], [Latinski opis ATC], [Slovenski  opis ATC], 'SLOVENIA'
--FROM     SLOVENIA

**************************************************************************************/

------------------------------


update IDD_0 set TRADE_NAME_2= TRADE_NAME where country = 'Slovenia' ;
  ----------
UPDATE IDD_0 SET TRADE_NAME_2 =TRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')) where Country = 'JORDAN' ;


update IDD_0 set TRADE_NAME_2= NULL where country = 'Slovenia' and trade_name = '-'  ;



------

update IDD_0 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'/' , ' / ')   FROM IDD_0 where country = 'Slovenia';
update IDD_0 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')   FROM IDD_0 where country = 'Slovenia';
update IDD_0 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')   FROM IDD_0 where country = 'Slovenia';
update IDD_0 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')   FROM IDD_0 where country = 'Slovenia';
------------------

update IDD_0 set ATC_CODE= NULL where country = 'Slovenia' AND  LEN(ATC_CODE)< 7;
 
---------------- 
DELETE FROM IDD_0
WHERE   (Country = N'Slovenia')
AND ATC_CODE IS NULL
--------------



update IDD_0 set AI_2= AI where country = 'Slovenia' ;
  
   --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  --XXXXX    --  REMOVE After 'NUMBERS'   XXXXXXX                 
  --XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 

	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('0', AI_2) - 1)
	where CHARINDEX('0', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('1', AI_2) - 1)
	where CHARINDEX('1', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('2', AI_2) - 1)
	where CHARINDEX('2', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('3', AI_2) - 1)
	where CHARINDEX('3', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('4', AI_2) - 1)
	where CHARINDEX('4', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('5', AI_2) - 1)
	where CHARINDEX('5', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('6', AI_2) - 1)
	where CHARINDEX('6', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('7', AI_2) - 1)
	where CHARINDEX('7', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('8', AI_2) - 1)
	where CHARINDEX('8', AI_2) > 0
	and  country = 'Slovenia'
	
	--
	UPDATE IDD_0
	SET AI_2 = LEFT(AI_2, CHARINDEX('9', AI_2) - 1)
	where CHARINDEX('9', AI_2) > 0
	and  country = 'Slovenia'
	

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX





UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microgrammes' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'N°' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' PHARMA ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' par ' ,  '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CEIP ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '.CEIP' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SANS SUCRE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' URGO ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PIERRE FABRE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  per ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ALTER ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités internationales/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'internationales/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'internationales' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' TEVAGEN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' TEVA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'POUR CENT' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ZYDUS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ARROW' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BIOGARAN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' MYLAN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'CRISTERS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INTSEL CHIMOS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CHIMOS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INTSEL ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANTE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CONSEIL' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' BRAUN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ALMUS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' RANBAXY' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'GENERIQUES' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BOUCHARA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECORDATI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EVOLUGEN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORCHITYN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ORION' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BLUEFISH' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KRKA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' AVANSOR' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KABI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VITABALANS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANDOZ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EBEWE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'MACURE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'STRAGEN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PFIZER' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'NORAMEDA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ACCORD' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORION MITE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORION SEMI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HAMELN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'MEDAC' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UNIMEDIC' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ALTERNOVA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' HEXAL' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ZENTIVA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PANPHARMA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ACTAVIS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'NAVAMEDIC' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'KALCEKS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORIFARM' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SEKVENS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PERIFER' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VÄRILLINEN' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VILLERTON' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BGR' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' STADA' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HEALTHCARE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' de ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EG LABO CONSEIL' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EG LABO' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EG ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LABO ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANS SUCRE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SANS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUCRE' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HOPIRA' , '') 
where Country = 'Slovenia' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LAB ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  ET ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ADULTES' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / IU' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/IU' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / u.i.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/u.i.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ u.i.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / u.i' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/u.i' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ u.i' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/I.U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ I.U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / gm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ml/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ml /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ L' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w / w' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w / v' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'v / v' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w/w' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w/v' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'v/v' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg / ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg /ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/ ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mmol' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 unites' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 I.U.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 UI' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U.I.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U.I' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 m.u.' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 m.u' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mu' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9l' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 l ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9g' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 g ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 g/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ grams' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/grams' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ gram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/gram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgrams/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgrams /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millgrams' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millgrams' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgram/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgram /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millgram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millgram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileters/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileters /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millileters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millileters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileter/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileter /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millileter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millileter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' micrograms/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' micrograms /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ micrograms' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/micrograms' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microgram/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microgram /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microgram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microgram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleters/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleters /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microleters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microleters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleter/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleter /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microleter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microleter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ dose' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/dose' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liters/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liters /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ liters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/liters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liter/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liter /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ liter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/liter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  L/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  L /' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' L/' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ L ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/L ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram ' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milligrams' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milligram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microgram' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'millileters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milleleter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'miroleters' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microleter' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' g ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ml' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' µg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mcg' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' L ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cm' , '') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cc ' , ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cc.' , '') 
where Country = 'Slovenia' ;

-------------------------  XXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXX   xXXXXXXXXXXXXXXXXXXXXXXXX   XXXXXXXXXXXXXXXXXXXXXXXXX


--remove all characters
UPDATE IDD_0
SET AI_2 = dbo.ClearNumericCharacters(AI_2)
where Country = 'Slovenia' ;
go

-- white spaces
UPDATE IDD_0
SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'Slovenia' ;
go

 --remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '&' , '/')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' abz' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ratiopharm' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Mylan ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' teva ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Heumann' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Winthrop' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'neuraxpharm' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Janssen' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Hormosan' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dura ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pack ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Effervescent' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Linctus' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALER' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' PUFF ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' nebuliser' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dry ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ptrade_nament ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crm' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' aqueous' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soln ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gran ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enema ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' plasters ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' applicator' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ophthalmic' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tableti' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tabletten' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablety' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablets' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablet' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SÜSPANSIYON' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SURUP' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SPREY' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INJ ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EFERVESAN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SOLÜSYON' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' krem' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gels' , '')
where Country = 'Slovenia' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SURUBU' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KAPSUL' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampul' , '')
where Country = 'Slovenia' ;  
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VAJINAL OVÜL' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'OVÜL' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENJEKTABL' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' FLUID' , ' ')
where Country = 'Slovenia' ;



UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplets' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplet' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'eye ointment' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ointment' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' modified' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Sustained release' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' release' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sterile' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vials' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vial' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' innert' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' substance' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' diluent' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'for injection' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'for Oral' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' for ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' powder' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'enteric coated' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enteric' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caoted' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen devices' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen device' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pen ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' devices' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' device' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenges' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenge' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'approximately' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' eye ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ear ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cream' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' creme' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lotion' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaccine' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaginal' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mouth' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' rectal' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuations' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuation' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuator' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cartridges' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'cartridge' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solutions' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DROPS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Nasal' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' BABY' , '')
where Country = 'Slovenia' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' disintegrating' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orally' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' oral ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intravenous' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intramuscular' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.v' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' iv ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' im ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.m' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2,  ' buccal' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' topical' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' occular' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orodispersible' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dispersible' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppositories', '')
where Country = 'Slovenia' ;


UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' compound' , '')
where Country = 'Slovenia' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppository' , '')
where Country = 'Slovenia' ;


UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'inhalation' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachets' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachets' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liquid' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suspension' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gél' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsuly' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard-' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft-' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injekcije' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mazilo' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tablete s podaljšanim sprošcanjem' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'filmsko obložene' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'raztopino za infundSloveniaje' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' raztopino' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablete' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' podjezicne' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' infundSloveniaje' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde kapsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INYECTABLE' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISOLVENTE' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' UNYECTABLE' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACIÓN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUSPENSIÓN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENVASE A PRESIÓN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' efg' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' accord' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' POLVO' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EFERVESCENTES' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crema' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'CAPSULAS DURAS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CAPSULAS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISPERSABLES' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LIOFILIZADO' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EN ENVASE A PRESION' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUBLINGUALES' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACION' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' MICROGRAMOS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' en ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' para ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PARA SOLUCIÓN ORAL' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCIÓN' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SOLUCION ORAL' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCION' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cap ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Subcutaneous' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sublingual' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  s' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film coated' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film-coated' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film-' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pre-filled' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tabs' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tab ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj.' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'transdermal' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sugar free' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patches' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoules' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoule' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' chewable' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' bottle' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' units' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' unit' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hours' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hour ' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Dihydrochloride' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hydrochloride' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'maleate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium chloride' , 'sod_chld')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mononitrate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'acetate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'valerate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'phosphate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hemihydrate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'fumarate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tartarate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HCL' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B1' , 'B_one')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B2' , 'B_TWO')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B6' , 'B_SIX')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B7' , 'B_SEV')
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B12' , 'B_TWELVE')
where Country = 'Slovenia' ;

-- NUMERIC  XXXXX NUMERIC XXXXXXX   NUMERIC XXXXXX   NUMERIC    XXXXXX     NUMERIC     XXXXXXX      NUMERIC XXXXXXX

--------------
UPDATE IDD_0
SET AI_2 =  dbo.ClearNumericCharacters(AI_2)
where Country = 'Slovenia' ;
go
----------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 

UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_one' ,'B1' )
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2  , 'B_TWO' ,'B2' )
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_SIX' , 'B6' )
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2 , 'B_SEV', 'B7' )
where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_TWELVE' , 'B12' )
where Country = 'Slovenia' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--miscellanious

UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namens' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namen' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'each' , '')
where Country = 'Slovenia' ;

UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'without' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'with' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '-' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '_' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' as ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' x ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '%' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' of ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '&' , '/')
where Country = 'Slovenia' ; 
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '.' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '( )' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '()' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[ ]' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[]' , '')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '    ',' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '   ',' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  ' , ' ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI_2)

------------------------
--UPDATE IDD_0
--SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
--
--go



--#################################################  END CLEANING


UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '//' , '/')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace( replace (AI_2, '/ /' , '/'), '/ /', '/')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '///' , '/')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / /' , '/')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '////' , '/')
where Country = 'Slovenia' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / / /' , '/')
 where Country = 'Slovenia' ;
 UPDATE IDD_0
SET AI_2 =  replace (AI_2, '.' , '')
 where Country = 'Slovenia' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, '!' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '@' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '#' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '%' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '&' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '*' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unknown' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '(nos)' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'nos' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'placebo' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tabs' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' or ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'KCL' , 'potassium chloride') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'nacl' , 'sodium chloride') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '*' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INJEEL' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' in ' , ' / ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' and ' , ' / ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' och ' , ' / ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'injectables' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'injectable' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' w-v ' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' w-w ' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' f.c.' , '') where Country = 'Slovenia' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '"' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ':' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '~' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '`' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '@' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '<' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '>' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '#' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '^' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '!' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '?' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '''' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' shampoo' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liniment' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'syrup' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' bp' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' b.p' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' usp' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ',usp' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/usp' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ',BP' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/BP' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' use ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' u.s.p' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' usp ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' irrigation' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' jr ' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' emulsion' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' skin ' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solvent ' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' infusion' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' spray' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' za ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' oko ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liq ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' controlled' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '™' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '®' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gel ' , ' ') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/1ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/5ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/10ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/50ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/100ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/1000ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '10ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '50ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '100ml' , '') where Country = 'Slovenia' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1000ml' , '') where Country = 'Slovenia' ;

go 

--trim
UPDATE IDD_0
SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI_2)
 where Country = 'Slovenia' ;
------------------------
--UPDATE IDD_0
--SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
--
--go



----#################################################  END CLEANING


--UPDATE IDD_0
--SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '  /' , ' /')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '/  ' , '/ ')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '//' , '/')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace( replace (AI_2, '/ /' , '/'), '/ /', '/')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '///' , '/')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '/ / /' , '/')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '////' , '/')
-- where Country = 'Slovenia' ;
--UPDATE IDD_0
--SET AI_2 =  replace (AI_2, '/ / / /' , '/')
-- where Country = 'Slovenia' ;

 UPDATE IDD_0
SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'Slovenia'
  go



UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,4) =' gel';

UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,4) =' cap';

UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,5) =' jell';


UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,4) =' tab';
go



UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,2) ='//';
go



UPDATE IDD_0 SET AI_2 =  LEFT(AI_2, LEN(AI_2)-3) 
where Country = 'Slovenia'
and RIGHT (AI_2,1) ='/';
go
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


