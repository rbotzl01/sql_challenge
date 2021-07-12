drop table Employees;
drop table Departments;
drop table Department_Employees;
drop table Department_Manager;
drop table Salaries;
drop table Titles;

-- DATA ENGINEERING

CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Birth_Date date   NOT NULL,
    First_Name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    Gender VARCHAR   NOT NULL,
    Hire_Date date   NOT NULL,
	PRIMARY KEY (Emp_No)
);
SELECT * from Employees;

CREATE TABLE Departments (
    Dept_No VARCHAR   NOT NULL,
    Dept_Name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);
select * from Departments;

CREATE TABLE Department_Employees (
    Emp_No INT   NOT NULL,
	Dept_No VARCHAR   NOT NULL,
    From_Date date   NOT NULL,
    To_Tate date   NOT NULL,
	FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_no),
	FOREIGN KEY (Dept_No) REFERENCES Departments(Dept_No)
);
select * from Department_Employees;

CREATE TABLE Department_Manager (
    Dept_No VARCHAR   NOT NULL,
    Emp_No int   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL,
	FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_No),
	FOREIGN KEY (Dept_No) REFERENCES Departments(Dept_No)
);
SELECT * from Department_Manager;


CREATE TABLE Salaries (
    Emp_No int   NOT NULL,
	Salary INTEGER   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL,    
	FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_No)
);
SELECT * from Salaries;


CREATE TABLE Titles (
	Emp_No int   NOT NULL,
    Title VARCHAR   NOT NULL,
    From_Date date   NOT NULL,
    To_Date date   NOT NULL,
	FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_No)
);
SELECT * from Titles;
