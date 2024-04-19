-- provided
SELECT ABS(14-76) as abs;

-- result
"abs"
"62"


-- provided
SELECT (ACOS(.5) * 180/(SELECT PI())) AS degrees;

-- result
"degrees"
"60.00000000000001"


-- provided
SELECT (ASIN(.5) * 180/(SELECT PI())) AS degrees;

-- result
"degrees"
"30.000000000000004"


-- provided
SELECT (ATAN(1) * 180/(SELECT PI())) AS degrees;

-- result
"degrees"
"45.0"


-- provided
SELECT (ATAN2(1,0) * 180/(SELECT PI())) AS degrees;

-- result
"degrees"
"90.0"


-- provided
SELECT CBRT(commission) AS cbrt FROM sales WHERE salesid=10000;


-- result
"cbrt"
"3.0383953904884344"


-- provided
SELECT CEILING(commission) AS ceil FROM sales
WHERE salesid=10000;

-- result
"ceil"
"29"


-- provided
SELECT COS(PI()) AS cos;

-- result
"cos"
"-1.0"


-- provided
SELECT COT(1) AS cot;

-- result
"cot"
"0.6420926159343306"


-- provided
SELECT DEGREES(pi()) AS degrees;

-- result
"degrees"
"180.0"


-- provided
SELECT (SELECT SUM(qtysold)
FROM sales, date
WHERE sales.dateid=date.dateid
AND year=2008) * DEXP((7::FLOAT/100)*10) qty2010;

-- expected
SELECT (SELECT SUM(qtysold)
FROM sales, date
WHERE sales.dateid=date.dateid
AND year=2008) * EXP((7::FLOAT/100)*10) qty2010;

-- result
"qty2010"
"695447.4754818415"


-- provided
SELECT DLOG1(2.718281828) AS ln;

-- expected
SELECT LN(2.718281828) AS ln;

-- result
"ln"
"0.9999999998311266"


-- provided
SELECT DLOG10(100) as log;

-- expected
SELECT LOG(100) as log;

-- result
"log"
"2.0"


-- provided
SELECT (SELECT SUM(qtysold)
FROM sales, date
WHERE sales.dateid=date.dateid
AND year=2008) * EXP((7::FLOAT/100)*10) qty2018;


-- result
"qty2018"
"695447.4754818415"


-- provided
SELECT commission, FLOOR(commission)  AS floor
FROM sales
WHERE salesid=10000;

-- result
"commission","floor"
"28.05","28"


-- provided
SELECT LN(2.718281828) AS ln;

-- result
"ln"
"0.9999999998311266"


-- provided
SELECT LOG(2, 100) AS log;

-- result
"log"
"6.643856189774724"


-- provided
SELECT MOD(10.5, 4) AS mod;

-- result
"mod"
"2.5"


-- provided
SELECT PI() AS pi;

-- result
"pi"
"3.141592653589793"


-- provided
SELECT (SELECT SUM(qtysold) FROM sales, date
WHERE sales.dateid=date.dateid
AND year=2008) * POW((1+7::DOUBLE PRECISION/100/12),120) qty2010;

-- result
"qty2010"
"694034.54678046"


-- provided
SELECT RADIANS(180) AS pi;

-- result
"pi"
"3.141592653589793"


-- provided
SELECT CAST(RANDOM() * 100 AS INT);

-- count
1


-- provided
SELECT commission, ROUND(commission, 1) AS rounded
FROM sales WHERE salesid=10000;

-- result
"commission","rounded"
"28.05","28.1"


-- provided
SELECT commission, ROUND(commission, -1)  AS rounded
FROM sales WHERE salesid=10000;

-- result
"commission","rounded"
"28.05","30"


-- provided
SELECT SIN(-PI()) AS sin;

-- result
"sin"
"-1.2246467991473532E-16"


-- provided
SELECT commission, SIGN(commission) AS sign
FROM sales WHERE salesid=10000;

-- result
"commission","sign"
"28.05","1"


-- provided
SELECT SQRT('16') AS sqrt;

-- result
"sqrt"
"4.0"


-- provided
SELECT TAN(0) AS tan;

-- result
"tan"
"0.0"



