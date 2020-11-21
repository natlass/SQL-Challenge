CREATE TABLE departments (
	dept_no VARCHAR(50) NOT NULL,
  	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no),
  	UNIQUE (dept_name)
);

select * from departments

CREATE TABLE employees (
  	emp_no integer NOT NULL,
  	emp_title_id VARCHAR(50) NOT NULL,
  	birth_date date NOT NULL,
  	first_name VARCHAR(50) NOT NULL,
  	last_name VARCHAR(50) NOT NULL,
  	sex VARCHAR(50) NOT NULL,
  	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

CREATE TABLE dept_manager (
	dept_no VARCHAR(50) NOT NULL,
  	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_manager

CREATE TABLE dept_emp (
  	emp_no integer NOT NULL,
 	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp

CREATE TABLE titles (
  	title_id VARCHAR(50) NOT NULL,
  	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id, title)
);

select * from titles

CREATE TABLE salaries (
  	emp_no integer NOT NULL,
  	salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, salary)
);

select * from salaries