--DATA Analysis using sql queries

--1) List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no,last_name, first_name, sex, salary
FROM employees e
JOIN salaries s on e.emp_no = s.emp_no;

--2) List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3) List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN departments d ON dm.dept_no = d.dept_no
JOIN employees e ON dm.emp_no = e.emp_no

--4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e USING (emp_no)
JOIN departments d USING (dept_no);

--5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%'
ORDER BY last_name ASC

--6)List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp de
LEFT JOIN employees e USING (emp_no)
WHERE de.dept_no IN
	(
	SELECT dept_no
	FROM departments
	WHERE dept_name = 'Sales'
	);

--7)List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
LEFT JOIN employees e USING (emp_no)
LEFT JOIN departments d USING (dept_no)
WHERE d.dept_name IN ('Sales', 'Development');

--8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;