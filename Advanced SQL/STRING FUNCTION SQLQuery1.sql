/*
string functions: TRIM,LTRIM,RIRIM,Replace,Substring,Upper,Lower
*/

CREATE TABLE EmployeeErrors(
EmployeeID Varchar(50),
FirstName Varchar(50),
LastName Varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,(' 1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

SELECT * 
FROM EmployeeErrors

--using TRIM,LTRIM,RIRIM

--TRIM: Takes the blank spaces from both the left and the right side
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--LTRIM:Takes the blank spaces from left Side
SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--RIGHT:Takes the blank spaces from right Side
SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors


--USING REPLACE: Used when we want to take something off expl: the last row of lastname i.e replacing " - fired" with " " nothing
SELECT LastName, REPLACE(LastName,'- Fired', ' ') AS LastNameFixed
FROM EmployeeErrors


--USING SUBSTRING:Used to specify either a number or a string, can specifyu place you wanna start and then you can also specify how many characters you want them to go out or in
--BELOW QUERY: its gonna start from very 1st letter or number upto the  3 letter/number
SELECT SUBSTRING(FirstName,1,3)AS LastName
FROM EmployeeErrors

--FUZZY MATCH: Lets say you have two tables and one has the name ALEX and another has the name ALEXANDER.They definately wont match hence we can do this

SELECT err.FirstName,SUBSTRING(err.FirstName,1,3)AS UPFirstName_Err, Demo.FirstName,SUBSTRING(Demo.FirstName,1,3)AS UPFirstName_Demo
FROM EmployeeErrors AS err
JOIN EmployeeDemographics AS Demo
 ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(Demo.FirstName,1,3)

 --FUZZY MATCH Is mostly done on unique values when we dont have an ID  EXPL:
 --1.Gender
 --2.LastName
 --3.Age
 --4.DOB


 --UPPER and LOWER: Changes ystrings to either upper or lower case

 SELECT *
FROM EmployeeErrors


SELECT FirstName,LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName,UPPER(FirstName)
FROM EmployeeErrors
















































