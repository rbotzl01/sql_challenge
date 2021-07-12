SELECT Last_Name, COUNT(Last_Name) FROM Employees
GROUP BY Last_Name
ORDER BY count(Last_Name) desc;
