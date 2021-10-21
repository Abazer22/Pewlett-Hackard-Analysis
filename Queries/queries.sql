DROP TABLE deparment_employees;
DROP TABLE dept_manager;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM employess_title;
DROP TABLE employess_title;
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE deparment_employees (
    emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE employess_title (
     emp_no INT NOT NULL,
     title VARCHAR NOT NULL,
	 from_date DATE NOT NULL,
     to_date DATE NOT NULL,
    PRIMARY KEY (emp_no)     
);
DROP TABLE employess_title;
CREATE TABLE employess_title (
     emp_no INT NOT NULL,
     title VARCHAR NOT NULL,
	 from_date DATE NOT NULL,
     to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),   
PRIMARY KEY (emp_no, title)
);
DROP TABLE employess_title;

CREATE TABLE employess_title (
     emp_no INT NOT NULL,
     title VARCHAR NOT NULL,
	 from_date DATE NOT NULL,
     to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no)   
); 
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- New table 
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
SELECT * FROM retirement_info;