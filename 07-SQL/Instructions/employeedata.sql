CREATE TABLE employees (
	emp_no integer,
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender TEXT,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

Select * From employees

CREATE TABLE titles(
	emp_no integer,
	title VARCHAR(255),
	from_date DATE, 
	to_date DATE,
	PRIMARY KEY (emp_no,title,from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

CREATE TABLE salaries(
	emp_no integer,
	salary integer,
	from_date DATE, 
	to_date DATE,
	PRIMARY KEY (emp_no, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

CREATE TABLE departments(
	dept_no CHAR(4),
	dept_name VARCHAR(255),
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager(
	dept_no CHAR(4),
	emp_no integer,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE
);

CREATE TABLE dept_emp(
	emp_no integer,
	dept_no CHAR(4),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) ON DELETE CASCADE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) ON DELETE CASCADE
);
