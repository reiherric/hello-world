/*
Query the Name of any student in STUDENTS who scored higher than 

Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
Input Format
The STUDENTS table is described as follows:

COLUMN        TYPE
ID            INTEGER
NAME          STRING
MARKS         INTEGER

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.
*/

/*MS SQL Server*/

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3) ASC, ID ASC
