SELECT Employees.Emp_No, Employees.Last_Name, Employees.First_Name, Dept_Emp.Dept_No, Departments.Dept_Name
FROM Employees
INNER JOIN Dept_Emp
ON Employees.Dept_No = Dept_Emp.Dept_No
INNER JOIN Departments
ON Departments.Dept_No = Dept_Emp.Dept_No
ORDER By Emp_No
