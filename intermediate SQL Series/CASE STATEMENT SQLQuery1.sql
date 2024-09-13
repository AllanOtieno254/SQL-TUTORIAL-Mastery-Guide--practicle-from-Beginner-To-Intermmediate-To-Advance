/*
Case Statement
*/

--CASE STATEMENT: allows you to specify condition and what you want returned when that condition is met

SELECT FirstName,LastName,Age,
CASE
    WHEN Age>30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


--USE CASES 
--Coperate has allowed you to give a yearly raised every single employee but not all employee will gate same raise 

SELECT FirstName,LastName,JobTitle,Salary,
CASE 
    WHEN JobTitle = 'SALESMAN'THEN Salary + (Salary * .10)
	WHEN JobTitle = 'ACCOUNTANT' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 000001)
	ELSE Salary + (Salary * .03)
END AS IncreasedSalary
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

























