/*
Aliasing
*/

--aliasing: used for changing column name and enables readerbility of your script
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

--Alias in column name
SELECT FirstName AS Fname
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics

--Alias in table name
SELECT Demo.EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo

SELECT Sal.Salary
FROM  SQLTutorial.dbo.EmployeeSalary AS Sal
  

SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
  ON Demo.EmployeeID = Sal.EmployeeID


  SELECT Demo.EmployeeID,Demo.FirstName,Demo.LastName,Sal.JobTitle,Sal.Salary
  FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
  JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
  ON Demo.EmployeeID = Sal.EmployeeID


   SELECT Demo.EmployeeID,Demo.FirstName,Demo.LastName,Sal.Salary,Ware.Age
  FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
  LEFT JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
  ON Demo.EmployeeID = Sal.EmployeeID
  LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics AS Ware
  ON Demo.EmployeeID = Sal.EmployeeID
