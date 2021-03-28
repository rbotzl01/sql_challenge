SELECT Employees.Emp_No, Employees.First_Name, Employees.Last_Name, Employees.Hire_Date
FROM Employees
WHERE Employees.Hire_Date LIKE '1986%'
ORDER By Emp_No
