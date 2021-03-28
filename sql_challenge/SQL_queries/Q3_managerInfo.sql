SELECT Departments.Dept_No, Departments.Dept_Name, Dept_Manager.Emp_No, Employees.First_Name, Employees.Last_Name
FROM Departments
INNER JOIN Dept_Manager
ON Departments.Dept_No = Dept_Manager.Dept_No
INNER JOIN Employees
ON Dept_Manager.Emp_No = Employees.Emp_No
ORDER By Emp_No
