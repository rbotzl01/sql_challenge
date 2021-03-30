SELECT Employees.Emp_No, Employees.Last_Name, Employees.First_Name, Departments.Dept_Name
FROM Employees
INNER JOIN Dept_Emp
ON Employees.Emp_No = Dept_Emp.Emp_No
INNER JOIN Departments
ON Dept_Emp.Dept_No = Departments.Dept_No
WHERE Departments.Dept_Name = 'Sales' OR Departments.Dept_Name = 'Development'
ORDER By Emp_No
