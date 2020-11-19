--Queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	Employees.emp_no,
	Employees.last_name, 
	Employees.first_name, 
	Employees.sex,
	Salaries.salary
FROM Employees
INNER JOIN Salaries ON
	Employees.emp_no = Salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT
	first_name,
	last_name,
	hire_date
FROM
	Employees
Where hire_date < '1987-01-01'
And hire_date > '1985-12-31';

-----------*********************--------------

-- List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

SELECT Department_Manager.dept_no, 
	   Departments.dept_name,
	   Department_Manager.emp_no,
	   Employees.last_name,
	   Employees.first_name
FROM Department_Manager
INNER JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON
Department_Manager.emp_no = Employees.emp_no;


-----------*********************--------------
--List the department of each employee with the following information: employee number, last name, first name, and department name.
--Select * from Departments;

Select 
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
From Employees
INNER JOIN Department_Manager ON
Employees.emp_no = Department_Manager.emp_no
INNER JOIN Departments ON
Department_Manager.dept_no = Departments.dept_no;

-----------*********************--------------

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
	first_name,
	last_name,
	sex
FROM
	Employees
WHERE 
	first_name LIKE 'Hercules%'
And last_name Like 'B%';

-----------*********************--------------

 --List all employees in the Sales department, including their employee number, last name, first name, and department name.
 
Select 
	Employees.emp_no,
	Employees.last_name,
	Employees.first_name,
	Departments.dept_name
From Employees
JOIN Department_Employees ON
e.emp_no = Department_Employees.emp_no
INNER JOIN Departments AS d ON
Department_Employees.dept_no = d.dept_no
WHERE dept_name = 'Sales';

Select * from Department_Employees
-----------*********************--------------

--  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT 
last_name, COUNT(last_name) 
FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;






		

		

