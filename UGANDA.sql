﻿/*	https://www.nda.or.ug/drug-register-downloads/
DOWNLOAD THE LATEST National Drug Register of Uganda Human medicines >> EXCEL SHEET EXPORTED, IMPORT TO SQL SERVER ,
THEN CONTINUE THE FOLLOWING CODE:

***********************************************************/
INSERT INTO IDD_0
               (TRADE_NAME, AI,  Country)
SELECT  DISTINCT [NAME OF DRUG], [GENERIC NAME OF DRUG], 'Uganda'
FROM     Uganda;

--***********************************************************

update IDD_0
	 set AI_2= AI  where country = 'Uganda'  ;



 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go


 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go


 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go

 
update IDD_0
	 set AI_2= replace (AI_2 ,'+' , ' / ')
  FROM IDD_0
  where country = 'Uganda'
  go
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  --------
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
  
update IDD_0
	 set AI_2= replace (AI_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
 
 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'Uganda'
  go
 
 
---------------------------------------------------------------------------
------------------------------------------------------------------------- 


update IDD_0
	 set TRADE_NAME_2= TRADE_NAME  where country = 'Uganda'  ;



 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go


 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go


 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ' '), CHAR(13), ' '), CHAR(9), ' ')))
where country = 'Uganda'
  go


  
update IDD_0
	 set TRADE_NAME_2= replace (trade_name_2 ,' AND ' , ' / ')
  FROM IDD_0
  where country = 'Uganda'
  go

  
update IDD_0
	 set TRADE_NAME_2= replace (trade_name_2 ,'+' , ' / ')
  FROM IDD_0
  where country = 'Uganda'
  go
  
  update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  --------
  
update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
  
update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
  
update IDD_0
	 set TRADE_NAME_2= replace (TRADE_NAME_2 ,'  ' , ' ')
  FROM IDD_0
  where country = 'Uganda'
  go
  ------
 
 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'Uganda'
  go
 




UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgrammes' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'N°' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PHARMA ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' par ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CEIP ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.CEIP' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS SUCRE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' URGO ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PIERRE FABRE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  per ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALTER ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités internationales/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'internationales' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' TEVA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'POUR CENT' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZYDUS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ARROW' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BIOGARAN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MYLAN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CRISTERS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INTSEL CHIMOS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CHIMOS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INTSEL ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANTE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CONSEIL' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BRAUN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ALMUS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' RANBAXY' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'GENERIQUES' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BOUCHARA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECORDATI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EVOLUGEN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORCHITYN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ORION' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BLUEFISH' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KRKA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' AVANSOR' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KABI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VITABALANS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANDOZ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EBEWE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MACURE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'STRAGEN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PFIZER' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NORAMEDA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACCORD' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION MITE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORION SEMI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HAMELN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'MEDAC' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UNIMEDIC' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ALTERNOVA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' HEXAL' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ZENTIVA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PANPHARMA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ACTAVIS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'NAVAMEDIC' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KALCEKS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ORIFARM' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SEKVENS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PERIFER' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VÄRILLINEN' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VILLERTON' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'BGR' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' STADA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HEALTHCARE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' de ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO CONSEIL' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EG LABO' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EG ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LABO ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SANS SUCRE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SANS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUCRE' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HOPIRA' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LAB ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENFANTS' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ET ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ADULTES' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mEq/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'gm/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / IU' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/IU' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / u.i' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/u.i' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ u.i' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/I.U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ I.U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'g / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / gm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ml /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mg /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ L' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mcg /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mu /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u./' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'm.u. /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / w' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w / v' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v / v' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/w' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'w/v' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'v/v' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'UI/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'IU/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i. /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i./ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'u.i/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U. /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U./ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'I.U/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'U/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unités/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol /µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mmol/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg / ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/ ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' / µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'µg/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mmol' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 unites' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 I.U.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 UI' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U.I' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 U' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u.' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 m.u' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mu' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9l' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 l ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 g/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '0 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '1 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '2 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '3 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '4 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '5 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '6 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '7 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '8 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '9 cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ grams' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/grams' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ gram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/gram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgrams /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgrams' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgrams' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millgram /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millgram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millgram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileters /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' millileter /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ millileter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/millileter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' micrograms /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ micrograms' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/micrograms' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microgram /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microgram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microgram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleters /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' microleter /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ microleter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/microleter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ dose' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/dose' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liters /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liter /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ liter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/liter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  L /' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L/' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ L ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/L ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' grams ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gram ' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligrams' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milligram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'micrograms' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microgram' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'millileters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'milleleter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'miroleters' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'microleter' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dose' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' g ' , ' ') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ml' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' µg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mcg' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' L ' , ' ') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cm' , '') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc ' , ' ') 
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cc.' , '') 
where Country = 'Uganda' ;


-- white spaces
UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'Uganda' ;
go

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' abz' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ratiopharm' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Mylan ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' teva ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Heumann' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Winthrop' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'neuraxpharm' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Janssen' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Hormosan' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dura ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pack ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Effervescent' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Linctus' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALER' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' PUFF ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' nebuliser' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dry ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ptrade_nament ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crm' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' aqueous' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soln ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gran ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enema ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' plasters ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' applicator' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ophthalmic' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tableti' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Tabletten' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablety' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablets' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablet' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SÜSPANSIYON' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SURUP' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SPREY' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INJ ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'EFERVESAN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLÜSYON' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' krem' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gels' , '')
where Country = 'Uganda' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SURUBU' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' KAPSUL' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampul' , '')
where Country = 'Uganda' ;  
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'VAJINAL OVÜL' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'OVÜL' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENJEKTABL' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' FLUID' , ' ')
where Country = 'Uganda' ;



UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplets' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caplet' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'eye ointment' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ointment' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' modified' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' release' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vials' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vial' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' innert' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' substance' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' diluent' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for injection' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'for Oral' , '')

where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' for ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injection' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' powder' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'enteric coated' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' enteric' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' caoted' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen devices' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pen device' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pen ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' devices' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' device' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenges' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lozenge' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'approximately' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' eye ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ear ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cream' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' creme' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' lotion' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaccine' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' vaginal' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mouth' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' rectal' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringes' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuations' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuation' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' actuator' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' syringe' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cartridges' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'cartridge' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solutions' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solution' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DROPS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Nasal' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' BABY' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' disintegrating' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orally' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oral ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intravenous' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' intramuscular' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.v' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' iv ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' im ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' i.m' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2,  ' buccal' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' topical' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' occular' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' orodispersible' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' dispersible' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppositories', '')
where Country = 'Uganda' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' compound' , '')
where Country = 'Uganda' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suppository' , '')
where Country = 'Uganda' ;


UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'inhalation' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachets' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liquid' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' suspension' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gél' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsuly' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard gelatin capsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hard capsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft gelatin capsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'soft capsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' capsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard-' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft-' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hard ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' soft ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' injekcije' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' mazilo' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tablete s podaljšanim sprošcanjem' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'filmsko obložene' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'raztopino za infundUgandaje' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' raztopino' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tablete' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' podjezicne' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infundUgandaje' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde kapsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' kapsule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' trde ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INYECTABLE' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISOLVENTE' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' UNYECTABLE' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACIÓN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUSPENSIÓN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'ENVASE A PRESIÓN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' efg' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' accord' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' POLVO' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EFERVESCENTES' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' crema' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'CAPSULAS DURAS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' CAPSULAS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DISPERSABLES' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' LIOFILIZADO' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' DE LIBERACION PROLONGADA' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' EN ENVASE A PRESION' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SUBLINGUALES' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' INHALACION' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' MICROGRAMOS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' en ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' para ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' COMPRIMIDOS' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'PARA SOLUCIÓN ORAL' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCIÓN' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'SOLUCION ORAL' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' SOLUCION' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' cap ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' Subcutaneous' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sublingual' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  s' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film coated' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'film-coated' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film-' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' pre-filled' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' film ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tabs' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' tab ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' inj.' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'transdermal' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sugar free' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patches' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoules' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' ampoule' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' patch ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' chewable ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bottle' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' sachet' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' units' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' unit' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hours' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' hour ' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'Dihydrochloride' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hydrochloride' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'maleate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium chloride' , 'sod_chld')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sodium' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'mononitrate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'acetate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'valerate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'phosphate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'hemihydrate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'fumarate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tartarate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'sulfate' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'HCL' , '')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B1' , 'B_one')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B2' , 'B_TWO')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B6' , 'B_SIX')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B7' , 'B_SEV')
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B12' , 'B_TWELVE')
where Country = 'Uganda' ;


UPDATE IDD_0
SET TRADE_NAME_2 =  dbo.ClearNumericCharacters(TRADE_NAME_2)
where Country = 'Uganda' ;
go
----------------XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX 

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_one' ,'B1' )
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2  , 'B_TWO' ,'B2' )
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_SIX' , 'B6' )
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2 , 'B_SEV', 'B7' )
where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'B_TWELVE' , 'B12' )
where Country = 'Uganda' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--miscellanious

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namens' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'conttrade_namen' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'each' , '')
where Country = 'Uganda' ;

UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'without' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'with' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '-' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '_' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' as ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' x ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' of ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '/')
where Country = 'Uganda' ; 
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '( )' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '()' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[ ]' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '[]' , '')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '    ',' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '   ',' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  ' , ' ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)

UPDATE IDD_0
SET TRADE_NAME_2 =  replace(replace(replace (TRADE_NAME_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '  /' , ' /')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/  ' , '/ ')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '//' , '/')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace( replace (TRADE_NAME_2, '/ /' , '/'), '/ /', '/')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '///' , '/')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / /' , '/')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '////' , '/')
where Country = 'Uganda' ;
UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/ / / /' , '/')
 where Country = 'Uganda' ;
 UPDATE IDD_0
SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '.' , '')
 where Country = 'Uganda' ;

UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '%' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '&' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'unknown' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '(nos)' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nos' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'placebo' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'tabs' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' or ' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'KCL' , 'potassium chloride') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'nacl' , 'sodium chloride') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '*' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'INJEEL' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' in ' , ' / ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' and ' , ' / ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' och ' , ' / ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectables' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'injectable' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-v ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' w-w ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' f.c.' , '') where Country = 'Uganda' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '"' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ':' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '~' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '`' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '@' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '<' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '>' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '#' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '^' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '!' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '?' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '''' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' shampoo' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liniment' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, 'syrup' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' bp' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' b.p' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',usp' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/usp' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ',BP' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '/BP' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' use ' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' u.s.p' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' usp ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' irrigation' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' jr ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' emulsion' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' skin ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' solvent ' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' infusion' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' spray' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' za ' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' oko ' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' liq ' , ' ') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' controlled' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '™' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, '®' , '') where Country = 'Uganda' ;
UPDATE IDD_0 SET TRADE_NAME_2 =  replace (TRADE_NAME_2, ' gel ' , ' ') where Country = 'Uganda' ;
go 

--trim
UPDATE IDD_0
SET TRADE_NAME_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM TRADE_NAME_2)
 where Country = 'Uganda' ;
------------------------

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
where country = 'UGANDA'			
    SET @Counter  = @Counter  + 1			
END			
			

 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'Uganda'
  go



--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

