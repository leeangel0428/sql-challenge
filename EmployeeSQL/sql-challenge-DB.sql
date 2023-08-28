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

--import departments data into the dept_emp table (done manually)
--then check to make sure it looks right

SELECT *
FROM dept_emp;

-- Create new table for dept_manager data
CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT NOT NULL
);

--import departments data into the dept_manager table (done manually)
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

--import departments data into the employees table (done manually)
--then check to make sure it looks right

SELECT *
FROM employees;

-- Create new table for salaries data
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL
);

--import departments data into the salaries table (done manually)
--then check to make sure it looks right

SELECT *
FROM salaries;

-- Create new table for titles data (I messed up and named it title but should be fine)
CREATE TABLE title (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL
);

--import departments data into the titles table (done manually)
--then check to make sure it looks right

SELECT *
FROM title;