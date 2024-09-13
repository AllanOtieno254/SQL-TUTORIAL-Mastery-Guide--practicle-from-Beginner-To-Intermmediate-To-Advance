/*
Union , Union All
*/

--DIFF BTWN JOINS & UNIONS :JOINS combine tables based on columns and you can decide on what table to choose from
--eg: we did have two employeeID but in UNION it combines both of the employeeID into one EmployeeID

 --Table 1 Insert:
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Table 3 Query:
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

--Table 3 Insert:
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


--NB/ Union also acts as a distinction without the All
 SELECT *
 FROM SQLTutorial.dbo.EmployeeDemographics
 UNION
 SELECT *
 FROM SQLTutorial.dbo.WareHouseEmployeeDemographics


 --UNION ALL includes all the duplicates
 SELECT *
 FROM SQLTutorial.dbo.EmployeeDemographics
 UNION ALL
 SELECT *
 FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
 ORDER BY EmployeeID


 SELECT EmployeeID,FirstName,Age
 FROM SQLTutorial.dbo.EmployeeDemographics
 UNION 
 SELECT EmployeeID,JobTitle,Salary
 FROM SQLTutorial.dbo.EmployeeSalary
 ORDER BY EmployeeID

































