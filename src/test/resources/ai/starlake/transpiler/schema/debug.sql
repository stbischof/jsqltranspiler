-- provided
SELECT  numtickets
        , priceperticket
        , totalprice
        , listtime
FROM sales
    , listing
LIMIT 10
;

-- result
"#","label","name","table","schema","catalog","type","type name","precision","scale","display size"
"1","numtickets","numtickets","listing",,"JSQLTranspilerTest","SMALLINT","SMALLINT","0","16","0"
"2","priceperticket","priceperticket","listing",,"JSQLTranspilerTest","DECIMAL","DECIMAL(8,2)","0","8","0"
"3","totalprice","totalprice","listing",,"JSQLTranspilerTest","DECIMAL","DECIMAL(8,2)","0","8","0"
"4","listtime","listtime","listing",,"JSQLTranspilerTest","TIMESTAMP","TIMESTAMP","0","0","0"