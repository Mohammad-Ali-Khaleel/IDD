


update WORLD_2021
	 set FINAL_AI= replace (AI ,', ' , ' / ')
  FROM WORLD_2021
  where country = 'GHANA'
  go
---------------------------------------------------------------------------
update WORLD_2021
	 set FINAL_trade_name= replace (trade_name ,'-' , ' ')
  FROM WORLD_2021
  where country = 'GHANA'
  go

  ----remove all characters
UPDATE WORLD_2021
SET FINAL_TRADE_NAME = dbo.ClearNumericCharacters(FINAL_TRADE_NAME)
where Country = 'GHANA' ;
go


UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' suspension' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' tablets' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' tablet ' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' capsuls' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' capsul' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, 'paint' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' mouth' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' dusting' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' powder' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' couph' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' Family' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' cream' , ' ') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' infusion' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' Delayed Release' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' Vaginal' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' PRESSARIES' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' DEPOTABS' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' ointment' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' granules' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' suppositories' , '') 
where Country = 'GHANA' ;
UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' Suppository' , '') 
where Country = 'GHANA' ;

UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' mg' , '') 
where Country = 'GHANA' ;


 UPDATE WORLD_2021  -- 
SET FINAL_trade_name =  trim (' ":.,?/\`~!@#$%^&*-_=+ ' FROM FINAL_trade_name)
where country = 'GHANA'

UPDATE WORLD_2021 SET FINAL_trade_name =  replace (FINAL_trade_name, ' Syrup' , '') 
where Country = 'GHANA' ;

UPDATE WORLD_2021 SET FINAL_trade_name =  LEFT(FINAL_trade_name, LEN(FINAL_trade_name)-3) 
where Country = 'GHANA'
and RIGHT (FINAL_trade_name,3) ='gel';
