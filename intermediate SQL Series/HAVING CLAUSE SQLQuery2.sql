/*
HAVING CLAUSE
*/

SELECT JobTitle,COUNT(JobTitle)AS JobTitleCount
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>1


SELECT JobTitle,AVG(Salary)AS Avg_Slary
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary)>45000
ORDER BY Avg_Slary















