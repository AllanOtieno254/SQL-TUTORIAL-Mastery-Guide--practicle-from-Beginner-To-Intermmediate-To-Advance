/*
UPDATING and DELETING Data in a table
*/
--UPDATE
--SET: Specifies what column and what values you wanna insert INFORMATION_SCHEMA that cell

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'HOLLY' AND LastName = 'FLAX'

UPDATE SQLTutorial.dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE  EmployeeID = 1012

--DELETE
--DELETE : Removes the entire row

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

DELETE SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1013

--CAUTION/WARNING: DELETE SQLTutorial.dbo.EmployeeDemographics: If you use this delete statement without specifying WHERE you want to delete this will delete the entire DATABASE
--and will not recover till you start whole process again













































