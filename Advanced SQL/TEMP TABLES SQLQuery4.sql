/*
Temp Tables(temporary table)
*/

CREATE TABLE #temp_Employee(
EmployeeID int,
Jobtitle varchar(50),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES
(
'1001','HR','45000'
)

-- We can also select another table and throw all the values into the temp table and use it as a backup
INSERT INTO #temp_Employee
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

SELECT *
FROM #temp_Employee


CREATE TABLE #temp_Employee2(
Jobtitle varchar(50),
Employeesperjob int,
AVGAge int,
AVGSalary int
)

INSERT INTO #temp_Employee2
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics AS Emp
JOIN  SQLTutorial.dbo.EmployeeSalary AS Sal
   ON Emp.EmployeeID=Sal.EmployeeID






























