-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

SELECT employees.emp_no, employees.first_name, employees.last_name,employess_title.title,
employess_title.from_date,employess_title.to_date
INTO retirement_titles
FROM employees
INNER JOIN employess_title
ON employees.emp_no = employess_title.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no; 
 
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no, retirement_titles.first_name, retirement_titles.last_name, retirement_titles.title 
INTO unique_titles
FROM retirement_titles 
ORDER BY retirement_titles.emp_no, retirement_titles.to_date DESC
-- COUNT NUMBER OF EMPLOYEES
SELECT COUNT(unique_titles.emp_no)
FROM unique_titles;
--new quires
SELECT COUNT(unique_titles.title), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY COUNT(unique_titles.title) DESC;

--delivery 2
SELECT DISTINCT ON (employees.emp_no) employees.emp_no, employees.first_name, employees.last_name, employees.birth_date, 
deparment_employees.from_date, deparment_employees.to_date, employess_title.title
INTO mentorship_eligibilty
FROM employees 
INNER JOIN deparment_employees
ON employees.emp_no = deparment_employees.emp_no
INNER JOIN employess_title
ON employees.emp_no = employess_title.emp_no
WHERE deparment_employees.to_date = '9999-01-01'
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no;

--delivery 3
SELECT COUNT(mentorship_eligibilty.emp_no)
FROM mentorship_eligibilty;

--number of employess
SELECT COUNT(unique_titles.emp_no)
FROM unique_titles;