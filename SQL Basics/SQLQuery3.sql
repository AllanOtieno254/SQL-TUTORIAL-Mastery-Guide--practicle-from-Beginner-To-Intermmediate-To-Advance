----if you want to delete the table data :
--DELETE FROM table_name;

--Comment: Ctrl + K, Ctrl + C
--Uncomment: Ctrl + K, Ctrl + U

-- inserting data into our table
--INSERT INTO EmployeeDemographics VALUES 
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

/*
   SELECT Statement
   *, Top, Distinct ,Count , As ,Max ,Min ,Avg
   */

   --SELECTING EmployeeDemographics table
   --SELECT *
   --FROM  EmployeeDemographics

   --SELECTING EmployeeSalary table
   --SELECT *
   --FROM EmployeeSalary

   --SELECT FirstName 
   --FROM EmployeeDemographics

   --SELECT FirstName,LastName 
   --FROM EmployeeDemographics

   --Selecting TOP list from a large Dataset
   --SELECT TOP 5 *
   --FROM EmployeeDemographics

   --When we use DISTICT: we want unique values from a specific column
  -- returns only male and female
   --SELECT DISTINCT (Gender)
   --FROM EmployeeDemographics

   -- SELECT DISTINCT(EmployeeID)
   --FROM EmployeeDemographics

   --COUNT: shows the number of all none null values in a column
   -- SELECT COUNT(LastName)
   --FROM EmployeeDemographics

   --SELECT COUNT (*)
   --FROM EmployeeDemographics

   --AS: Used to add a column name
   --SELECT COUNT(LastName)AS LastName_Count
   --FROM EmployeeDemographics

   --SELECT MAX(Salary)As Max_Salary
   --FROM EmployeeSalary

   --SELECT MIN(Salary)As Min_Salary
   --FROM EmployeeSalary

   --SELECT AVG(Salary)As Avg_Salary
   --FROM EmployeeSalary

  -- We can use the SELECT function to still get the database with specific table
  --SELECT *
  --FROM SQL Tutorial.dbo.EmployeeSalary

  --using WHERE clause
  /*
  =,<>,<,>,And,Or,Like,Null,Not Null,in
  */

  --SELECT *
  -- FROM  EmployeeDemographics
  -- WHERE FirstName='Pam'

  ---- <> indicate does not equal
  --  SELECT *
  -- FROM  EmployeeDemographics
  -- WHERE FirstName<>'Pam'

  --  SELECT *
  -- FROM  EmployeeDemographics
  -- WHERE Age>=30

  --SELECT * 
  --FROM EmployeeDemographics
  --WHERE Age<=30

  --  SELECT *
  -- FROM  EmployeeDemographics
  -- WHERE  Age>=30 AND Gender = 'Male' 

  SELECT * 
  FROM EmployeeDemographics
  WHERE Age>30 OR Gender='FEMALE'

  SELECT * 
  FROM EmployeeDemographics
  WHERE LastName LIKE 'S%' --Selects only last names that begin with S alphabet

  
  SELECT * 
  FROM EmployeeDemographics
  WHERE LastName LIKE '%S%' --selects all last name with letter S atleast in each name

  SELECT * 
  FROM EmployeeDemographics
  WHERE LastName LIKE '%S%o%' --selects all last name with letter S followed by o atleast in each name

  SELECT * 
  FROM EmployeeDemographics
  WHERE FirstName IS NOT NULL --Selects only nun null values

  SELECT *
  FROM EmployeeDemographics
  WHERE FirstName IN ('PAM','ANGELA','MEREDITH','KEVIN') --Is used instead of multiple = signs i.e FirstName ='pam', FirstName='Angela'

  /*
  Group By, Order By
  */

  SELECT Gender,COUNT(Gender)AS GenderCount
  FROM EmployeeDemographics
  GROUP BY Gender

 SELECT Age,COUNT(Age)AS AgeCount
 FROM EmployeeDemographics
 GROUP BY Age

 SELECT Gender,COUNT(Gender)AS GenderCount
 FROM EmployeeDemographics
 GROUP BY Gender

 SELECT Age,Gender,COUNT(Age)AS Unique_GenderCount
 FROM EmployeeDemographics
 GROUP BY Age, Gender

 SELECT Age,Gender,COUNT(Age)AS Unique_GenderCount
 FROM EmployeeDemographics
 GROUP BY Age, Gender
 ORDER BY Age DESC

 --We can still use numbers instead of column names
 SELECT EmployeeID,Age,FirstName,LastName,Gender, COUNT(Age)
 FROM EmployeeDemographics
 WHERE Age>= 31 AND Gender IN ('MALE', 'FEMALE') 
 GROUP BY EmployeeID,Age,FirstName,LastName,Gender
 ORDER BY 2 ASC, 4 DESC



 SELECT EmployeeID,Age,FirstName,LastName,Gender, COUNT(Age)
 FROM EmployeeDemographics
 WHERE Age>= 31 AND Gender IN ('MALE', 'FEMALE') AND FirstName LIKE '%i%'
 GROUP BY EmployeeID,Age,FirstName,LastName,Gender
 ORDER BY 2 ASC, 4 DESC





