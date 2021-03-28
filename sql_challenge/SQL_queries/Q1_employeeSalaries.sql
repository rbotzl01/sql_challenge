SELECT Employees.Emp_No, Employees.Last_Name, Employees.First_Name, Employees.Sex, Salaries.Salary
FROM Employees
INNER JOIN Salaries
ON Employees.Emp_No = Salaries.Emp_No
ORDER By Emp_No
