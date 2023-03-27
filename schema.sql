-- create titles table
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);
--SELECT * FROM titles

-- create employees table
CREATE TABLE employees (
	emp_no Integer PRIMARY KEY,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(45),
	last_name varchar(45),
	sex varchar(1),
	hire_date date
);

--SELECT * FROM employees

-- create departments table
CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(30)
);

--SELECT * FROM departments

-- create department managers table
CREATE TABLE dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no integer references employees(emp_no)
);

--SELECT * FROM dept_manager

-- create department employees table
CREATE TABLE dept_emp (
	emp_no integer references employees(emp_no),
	dept_no varchar(5) references departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

--SELECT * FROM dept_emp

-- create salaries table
CREATE TABLE salaries (
	emp_no integer references employees(emp_no),
	salary int
);

--SELECT * FROM salaries