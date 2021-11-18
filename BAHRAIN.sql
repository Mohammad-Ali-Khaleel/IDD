/**   https://www.nhra.bh/
PPR_LISTS_Registered Medicine Price List_20201202.xlsx
IMPORTAI AND TRADE_NAME
*********************************************/

update IDD_0  set AI_2= AI  FROM IDD_0   where country = 'BAHRAIN'   

    update IDD_0
	 set AI_2= replace (AI_2 ,'HCL' , '')
  FROM IDD_0
  where country = 'BAHRAIN'

  
    update IDD_0
	 set AI_2= replace (AI_2 ,' CL ' , '')
  FROM IDD_0
  where country = 'BAHRAIN'


   update IDD_0
	 set AI_2= replace (AI_2 ,'Hydrochloride' , '')
  FROM IDD_0
  where country = 'BAHRAIN'


 -- REMOVE BRACKETS
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
where country = 'BAHRAIN'
    SET @Counter  = @Counter  + 1
END
-------------------------
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Antimonate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Acetonide'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Bitartrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Axetil'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Benzathin'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Benzathine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Benzoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Besilate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Besylate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Bisulfate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Bitartarte'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Bromide'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Camsylate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Caproate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Carbonate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Chloride'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Citrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Decanoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Di HCl'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Diethylamine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Diethylammonium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'DiHCl'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dihydrochloride'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dimaleate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dimeglumine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dinitrate '  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dipivoxil'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dipropionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Disodium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Disodium Phosphate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Disoproxil fumarate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Enantate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Epolamine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Etabonate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Ethanolate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Ethylsuccinate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Fumarate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Furoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Gadoterate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'HBr'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'HCl'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Hemihydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Hyclate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Monohydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Dihydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Hydrogen Tartrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Hydroxynaphthoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Iodide'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Isethionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Isoethionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'isomaltoside '  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Lacate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Lactate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Lactobionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Malate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Maleate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Meglumine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Mesilate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Mesylate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Methylsulfate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Mononitrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'TRINITRATE'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Nitrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Oxalate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Palmitate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Palmitate Hydrochloride'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Pamoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Pentahydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Phenpropionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Phosphate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Potassium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Procaine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Propanediol'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Propionate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Semisodium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sodium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sodium Phosphate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sodium Selenite Pentahydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sodium sesquihydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sodium succinate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Subcitrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Succinate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sulfate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sulfonate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Sulphate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tartarat'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tartarate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tartrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tetra Sodium'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tosilate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Trihydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Trometamol'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Tromethamine'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Undecanoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Valerate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Vedotin'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Xinafoate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Hydrate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Acetate'  , '') FROM IDD_0 where country = 'BAHRAIN' 


 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Acetate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Acetate'  , '') FROM IDD_0 where country = 'BAHRAIN' 
 UPDATE IDD_0 SET AI_2= replace (AI_2 ,'Acetate'  , '') FROM IDD_0 where country = 'BAHRAIN' 




UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microgrammes' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'N°' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' PHARMA ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' par ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS ET NOURRISSONS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CEIP ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '.CEIP' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SANS SUCRE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' URGO ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PIERRE FABRE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  per ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ALTER ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités internationales/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'internationales/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'internationales' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' TEVA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'POUR CENT' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ZYDUS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ARROW' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BIOGARAN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' MYLAN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'CRISTERS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INTSEL CHIMOS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CHIMOS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INTSEL ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANTE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CONSEIL' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' BRAUN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ALMUS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' RANBAXY' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'GENERIQUES' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BOUCHARA RECORDATI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BOUCHARA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECORDATI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EVOLUGEN PHARMA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EVOLUGEN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORCHITYN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ORION' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BLUEFISH' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KRKA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' AVANSOR' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KABI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VITABALANS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANDOZ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EBEWE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'MACURE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'STRAGEN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PFIZER' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'NORAMEDA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ACCORD' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORION MITE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORION SEMI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HAMELN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'MEDAC' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UNIMEDIC' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ALTERNOVA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' HEXAL' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ZENTIVA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PANPHARMA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ACTAVIS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'NAVAMEDIC' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'KALCEKS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ORIFARM' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SEKVENS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PERIFER' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VÄRILLINEN' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VILLERTON' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'BGR' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' STADA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ACCORD HEALTHCARE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HEALTHCARE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' de ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EG LABO CONSEIL' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EG LABO' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EG ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LABO ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SANS SUCRE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SANS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUCRE' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HOPIRA' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LAB ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS ET ADULTES' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENFANTS' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  ET ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ADULTES' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mEq/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'gm/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / IU' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/IU' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / u.i.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/u.i.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ u.i.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / u.i' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/u.i' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ u.i' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/I.U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ I.U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'g / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / gm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ml/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ml /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mg /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ L' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mcg /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mu /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u./' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'm.u. /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w / w' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w / v' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'v / v' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w/w' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'w/v' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'v/v' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'UI/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'IU/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i. /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i./ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'u.i/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U. /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U./ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'I.U/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'U/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unités/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol /µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mmol/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg / ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg /ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/ ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' / µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'µg/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mmol' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 unites' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 I.U.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 UI' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U.I.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U.I' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 U' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 m.u.' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 m.u' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mu' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9l' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 l ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9g' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 g/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '0 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '1 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '2 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '3 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '4 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '5 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '6 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '7 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '8 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '9 cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ grams' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/grams' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ gram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/gram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgrams/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgrams /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millgrams' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millgrams' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgram/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millgram /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millgram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millgram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileters/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileters /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millileters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millileters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileter/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' millileter /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ millileter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/millileter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' micrograms/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' micrograms /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ micrograms' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/micrograms' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microgram/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microgram /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microgram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microgram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleters/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleters /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microleters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microleters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleter/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' microleter /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ microleter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/microleter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ dose' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/dose' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liters/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liters /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ liters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/liters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liter/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liter /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ liter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/liter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  L/' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  L /' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/ L ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/L ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' grams ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gram ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milligrams' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milligram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'micrograms' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microgram' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'millileters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'milleleter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'miroleters' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'microleter' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dose' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' g ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ml' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' µg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mcg' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' L ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cm' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cc ' , '') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cc.' , '') 
where Country = 'BAHRAIN' ;



--remove all NUMERICAL characters
UPDATE IDD_0
SET AI_2 = dbo.ClearNumericCharacters(AI_2)
where Country = 'BAHRAIN' ;
go

-- white spaces
UPDATE IDD_0
SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where Country = 'BAHRAIN' ;
go

 --remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '&' , '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' abz' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ratiopharm' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Mylan ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' teva ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Heumann' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Winthrop' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'neuraxpharm' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Janssen' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Hormosan' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dura ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pack ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Effervescent' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Linctus' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALER' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' PUFF ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' nebuliser' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dry ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ptrade_nament ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crm' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' aqueous' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soln ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gran ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enema ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' plasters ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' applicator' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ophthalmic' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tableti' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tabletten' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablety' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablets' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablet' , '')

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SÜSPANSIYON' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SURUP' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SPREY' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INJ ' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'EFERVESAN' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SOLÜSYON' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , ' ')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' krem' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gels' , '')
where Country = 'Turkey' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SURUBU' , ' ')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' KAPSUL' , ' ')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampul' , '')
where Country = 'Turkey' ;  
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'VAJINAL OVÜL' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'OVÜL' , ' ')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENJEKTABL' , '')
where Country = 'Turkey' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' FLUID' , ' ')
where Country = 'Turkey' ;


where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplets' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplet' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'eye ointment' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ointment' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' modified' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' release' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vials' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vial' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' innert' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' substance' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' diluent' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'for injection' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' for ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' powder' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'enteric coated' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enteric' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caoted' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen devices' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen device' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pen ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' devices' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' device' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenges' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenge' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'approximately' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' eye ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ear ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cream' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' creme' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lotion' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaccine' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaginal' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mouth' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' rectal' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuations' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuation' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuator' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cartridges' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'cartridge' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solutions' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' disintegrating' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orally' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' oral ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intravenous' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intramuscular' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.v' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' iv ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' im ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.m' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2,  ' buccal' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' topical' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' occular' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orodispersible' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dispersible' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppositories', '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' compound' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppository' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'inhalation' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachets' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liquid' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suspension' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gél' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsuly' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard-' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft-' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injekcije' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mazilo' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tablete s podaljšanim sprošcanjem' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'filmsko obložene' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'raztopino za infundBAHRAINje' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' raztopino' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablete' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' podjezicne' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' infundBAHRAINje' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde kapsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INYECTABLE' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'DISOLVENTE PARA UNYECTABLE' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISOLVENTE' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' UNYECTABLE' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACIÓN' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUSPENSIÓN' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENVASE A PRESIÓN' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' efg' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' accord' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' POLVO' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EFERVESCENTES' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crema' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'CAPSULAS DURAS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CAPSULAS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISPERSABLES' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LIOFILIZADO' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DE LIBERACION PROLONGADA ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EN ENVASE A PRESION' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUBLINGUALES' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACION' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' MICROGRAMOS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' en ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' para ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PARA SOLUCIÓN ORAL' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCIÓN' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SOLUCION ORAL' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCION' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cap ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Subcutaneous' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sublingual' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  s' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film coated' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film-coated' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film-' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pre-filled' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tabs' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tab ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj.' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'transdermal' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sugar free' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patches' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoules' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoule' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' chewable ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' bottle' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' units' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' unit' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hours' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hour ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Dihydrochloride' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hydrochloride' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'maleate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'picosulfate' , 'pico_S_Ulfate')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pico_S_Ulfate' , 'picosulfate')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium chloride' , 'sod_chld')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sod_chld' , 'Sodium Chloride')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mononitrate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'acetate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'valerate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'phosphate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hemihydrate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'fumarate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tartarate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HCL' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B1' , 'B_one')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B2' , 'B_TWO')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B6' , 'B_SIX')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B7' , 'B_SEV')
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B12' , 'B_TWELVE')
where Country = 'BAHRAIN' ;



UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_one' ,'B1' )
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2  , 'B_TWO' ,'B2' )
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_SIX' , 'B6' )
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2 , 'B_SEV', 'B7' )
where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_TWELVE' , 'B12' )
where Country = 'BAHRAIN' ;
--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
--miscellanious

UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namens' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namen' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'each' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'controlled' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'without' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'with' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '-' , ' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '_' , ' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' as ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' x ' , ' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '%' , ' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' of ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' for ' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '&' , '/')
where Country = 'BAHRAIN' ; 
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '.' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '( )' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '()' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[ ]' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[]' , '')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '    ',' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '   ',' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  ' , ' ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI_2)

UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '//' , '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace( replace (AI_2, '/ /' , '/'), '/ /', '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '///' , '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / /' , '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '////' , '/')
where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / / /' , '/')
 where Country = 'BAHRAIN' ;
 UPDATE IDD_0
SET AI_2 =  replace (AI_2, '.' , '')
 where Country = 'BAHRAIN' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, '!' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '@' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '#' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '%' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '&' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '*' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'unknown' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '(nos)' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'nos' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'placebo' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tabs' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' or ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'KCL' , 'potassium chloride') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'nacl' , 'sodium chloride') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '*' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INJEEL' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' in ' , ' / ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' and ' , ' / ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' och ' , ' / ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' for ' , ' ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' w-v ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' w-w ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' f.c.' , '') where Country = 'BAHRAIN' ;

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '"' , ' ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ':' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '~' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '`' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '@' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '<' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '>' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '#' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '^' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '!' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '?' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '''' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' shampoo' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liniment' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'syrup' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' bp' , ' ') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' b.p' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' usp' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ',usp' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/usp' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ',BP' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '/BP' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' use ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' u.s.p' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' usp ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' irrigation' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' jr ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' emulsion' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' skin ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solvent ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' infusion' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' spray' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' za ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' oko ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liq ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' controlled' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '™' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '®' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gel ' , '') where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ointment' , '') where Country = 'BAHRAIN' ;
go 


--remove dosage forms and routes of administrations:
--Effervescent
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '&' , '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' abz' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ratiopharm' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Mylan ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' teva ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Heumann' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Winthrop' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'neuraxpharm' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Janssen' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Hormosan' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dura ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pack ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Effervescent' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Linctus' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALER' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' PUFF ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' nebuliser' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dry ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ptrade_nament ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crm' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' aqueous' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soln ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gran ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enema ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' plasters ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' applicator' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ophthalmic' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tableti' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Tabletten' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablety' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablets' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablet' , '')
go

UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplets' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caplet' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'eye ointment' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ointment' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' modified' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' release' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vials' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vial' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' innert' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' substance' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' diluent' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'for injection' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' for ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injection' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' powder' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'enteric coated' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' enteric' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' caoted' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen devices' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pen device' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pen ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' devices' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' device' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenges' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lozenge' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'approximately' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' eye ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ear ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cream' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' creme' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' lotion' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaccine' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' vaginal' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mouth' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' rectal' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringes' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuations' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuation' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' actuator' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' syringe' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cartridges' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'cartridge' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solutions' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' solution' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' disintegrating' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orally' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' oral ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intravenous' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' intramuscular' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.v' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' iv ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' im ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' i.m' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2,  ' buccal' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' topical' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' occular' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' orodispersible' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' dispersible' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppositories', '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' compound' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suppository' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'inhalation' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachets' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' liquid' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' suspension' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' gél' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsuly' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard gelatin capsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hard capsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft gelatin capsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'soft capsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' capsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard-' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft-' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hard ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' soft ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' injekcije' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' mazilo' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tablete s podaljšanim sprošcanjem' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'filmsko obložene' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'raztopino za infundBAHRAINje' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' raztopino' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tablete' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' podjezicne' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' infundBAHRAINje' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde kapsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' kapsule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' trde ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INYECTABLE' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'DISOLVENTE PARA UNYECTABLE' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISOLVENTE' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' UNYECTABLE' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'INHALACIÓN SUSPENSIÓN PARA INHALACIÓN EN ENVASE A PRESIÓN' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACIÓN' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUSPENSIÓN' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'ENVASE A PRESIÓN' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' efg' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' accord' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' POLVO' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EFERVESCENTES' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' crema' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'CAPSULAS DURAS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' CAPSULAS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DISPERSABLES' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' LIOFILIZADO' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' DE LIBERACION PROLONGADA' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS DE LIBERACION PROLONGADA' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'COMPRIMIDOS RECUBIERTOS CON PELICULA' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'RECUBIERTOS CON PELICULA' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' EN ENVASE A PRESION' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SUBLINGUALES' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' INHALACION' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' MICROGRAMOS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' en ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' para ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' COMPRIMIDOS' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'PARA SOLUCIÓN ORAL' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCIÓN' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'SOLUCION ORAL' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' SOLUCION' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' cap ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' Subcutaneous' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sublingual' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, '  s' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film coated' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'film-coated' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film-' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' pre-filled' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' film ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tabs' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' tab ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' inj.' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'transdermal' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sugar free' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patches' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoules' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' ampoule' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' patch ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' chewable ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' bottle' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' sachet' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' units' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' unit' , '')
 where Country = 'BAHRAIN' ;

-----------------------
 UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hours' , '')
  where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, ' hour ' , '')
 where Country = 'BAHRAIN' ;
 
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'Dihydrochloride' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hydrochloride' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'maleate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'picosulfate' , 'pico_S_Ulfate')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'pico_S_Ulfate' , 'picosulfate')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium chloride' , 'sod_chld')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sodium' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sod_chld' , 'Sodium Chloride')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'mononitrate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'acetate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'valerate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'phosphate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'hemihydrate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'fumarate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'tartarate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'sulfate' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'HCL' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B1' , 'B_one')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B2' , 'B_TWO')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B6' , 'B_SIX')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B7' , 'B_SEV')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B12' , 'B_TWELVE')
 where Country = 'BAHRAIN' ;

UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_one' ,'B1' )
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2  , 'B_TWO' ,'B2' )
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_SIX' , 'B6' )
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2 , 'B_SEV', 'B7' )
 where Country = 'BAHRAIN' ;
UPDATE IDD_0 SET AI_2 =  replace (AI_2, 'B_TWELVE' , 'B12' )

UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namens' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'conttrade_namen' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'each' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'controlled' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'without' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, 'with' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '-' , ' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '_' , ' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' as ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' x ' , ' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '%' , ' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' of ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, ' for ' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '&' , '/')
  where Country = 'BAHRAIN' ; 
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '.' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '( )' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '()' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[ ]' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '[]' , '')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '    ',' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '   ',' ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  ' , ' ')
 where Country = 'BAHRAIN' ;
--trim
UPDATE IDD_0
SET AI_2 =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM AI_2)
 where Country = 'BAHRAIN' ;
------------------------


UPDATE IDD_0
SET AI_2 =  replace(replace(replace (AI_2, '/' , ' / '),'   ', ' '), '  ', ' ') 
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '  /' , ' /')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/  ' , '/ ')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '//' , '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace( replace (AI_2, '/ /' , '/'), '/ /', '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '///' , '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / /' , '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '////' , '/')
 where Country = 'BAHRAIN' ;
UPDATE IDD_0
SET AI_2 =  replace (AI_2, '/ / / /' , '/')
 where Country = 'BAHRAIN' ;

 UPDATE IDD_0
SET AI_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(AI_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'BAHRAIN'
  go

update IDD_0 set AI_2= replace (AI_2 ,' + ' , ' / ')   FROM IDD_0   where country = 'BAHRAIN'   
update IDD_0 set AI_2= replace (AI_2 ,'+' , ' / ')   FROM IDD_0   where country = 'BAHRAIN'   
update IDD_0 set AI_2= replace (AI_2 ,' IU ' , ' ')   FROM IDD_0   where country = 'BAHRAIN'   


update IDD_0 set TRADE_NAME_2= replace (TRADE_NAME ,'-' , ' ')   FROM IDD_0   where country = 'BAHRAIN'   


 -- REMOVE BRACKETS
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
where country = 'BAHRAIN'
    SET @Counter  = @Counter  + 1
END