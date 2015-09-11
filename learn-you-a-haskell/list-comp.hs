boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
-- boomBangs [7..13]  
-- ["BOOM!","BOOM!","BANG!","BANG!"]  
