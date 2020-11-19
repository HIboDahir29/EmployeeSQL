

CREATE TABLE Employees(
 	emp_no int NOT NULL Primary Key,
	emp_title_id varchar(64) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(64)NOT NULL,
	last_name varchar(64)NOT NULL,
	sex char(1),
	hire_date date
	
);
Select * from Employees;
Select * from Departments;

CREATE TABLE Departments(
	dept_no int NOT NULL Primary Key,
	dept_name varchar(64)
);

Select * from Department_Employees
CREATE TABLE Department_Employees(
	emp_no INT   NOT NULL,
	dept_no VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

Select * from Department_Manager

CREATE TABLE Department_Manager(
	dept_no int NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,    
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

Select * from Salaries;


CREATE TABLE Titles (
	title_id varchar NOT NULL Primary Key,
    title VARCHAR   NOT NULL
);

SELECT * from Titles;




