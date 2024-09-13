/*
CTEs: Common Table Expression (CTE)
*/

--In SQL, a Common Table Expression (CTE) is a temporary result set that you can reference within a
--SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH clause and can be
--thought of as a temporary table that exists just for the duration of the query. CTEs improve the
--readability and organization of complex queries, and they can also be recursive, which is useful for
--hierarchical or tree-structured data.

WITH CTE_Employee AS(SELECT FirstName,LastName,Gender,Salary,
COUNT(Gender) OVER(PARTITION BY Gender) AS TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) AS AVGSalary
FROM SQLTutorial.dbo.EmployeeDemographics AS Emp
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
 ON Emp.EmployeeID=Sal.EmployeeID
WHERE Salary > 45000
)
SELECT FirstName, AVGSalary 
FROM CTE_Employee

