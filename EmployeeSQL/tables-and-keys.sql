--SQL queries used to create/import/alter data provided for sql-challenge

--dropping tables if they exist before creating tables

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create new table for departments data
CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL
);

--import departments data into the departments table (done manually)
--then check to make sure it looks right

SELECT *
FROM departments;


-- Create new table for dept_emp data
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL
);

--import dept_emp data into the dept_emp table (done manually)
--then check to make sure it looks right

SELECT *
FROM dept_emp;

-- Create new table for dept_manager data
CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT NOT NULL
);

--import dept_manager data into the dept_manager table (done manually)
--then check to make sure it looks right

SELECT *
FROM dept_manager;

-- Create new table for employees data
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL
);

--import employees data into the employees table (done manually)
--then check to make sure it looks right

SELECT *
FROM employees;

-- Create new table for salaries data
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL
);

--import salaries data into the salaries table (done manually)
--then check to make sure it looks right

SELECT *
FROM salaries;

-- Create new table for titles data (I messed up and named it title but should be fine)
CREATE TABLE title (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL
);

--import titles data into the titles table (done manually)
--then check to make sure it looks right

SELECT *
FROM title;

--fixing my mistake and renaming the "title" table to "titles" table

ALTER TABLE title 
	RENAME TO titles;

-- alter tables created to add primary and foreign keys

ALTER TABLE departments ADD PRIMARY KEY (dept_no);

--alter dept_emp table to add PK composite key and FK
ALTER TABLE dept_emp ADD PRIMARY KEY (emp_no, dept_no)
ALTER TABLE dept_emp ADD FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no);
	
--alter dept_manager table to add PK and FK
ALTER TABLE dept_manager ADD PRIMARY KEY (emp_no)
ALTER TABLE dept_manager ADD FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no);
	
--alter employees table to add PK
ALTER TABLE employees ADD PRIMARY KEY (emp_no)

--alter salaries table and add PK 
ALTER TABLE salaries ADD PRIMARY KEY (emp_no)


