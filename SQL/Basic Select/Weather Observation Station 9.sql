/*
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
Input Format
The STATION table is described as follows:

STATION
FIELD     FORMAT
ID        NUMBER
CITY      VARCHAR2(21)
STATE     VARCHAR2(2)
LAT_N     NUMBER
lONG_W    NUMBER

where LAT_N is the northern latitude and LONG_W is the western longitude. 
*/

/*MS SQL Server*/

SELECT CITY 
FROM STATION
WHERE CITY NOT IN
(SELECT CITY
FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
GROUP BY CITY)
GROUP BY CITY
