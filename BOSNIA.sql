/**  http://lijekovi.almbih.gov.ba
	http://lijekovi.almbih.gov.ba:8090/SpisakLijekova.aspx
	export excel file (gride.xlsx), then extract AI, TRADE_NAME AND ATC_CODE
********************************************************************************/


update IDD_0
	 set AI_2= replace (AI ,', ' , ' / ')
  FROM IDD_0
  where country = 'BOSNIA'
  go

  
update IDD_0
	 set AI_2= replace (AI_2 ,'-' , ' ')
  FROM IDD_0
  where country = 'BOSNIA'
  go

 
 ------------------------------
  update IDD_0
	 set TRADE_NAME_2= replace (trade_name ,'-' , ' ')
	 FROM IDD_0
  where country = 'BOSNIA'
  go
  -------------------------------------------
  
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
where country = 'BOSNIA'
    SET @Counter  = @Counter  + 1
END
 GO 	
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
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('1', TRADE_NAME_2) - 1)
	where CHARINDEX('1', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('2', TRADE_NAME_2) - 1)
	where CHARINDEX('2', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('3', TRADE_NAME_2) - 1)
	where CHARINDEX('3', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('4', TRADE_NAME_2) - 1)
	where CHARINDEX('4', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('5', TRADE_NAME_2) - 1)
	where CHARINDEX('5', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('6', TRADE_NAME_2) - 1)
	where CHARINDEX('6', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('7', TRADE_NAME_2) - 1)
	where CHARINDEX('7', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('8', TRADE_NAME_2) - 1)
	where CHARINDEX('8', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	--
	UPDATE IDD_0
	SET TRADE_NAME_2 = LEFT(TRADE_NAME_2, CHARINDEX('9', TRADE_NAME_2) - 1)
	where CHARINDEX('9', TRADE_NAME_2) > 0
	and  country = 'BOSNIA'
	
	
	SET @Counter  = @Counter  + 1
END	
GO
----------------


--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
---Removing lowercase from Trade_name

UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('a' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('a'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('b' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('b'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('c' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('c'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('d' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('d'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('e' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('e'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('f' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('f'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('g' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('g'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('h' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('h'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('i' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('i'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('j' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('j'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('k' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('k'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('l' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('l'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('m' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('m'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('n' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('n'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('o' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('o'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('p' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('p'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('q' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('q'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('r' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('r'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('s' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('s'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('t' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('t'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('u' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('u'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('v' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('v'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('w' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('w'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('x' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('x'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('y' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('y'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'
UPDATE IDD_0
			SET TRADE_NAME_2 = case when 
			CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2 ) > 1 
			and [Country] = 'BOSNIA'
			and substring (TRADE_NAME_2, CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2)-1,1)
			
			like '[ABCDEFGHIJKLMNOPQRSTUVWXYZ]' COLLATE sql_latin1_general_cp1_cs_as 
			then 
			LEFT(TRADE_NAME_2, CHARINDEX ('z' COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 2)
			else
			case when 
			CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) > 1 
			and [Country] = 'BOSNIA'
			then 
			LEFT(TRADE_NAME_2, CHARINDEX('z'  COLLATE sql_latin1_general_cp1_cs_as, TRADE_NAME_2) - 1)
			else TRADE_NAME_2
			end end
			from IDD_0 where [Country] = 'BOSNIA'

------------------

 UPDATE IDD_0
SET TRADE_NAME_2 =LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(TRADE_NAME_2, CHAR(10), ''), CHAR(13), ''), CHAR(9), '')))
where country = 'BOSNIA'
  go