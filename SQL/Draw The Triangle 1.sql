/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
DECLARE @var int               
SELECT @var = 20                 
WHILE @var > 0                  
BEGIN                           
PRINT replicate('* ', @var)     
SET @var = @var - 1             
END  