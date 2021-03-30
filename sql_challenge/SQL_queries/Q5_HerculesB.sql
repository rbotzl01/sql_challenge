SELECT Employees.Emp_No, Employees.First_Name, Employees.Last_Name, Employees.Sex
FROM Employees
WHERE Employees.First_Name = 'Hercules' AND Employees.Last_Name LIKE 'B%'
ORDER By Emp_No
