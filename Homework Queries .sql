-- Queries SQL HW 

--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
			employees.first_name,
			employees.last_name,
			employees.sex,
			salaries.salary 
FROM employees
JOIN salaries 
ON employees.emp_no = salaries.emp_no
			
--2 List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, 
			last_name, 
			hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT deptM.dept_no,
		dept.dept_name,
		deptM.emp_no,
		employees.last_name,
		employees.first_name 
FROM dept_manager AS deptM
INNER JOIN departments AS dept
ON (deptM.dept_no = dept.dept_no)
INNER JOIN employees AS employees
ON (deptM.emp_no = employees.emp_no);

--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
--> did not work for me 

--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name = '%B';

--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
--> did not work for me 

--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--> did not work for me 

--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;