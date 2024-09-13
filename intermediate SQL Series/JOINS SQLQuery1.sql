SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeSalary


--INNER JOIN : Shows only values which are similar in both tables and leaves those that are not
SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
Inner join SQLTutorial.dbo.EmployeeSalary
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


 --FULL OUTER JOIN : Shows ALL values in both tables and DOESNT leave Any behind but represent it as NULL if is not matching 
 --eg we are combining this two tables using employeeID and EmployeeSalary has ID:1001 and EmployeeDemographics has NO ID but still will be output 
 SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER join SQLTutorial.dbo.EmployeeSalary
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


 -- Takes the RIGHT table and says that everything from the RIGHT table and everything on RIGHT table that is overlapping but if its on the LEFT table we do not want it
 SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics--this will be the left table
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary--this will be the right table
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- Takes the left table and says that everything from the left table and everything on left table that is overlapping but if its on the right table we do not want it
 SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics--this will be the left table
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary--this will be the right table
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

  SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeDemographics--this will be the left table
inner JOIN SQLTutorial.dbo.EmployeeSalary--this will be the right table
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


 SELECT *
 FROM EmployeeSalary

  SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeDemographics--this will be the left table
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary--this will be the right table
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


  SELECT EmployeeSalary.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM SQLTutorial.dbo.EmployeeDemographics--this will be the left table
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary--this will be the right table
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


 --EXAMPLE OF USE CASES
 --KEVIN An accountant wants to find out who is the employee receiving highest amount so that he can cut hoim/her salary off by some %, but he should not be included in thhe vetting 
 --since hewants his salary to remain intact as it was
 SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,Salary
 FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
  WHERE FirstName <> 'MICHAEL'
  ORDER BY Salary DESC

 -- kevin wants to look for the average salary for our sales man
SELECT JobTitle,AVG(salary)AS AvgSalary
 FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
 WHERE JobTitle='SALESMAN'
 GROUP BY JobTitle
















