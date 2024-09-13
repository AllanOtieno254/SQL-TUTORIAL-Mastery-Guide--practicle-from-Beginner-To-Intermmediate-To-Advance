/*
Partition By
*/

--divides the result into partition and changes how the windows function is calculated. doesnt reduce the number of rows in our output as group by does
SELECT FirstName,LastName,Gender,Salary,
COUNT(Gender) OVER(PARTITION BY Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
 ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
 --OUTPUT OF THE ABOVE QUERY
--The output here shows that we have 3 females in total and 5 males the only diff is with group by is that in partition by theres a separate column created 
--and that it icludes the row and the number is still the same as that of group by ; is that in partition its just repeated several times








































